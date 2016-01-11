package cs.pub.activity.controllers;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.Category;
import cs.pub.activity.model.User;
import cs.pub.activity.model.UserRating;
import cs.pub.activity.services.ActivityService;
import cs.pub.activity.services.UserRatingService;
import cs.pub.activity.services.UserService;

@Controller
public class ActivityController {

	private static final Logger logger = LoggerFactory.getLogger(ActivityController.class);
	
	@Autowired
	ActivityService activityService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	UserRatingService userRatingService;
	
	@RequestMapping(value = "/activities", method = RequestMethod.GET)
	public String getActivities(Model model) {
		Iterable<Activity> activityList = activityService.findAllActivities();
		model.addAttribute("activityList", activityList);
		return "/user/activities";
	}
	
	@RequestMapping(value = "/activities/movies", method = RequestMethod.GET)
	public String getMovieActivities(Model model) {
		Iterable<Activity> activityList = activityService.findActivitiesByCategory(Category.MOVIES);
		model.addAttribute("activityList", activityList);
		return "/user/activities";
	}
	
	@RequestMapping(value = "/activities/{activityId}", method = RequestMethod.GET)
	public String getActivityDetails(@PathVariable("activityId") long activityId, Model model) {
		Activity selectedActivity = activityService.findActivity(activityId);
		model.addAttribute("activity", selectedActivity);
		return "/user/activity";
	}
	
	@RequestMapping(value = "/activities/{activityId}", method = RequestMethod.POST)
	public String postActivityDetails(Model model, @PathVariable("activityId") long activityId, @RequestParam Map<String, String> params) {
		String rating = params.get("rating");
		System.out.println("Rating=" + rating);
		Activity selectedActivity = activityService.findActivity(activityId);
		model.addAttribute("activity", selectedActivity);
		
		User currentUser = userService.getLoggedInUser();
		
		UserRating userRating = new UserRating();
		userRating.setActivity(selectedActivity);
		userRating.setUser(currentUser);
		userRating.setRating(Float.valueOf(rating));
		
		userRatingService.saveUserRating(userRating);

		return "/user/activity";
	}
	
}
