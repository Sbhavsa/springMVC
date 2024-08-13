package com.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;


import com.dao.userdao;

import model.user;

@Controller
public class maincontroller {
	@Autowired
	private userdao dao;
	@RequestMapping("/")
	public String index() {
		return "index";
		
	}
	@RequestMapping("/home")
      public String home(Model m) {
		m.addAttribute("id", 1);
		m.addAttribute("name", "snehal");		
		return "home";
    	  
      }
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	@RequestMapping("/adduser")
	public String adduser() {
		return "adduser";
		
	}
	@RequestMapping("register")
	public RedirectView register(@ModelAttribute user m,HttpServletRequest request) {
		    dao.inserUPdateUser(m);
			RedirectView view = new RedirectView();
			view.setUrl(request.getContextPath()+"/");
			return view;											
	}
	@RequestMapping("/update/{id}")
	public String update(@PathVariable int id, Model m) {
		user u= dao.getmodelbyid(id);
		m.addAttribute("u", u);
		return "update";
	}
	
}
