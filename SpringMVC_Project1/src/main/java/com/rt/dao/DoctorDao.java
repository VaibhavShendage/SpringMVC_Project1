package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;


import com.rt.entities.DoctorEntities;
import com.rt.entities.petiont;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;

@Repository
public class DoctorDao {
	@Autowired
	
	JdbcTemplate template;

	@RequestMapping
	public boolean registerForm(DoctorEntities  d) {
		
		try {
			Object[] args = { d.getFname(), d.getSname(), d.getSpecialization(),d.getGender(),d.getDob(),d.getMob() };
			int a = template.update("insert into doctor(`fname`,`sname`,`specialization`,`gender`,`dob`,`mob`) values(?,?,?,?,?,?)", args);
			
			System.out.println(a);
			
			if (a == 1) {
				
				return true;
			}else {
				return false;
			}

		} catch (Exception e2) {

		}
		return false;
	}

	
	
//	******************************************************************
	
	public List <DoctorEntities> All() {

		
		List<DoctorEntities> list = null;
		try {
			
					list = template.query("select * from doctor", new RowMapper<DoctorEntities>() {

						public DoctorEntities mapRow(ResultSet d, int rowNum) throws SQLException {
							
							return new  DoctorEntities(d.getInt(1), d.getString(2),d.getString(3),d.getString(4),d.getString(5),d.getString(6),d.getString(7));
								
							
							}
						});

					} catch (Exception e2) {
				}
				return list;

				}
//********************************************************************


	public boolean update(DoctorEntities d) {
		
		try {
			 Object[] args = { d.getFname(),d.getSname(),d.getSpecialization(),d.getGender(),d.getDob(),d.getMob(), d.getId()};
		        int a = template.update("UPDATE doctor SET `fname` = ?,  `sname` = ?, `specialization` = ?, `gender` = ?, `dob` = ?,`mob`=? WHERE id = ?",
		            args
		        );
		        
		        
		        if (a == 1) {
						
		        				return true;
				} else {
						
							return false;
				}
			
		}catch (Exception e2) {
			
			}
			return false;
	}
/*
*****************************************************/



	public DoctorEntities deleteD(int id) {
		try {

			Object[] args = { id };
			
			 int a = template.update("delete from doctor where id = ?", args);
				System.out.println(a);

		} catch (Exception e2) {
			
		}
		return null;
	}

	
	}
