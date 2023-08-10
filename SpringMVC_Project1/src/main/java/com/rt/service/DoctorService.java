package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.rt.dao.DoctorDao;

import com.rt.entities.DoctorEntities;
import com.rt.entities.petiont;

@Controller
public class DoctorService {
	
	@Autowired
	DoctorDao DDao;


	public boolean registerForm(DoctorEntities d) {
		
		return DDao.registerForm(d);
	}
//****************************************

	public List<DoctorEntities> All() {
	   
		return DDao.All();
	}
//***********************************************
	public boolean update(DoctorEntities d) {
		return DDao.update(d);
	}
//****************************************************

	public DoctorEntities deleteD(int id) {
		return DDao.deleteD(id);
		
	}
	









		
	
}
