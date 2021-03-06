package cs.pub.activity.controllers;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cs.pub.activity.model.Activity;
import cs.pub.activity.services.ActivityService;
import cs.pub.activity.services.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ActivityService activityService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale) {
		logger.info("Client locale is: " + locale.getDisplayLanguage()); 
		
		return "forward:/home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Model model) {
		Iterable<Activity> recentActivities = activityService.findMostRecent();
		model.addAttribute("recentActivities", recentActivities);
		return "/user/home";
	}

}
