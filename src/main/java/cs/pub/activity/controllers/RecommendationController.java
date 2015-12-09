package cs.pub.activity.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cs.pub.activity.model.Activity;
import cs.pub.activity.services.ActivityService;

@Controller
public class RecommendationController {

	private static final Logger logger = LoggerFactory.getLogger(RecommendationController.class);
	
	@RequestMapping(value = "/recommendations", method = RequestMethod.GET)
	public String getRecommendations(Model model) {
		return "/user/recommendations";
	}
}
