package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entities.DoctorEntities;
import com.rt.entities.petiont;
import com.rt.service.DoctorService;
import com.rt.service.petiontService;


@Controller
public class DoctorController {
	@Autowired
	DoctorService es;
	
	
	@RequestMapping("/doctorAdd")
  	public String registerForm() {
  		return "AddDoctor";
  	}
  	
  	@RequestMapping("/Register")
	public String register(@ModelAttribute DoctorEntities d, Model m) {
		
		boolean isAdded = es.registerForm(d);
		
		m.addAttribute("empDoctor", d);
		
		if (isAdded) {
					
					m.addAttribute("succ" , "SuccessFully..");
		} else {
			
			m.addAttribute("err" , "Not Added..");

		}
		return "displayDoctor";
	}
  	
//  	***********************************************
  	
  	@RequestMapping("/doctorAll")
  	public String All(DoctorEntities d, Model  m) {
  		
  		List<DoctorEntities> list = es.All();
  		
  		m.addAttribute("empDoctor", list);
  		
  		return "AllDoctor";
  	}
  	
//  	********************************************
  	
 	@RequestMapping("/updateDoctors")
  	public String update(){
  		return "updateDoctor";
  		
  		
  	}
  	@RequestMapping("/UpdateDr")
  	public String update(@ModelAttribute DoctorEntities d , Model m){
  		
  		boolean isAdded = es.update(d);
  		
  		m.addAttribute("empDoctor", d);
  		
  		if (isAdded) {
  					
  			m.addAttribute("msgsucc","SuccessFully updated....");
  		} else {
  			m.addAttribute("err","Not updated....");
  		}
  		
  		return "displayDoctor";
}
  	
//  	*****************************************************
  	

  	@RequestMapping("/deleteDoctors")
  	public String deleteD(){
  		return "deleteDoctor";
  		
  		 
  	}
  	@RequestMapping("/deleteDoc")
  	public String deleteD(@RequestParam int id){
  		
  		DoctorEntities d = es.deleteD(id);
  		
  		return "deleteDoctor";
  		
  	}
}




