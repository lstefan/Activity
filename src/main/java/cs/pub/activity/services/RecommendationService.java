package cs.pub.activity.services;

import java.util.List;

import cs.pub.activity.model.Activity;

public interface RecommendationService {

	public abstract Long countAllActivities();

	public abstract Long countAllUsers();

	public abstract double[] createActivityVector(Long userId);

	public abstract double[] createDistancesVector(Long myUserId);

	public abstract Long getClosestUser(double[] distanceVector);

	public abstract List<Activity> getRecommendations(Long myUserId);

}