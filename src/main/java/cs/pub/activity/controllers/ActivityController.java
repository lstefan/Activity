package cs.pub.activity.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.Category;
import cs.pub.activity.services.ActivityService;

@Controller
public class ActivityController {

	private static final Logger logger = LoggerFactory.getLogger(ActivityController.class);
	
	@Autowired
	ActivityService activityService;
	
	@RequestMapping(value = "/user/activities", method = RequestMethod.GET)
	public String getActivities(Model model) {
		Iterable<Activity> activityList = activityService.findAllActivities();
		model.addAttribute("activityList", activityList);
		return "/user/activities";
	}
	
	@RequestMapping(value = "/user/movies", method = RequestMethod.GET)
	public String getMovieActivities(Model model) {
		Iterable<Activity> activityList = activityService.findActivitiesByCategory(Category.MOVIES);
		model.addAttribute("activityList", activityList);
		return "/user/activities";
	}
}
