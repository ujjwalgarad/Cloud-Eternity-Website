package com.eternity.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eternity.dao.UserAccountDAO;
import com.eternity.pojo.UserAccount;


@Controller
@RequestMapping("/adduser.htm")
public class AddUserFormController {
	
	@Autowired
	@Qualifier("userAccountValidator")
	UserAccountValidator validator1;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator1);
	}
	@RequestMapping(method = RequestMethod.POST)
	protected String doSubmitAction(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		validator1.validate(userAccount, result);
		if (result.hasErrors()) {
			return "UserRegister";
		}
		try {
			System.out.println("step1");
			/*
			
			ProcessBuilder pb = new ProcessBuilder("chrome.exe", "www.google.com");
			ProcessBuilder pb1 = new ProcessBuilder("chrome.exe", "www.google.com");
			ProcessBuilder pb2= new ProcessBuilder("chrome.exe", "www.google.com");
			ProcessBuilder pb3 = new ProcessBuilder("chrome.exe", "www.google.com");
			ProcessBuilder pb4 = new ProcessBuilder("chrome.exe", "www.google.com");
			pb.start();
			pb1.start();
			pb2.start();
			pb3.start();
			pb4.start();
			*/
			UserAccountDAO userAccountDAO = new UserAccountDAO();
			UserAccount creationResult;
			System.out.println("step2");
			
			
			creationResult =userAccountDAO.createUser(userAccount.getUsername(),userAccount.getPassword(),userAccount.getFirstName(),userAccount.getLastName(),userAccount.getAddress().getStreetName(),userAccount.getAddress().getCity(),userAccount.getAddress().getState(),userAccount.getAddress().getZipcode(),userAccount.getAddress().getCountry(),userAccount.getEmail(),userAccount.getTelephone());
			if(creationResult!=null){
				String msg1 = " account created Successfully. Please Login  ";
				session.setAttribute("username", creationResult.getUsername());
				session.setAttribute("message1", msg1);
				return "UserRegister";
			}
			
			// DAO.close();
		} catch ( Exception e) {
			System.out.println("Exception: " + e.getMessage());
		}
			String msg="Error!! Please try again";
			session.setAttribute("message2", msg);
			return "UserRegister";
	}

	
	@RequestMapping(method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result) {

		return "UserRegister";
	}
	
}