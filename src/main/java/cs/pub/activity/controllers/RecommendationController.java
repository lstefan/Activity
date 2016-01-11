package cs.pub.activity.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cs.pub.activity.model.Activity;
import cs.pub.activity.services.RecommendationService;
import cs.pub.activity.services.UserService;

@Controller
public class RecommendationController {

	private static final Logger logger = LoggerFactory.getLogger(RecommendationController.class);
	
	@Autowired
	RecommendationService recommendationService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/recommendations", method = RequestMethod.GET)
	public String getRecommendations(Model model) {
		List<Activity> recommendationList = recommendationService.getRecommendations(userService.getLoggedInUser().getId());
		model.addAttribute("noOfActivities", recommendationList.size());
		model.addAttribute("activityList", recommendationList);
		return "/user/recommendations";
	}
}
