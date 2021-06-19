package com.zjnu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjnu.entity.User;
import com.zjnu.service.UserService;


@Controller
public class UserController {

@Autowired	
 private UserService service;

@RequestMapping("/login.action")
public String  login(User user){
	  
	  User result = service.login(user);
	  System.out.println("login"); 
	  if(result!=null && result.getRole()==0){
		  return "/person_center.jsp";
	  }
	  if(result!=null && result.getRole()==1){
		  return "/admin_index.jsp";
	  }
	  return "/login.jsp"; 
}
@RequestMapping("/userlist.action")
public String personlist(Model mo){
	  
	  List<User> list = service.findAll();
	  mo.addAttribute("user",list);
	  
	  return "/user_arr.jsp";  
}

  @RequestMapping("/usersave.action")
  public String usersave(User user){
	  
	  service.save(user);
	  System.out.println("usersave");
	  //redirect:重定向 不写默认是请求转发
	 //return "redirect:/userlist.action";
	  return "/userlist.action";
  }
  
  @RequestMapping("/userdelete.action")
  public String userdelete(Integer id){
	  
	  service.deleteById(id);
	  System.out.println("userdelete");
	  //redirect:重定向 不写默认是请求转发
	 //return "redirect:/userlist.action";
	  return "/userlist.action";
  }
  @RequestMapping("/userready.action")
  public String  ready(Model mo,Integer id){		  
	  User user = service.findById(id);
	  mo.addAttribute("user",user);
	  System.out.println("ready"); 	  
	  return "/user_update.jsp";  
  }
  
  @RequestMapping("/userupdate.action")
  public String  update(User user){		  
	  service.update(user);
	  return "redirect:/userlist.action";  
  }
  
  
}
  