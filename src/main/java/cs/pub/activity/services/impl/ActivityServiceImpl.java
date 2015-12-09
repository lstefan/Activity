package cs.pub.activity.services.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.Category;
import cs.pub.activity.repositories.ActivityRepository;
import cs.pub.activity.services.ActivityService;

@Service
public class ActivityServiceImpl implements ActivityService {

	@Autowired
	ActivityRepository activityRepository;

	@Override
	public Activity findActivity(Long id) {
		return activityRepository.findOne(id);
	}

	@Override
	public List<Activity> findAllActivities() {
		List<Activity> activities = new ArrayList<Activity>();
		Iterable<Activity> findAll = activityRepository.findAll();

		Iterator<Activity> iterator = findAll.iterator();
		while (iterator.hasNext()) {
			activities.add(iterator.next());
		}

		return activities;
	}

	@Override
	public List<Activity> findActivitiesByCategory(Category category) {
		return activityRepository.findByCategory(category);
	}

	@Override
	public List<Activity> findMostRecent() {
		return activityRepository.findFirst8ByOrderByDateHappeningDesc();
	}

}
