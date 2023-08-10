package com.rt.controller;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {
	
	     @RequestMapping("/login")
        public String loginPage(@RequestParam String username,@RequestParam String password,HttpSession Session, Model m ) {
	    	 
        	if (username.equals(password)) {
        		
        		Session.setAttribute("user",username);
				
			} else {
				
				m.addAttribute("errlog", "invalid crd...");
				return"login";

			}
        	
			return "home";

		} ;  
	 

}