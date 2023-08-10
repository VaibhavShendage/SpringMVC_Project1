package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.dao.petiontDao;
import com.rt.entities.petiont;

@Service
public class petiontService {
	
        @Autowired
         petiontDao ed;
        
         public boolean register(petiont e) {
        	
        	
        	 
        	 return ed.register(e);
		

		}

//		***********************************Update**************************************
         
         public boolean update(petiont e) {
        	 
     		return ed.update(e);
     	}
//**************************************delete***************************************
         
		public petiont delete(int id) {
			return ed.delete(id);
		
		}
//		****************************************select****************************

		public petiont select(int id) {
			return ed.select(id);
		
		}
		
		
//		*************************************selectAll**************************************
		
		





		public List<petiont> selectAll() {
			return ed.selectAll();
		}	
		
		
		
}
