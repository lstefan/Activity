package cs.pub.activity.services;

import java.util.List;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.Category;

public interface ActivityService {

	Activity findActivity(Long id);
	List<Activity> findAllActivities();
	List<Activity> findActivitiesByCategory(Category category);
	List<Activity> findMostRecent();
	
}
