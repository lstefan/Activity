package cs.pub.activity.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.pub.activity.model.UserRating;
import cs.pub.activity.repositories.UserRatingRepository;
import cs.pub.activity.services.UserRatingService;

@Service
public class UserRatingServiceImpl implements UserRatingService {

	@Autowired
	UserRatingRepository userRatingRepository;
	
	@Override
	public UserRating saveUserRating(UserRating userRating) {
		return userRatingRepository.save(userRating);
	}
	

}
