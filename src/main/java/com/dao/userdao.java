package com.dao;




import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import model.user;

@Repository
public class userdao {
    private HibernateTemplate hibernatetemplate;

	public HibernateTemplate getHibernatetemplate() {
		return hibernatetemplate;
	}

	public void setHibernatetemplate(HibernateTemplate hibernatetemplate) {
		this.hibernatetemplate = hibernatetemplate;
	}
	@Transactional
    public void inserUPdateUser(user m) {
   	 this.hibernatetemplate.saveOrUpdate(m);
    }
	
	public user getmodelbyid(int id) {
   	 user m = this.hibernatetemplate.load(user.class, id);
		return m;
   	 
    }
	 public List<user> getallmodel(){
	    	List<user> list = this.hibernatetemplate.loadAll(user.class);
	    	return list;
	     }
	 @Transactional
     public void updatemodel(user m) {
    	 this.hibernatetemplate.update(m);
     }
     @Transactional
     public void deletemodel(user m) {
    	 this.hibernatetemplate.delete(m);
     }
}
