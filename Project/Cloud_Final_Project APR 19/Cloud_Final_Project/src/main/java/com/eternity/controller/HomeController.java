package com.eternity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eternity.pojo.UserAccount;

/**
 * Handles requests for the application home page.
 */
@Controller

public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result) {

		return "index";
	}
	
	
	
}
