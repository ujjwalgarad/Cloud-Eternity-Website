package com.eternity.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eternity.dao.DAO;
import com.eternity.dao.UserAccountDAO;
import com.eternity.pojo.UserAccount;

@Controller
@RequestMapping("/admin.htm")
public class AdminCallController {

	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result) {

		return "admin";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public void doSubmitAction(@ModelAttribute("userAccount") UserAccount userAccount, BindingResult result,HttpServletRequest request) throws IOException, SQLException  {
		System.out.println("Inside admin task");
		String action = request.getParameter("action");
		
		if(action.equals("cpu")){
			
			String workingDir = System.getProperty("user.dir");
			String cmd =workingDir+"/cpu_ultilization.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
		if(action.equals("dbfetch")){
			UserAccountDAO uDAO = new UserAccountDAO();
			uDAO.dbFetch();
			
		}
		if(action.equals("report")){
			String workingDir = System.getProperty("user.dir");
			
			String cmd =workingDir+"/report.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
		if(action.equals("btn1")){
			String workingDir = System.getProperty("user.dir");
			
			String cmd =workingDir+"/btn1.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
		if(action.equals("btn2")){
			String workingDir = System.getProperty("user.dir");
			
			String cmd =workingDir+"/btn2.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
		if(action.equals("btn3")){
			String workingDir = System.getProperty("user.dir");
			
			String cmd =workingDir+"/btn3.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
		
		if(action.equals("btn4")){
			String workingDir = System.getProperty("user.dir");
			
			String cmd =workingDir+"/btn4.sh";
			ProcessBuilder pb = new ProcessBuilder(cmd);
			
			pb.start();
		}
	}
}
