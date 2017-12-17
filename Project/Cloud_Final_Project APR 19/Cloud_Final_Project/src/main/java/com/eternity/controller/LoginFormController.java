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
@RequestMapping("/login.htm")
public class LoginFormController {
	
	@Autowired
	@Qualifier("userAccountValidator")
	UserAccountValidator validator1;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator1);
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result) {

		return "Login";
	}
	@RequestMapping(method = RequestMethod.POST)
	protected String doSubmitAction(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result, HttpServletRequest request) throws Exception {
	
		/*
		validator1.validate(userAccount, result);
		if (result.hasErrors()) {
			System.out.print("page has error");
			return "Login";
		}
		*/
		
		try {
			System.out.println("step1");
			
			UserAccount loginResult;
			
			UserAccountDAO userAccountDAO = new UserAccountDAO();
			
			System.out.println("inside login controlller");
			
			
			loginResult =userAccountDAO.checkLogin(userAccount.getUsername(),userAccount.getPassword());
			
			if (loginResult==null){
				HttpSession session = request.getSession();
				String msg ="Invalid Credentials. Please try again";
				session.setAttribute("message", msg);
				return "index";
			}
			
			if(loginResult!=null){
				HttpSession session = request.getSession();
				session.setAttribute("username", loginResult.getFirstName());
				session.setAttribute("role", loginResult.getRole());
				session.setAttribute("userAccount", loginResult);
				
				boolean isAdmin;
				isAdmin=userAccountDAO.checkRole(userAccount.getUsername());
				
				if(isAdmin==true){
					
					return "index";
				}
				if(isAdmin==false){
					return "index";
				}
				
			}
			else{
				return "LoginError";
			}
			
			// DAO.close();
		} catch ( Exception e) {
			System.out.println("Exception: " + e.getMessage());
		}
		HttpSession session = request.getSession();
		String msg ="Invalid Credentials. Please try again";
		session.setAttribute("message", msg);
		return "index";
	}

	
	
	
}