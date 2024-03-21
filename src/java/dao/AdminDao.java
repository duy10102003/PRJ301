package dao; 
 
import java.util.List;

import model.Admin; 
 
public interface AdminDao { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 
	
	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 

        int numberOforder() ;
        
        int numberOforderBefore();
        
        double totalAmount() ;
        double totalAmountBefore() ;
        
        int numberOfPro() ;
        
        int numberOfproBefore();
        
        int sumQty(int catId)  ;
        double sumPrice(int catId);
        
            
        
	
} 
