package com.rt.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class billController {

	@RequestMapping("/doctorAdd")
  	public String registerForm() {
  		return "billForm";
  	}
  	
}
