package com.eternity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/destination.htm")
public class DestinationCallController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String call() {
	
		return "destination";
	}
}
