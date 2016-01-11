package cs.pub.activity.services.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.User;
import cs.pub.activity.model.UserRating;
import cs.pub.activity.repositories.ActivityRepository;
import cs.pub.activity.repositories.UserRatingRepository;
import cs.pub.activity.repositories.UserRepository;
import cs.pub.activity.services.RecommendationService;
import cs.pub.activity.services.UserService;
import cs.pub.activity.utils.RecommendationUtils;

@Service
public class RecommendationServiceImpl implements RecommendationService {
	
	@Autowired
	ActivityRepository activityRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserRatingRepository userRatingRepository;
	
	@Autowired
	UserService userService;
	
	@Override
	public Long countAllActivities() {
		return activityRepository.count();
	}
	
	@Override
	public Long countAllUsers() {
		return userRepository.count();
	}
	
	@Override
	public double[] createActivityVector(Long userId) {
		List<UserRating> ratings = userRatingRepository.findByUserId(userId);
		int count = countAllActivities().intValue();
		int ratingsNo = ratings.size();
		double[] activitiesRatings = new double[count];
		
		for(int i = 0; i < ratingsNo; i++) {
			activitiesRatings[ratings.get(i).getActivity().getId().intValue()] = ratings.get(i).getRating();
		}
		
		return activitiesRatings;
	}
	
	@Override
	public double[] createDistancesVector(Long myUserId) {
		int totalNoUsers = countAllUsers().intValue() + 1;
		double[] distances = new double[totalNoUsers];
		Iterable<User> users = userRepository.findAll();
		Iterator<User> iterator = users.iterator();
		double[] myRatings = createActivityVector(myUserId);

		while(iterator.hasNext()) {
			User u = iterator.next();
			Long userId = u.getId();
			if(userId != myUserId) {
				double[] userRatings = createActivityVector(userId);
				if(RecommendationUtils.intersect(myRatings, userRatings)) {
					distances[userId.intValue()] = RecommendationUtils.cosineSimilarity(myRatings, userRatings); 
				}
				else {
					distances[userId.intValue()] = Double.MIN_VALUE;
				}
			}
			else {
				distances[userId.intValue()] = Double.MIN_VALUE;
			}
		}
		
		return distances;
	}
	

	@Override
	public Long getClosestUser(double[] distanceVector) {
		double maxValue = Double.MIN_VALUE;
		int userId = 0;
		int vectorLen = distanceVector.length;
		
		for(int i = 0; i < vectorLen; i++){
			if(distanceVector[i] > maxValue){
				maxValue = distanceVector[i];
				userId = i;
			}
		}
		
		return Long.valueOf(userId);
	}
	

	@Override
	public List<Activity> getRecommendations(Long myUserId) {
		
		Long closestUserId = getClosestUser(createDistancesVector(myUserId));
		
		Iterable<UserRating> myRatings = userRatingRepository.findByUserId(myUserId);
		
		Iterable<UserRating> ratings = userRatingRepository.findByUserId(closestUserId);
		Iterator<UserRating> ratingsIterator = ratings.iterator();
		
		List<Activity> recommendations = new ArrayList<Activity>();
		
		while(ratingsIterator.hasNext()) {
			Iterator<UserRating> myRatingsIterator = myRatings.iterator();
			UserRating rating = ratingsIterator.next();
			boolean activityFound = false;
			if(rating.getRating() >= 3) {
				while(myRatingsIterator.hasNext()) {
					UserRating myRating = myRatingsIterator.next();
					
					if(rating.getActivity().getId() == myRating.getActivity().getId()) {
						activityFound = true;
						break;
					}
				}
				if(!activityFound) {
					recommendations.add(rating.getActivity());
				}
			}
		}
		
		return recommendations;
	}
}
