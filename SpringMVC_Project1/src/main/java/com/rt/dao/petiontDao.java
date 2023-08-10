package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.rt.entities.petiont;

@Repository
public class petiontDao {
	
	@Autowired
	JdbcTemplate template;
	
	public boolean register(petiont e) {
	
			try {
				
				
				
				Object[] args = { e.getFname(), e.getSname(),  e.getAge(),e.getMob(),e.getAdr(),e.getDoctor(),e.getDate(), e.getDisease() };
				int a = template.update("insert into patient (`fname`,`sname`,`age`,`mob`,`adr`,`doctor`,`date`,`disease`) values(?,?,?,?,?,?,?,?)", args);
				
				System.out.println(a);
				
				if (a == 1) {
					 			 
							return true;
				} else {
							return false;
				}
				
			} catch (Exception e2) {

			}
			return false;

	}

//	************************************update**********************************
	
	public boolean update(petiont e) {
		
		try {
			 Object[] args = { e.getFname(),e.getSname(),e.getAge(),e.getMob(),e.getAdr(),e.getDoctor(),e.getDate(),e.getDisease(), e.getId()};
		        int a = template.update("UPDATE patient SET `fname` = ?,  `sname` = ?, `age` = ?, `mob` = ?, `adr` = ?,`doctor`=?,`date`=?, `disease` = ?  WHERE id = ?",
		            args
		        );
		        
		        
		        if (a == 1) {
						
		        				return true;
				} else {
						
							return false;
				}
			
		} catch (Exception e2) {
		
		}
		return false;
	}
//*****************************************delete******************************************
	public petiont delete(int id) {
		
			
			try {

				Object[] args = { id };
				
				 int a = template.update("delete from patient where id = ?", args);
					System.out.println(a);

			} catch (Exception e2) {
				
			}
			return null;
			
		
	}
//******************************select******************************
	
	public  petiont select(int id) {
		
		petiont e = null;
		try {

			Object[] args = { id };
			 e = template.queryForObject("select * from patient", args, new RowMapper<petiont>() {

				public petiont mapRow(ResultSet rs, int rowNum) throws SQLException {return new petiont(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),
						rs.getString(7),rs.getString(8),rs.getString(9));
					
				
				}
			});

		} catch (Exception e2) {

		}
		return e;
};

//*************************************SelectAll***********************************************

public  List<petiont> selectAll() {
	
	List<petiont> list = null;
	
	try {

		 list = template.query("select * from patient", new RowMapper<petiont>() {

			public petiont mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				return new petiont(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
			}

			
		});

	} catch (Exception e2) {

	}
	return list;
};

}


	


	
	
	
	
	
