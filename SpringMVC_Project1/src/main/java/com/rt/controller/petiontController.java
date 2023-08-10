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
public class petiontController {

	@Autowired
	petiontService ps;
	
	@Autowired
	DoctorService es;

	@RequestMapping("/")
	public String Homepage() {
		return "login";

	}

	@RequestMapping("/registerForm")
	public String registerForm(Model m) {

		List<DoctorEntities> list = es.All();

		m.addAttribute("empDoctor", list);

		return "addPetiont";
	}

	@RequestMapping("/register")
	public String register(@ModelAttribute petiont e, Model m) {

		boolean isAdded = ps.register(e);

		m.addAttribute("empData", e);

		if (isAdded) {

			m.addAttribute("succ", " Data Added SuccessFully..");
		} else {

			m.addAttribute("err", "Not Added..");

		}
		return "display";
	}

	// ***************************update*************************************************************
	@RequestMapping("/updateForm")
	public String update() {
		return "updatePetiont";

	}

	@RequestMapping("/update")
	public String update(@ModelAttribute petiont e, Model m) {

		boolean isAdded = ps.update(e);

		List<DoctorEntities> list = es.All();

		m.addAttribute("empData", e);

		if (isAdded) {
			m.addAttribute("msgsucc", "SuccessFully Patient updated....");

		} else {
			m.addAttribute("err", "Not updated....");
		}

		return "display";
	}
	// *************************************delete******************************************

	@RequestMapping("/deleteForm")
	public String delete() {
		return "delete";

	}

	@RequestMapping("/delete")
	public String delete(@RequestParam int id) {

		petiont e = ps.delete(id);

		return "delete";

	}
	// ***************************************select********************************************

	@RequestMapping("/GetEmployee")
	public String GetEmployee() {
		return "select";
	}

	@RequestMapping("/select")
	public String GetEmp(@RequestParam int id, Model m) {

		petiont e = ps.select(id);

		m.addAttribute("empData", e);

		return "home";
	}

	// **************************************selectAll****************************************

	@RequestMapping("/selectAll")
	public String GetallEmp(petiont e, Model m) {

		List<petiont> list = ps.selectAll();

		m.addAttribute("empData", list);

		return "displayAll";
	}

	// --------------------------------------AboutUs----------------------------------

	@RequestMapping("/about")
	public String about() {
		return "AboutUs";
	}

	// ************************************
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	// *********************************

	@RequestMapping("/logout")
	public String logout() {
		return "login";
	}
	// *****************

	@RequestMapping("/service")
	public String service() {
		return "Services";
	}

	// ***************************
	@RequestMapping("/contact")
	public String contact() {
		return "ContactUs";
	}
}
