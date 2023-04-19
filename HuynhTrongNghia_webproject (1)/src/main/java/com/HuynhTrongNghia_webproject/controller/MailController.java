package com.HuynhTrongNghia_webproject.controller;

import javax.mail.MessagingException;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HuynhTrongNghia_webproject.LawService;
import com.HuynhTrongNghia_webproject.MailService;
import com.HuynhTrongNghia_webproject.SessionService;
import com.HuynhTrongNghia_webproject.Entity.Law;
import com.HuynhTrongNghia_webproject.Entity.MailBox;

@Controller
public class MailController {
	
  @Autowired
  MailService mailService;
  
  @Autowired
	LawService lawService;
  
  @RequestMapping("/mail/{id}")
  public String index(final Model model,@PathVariable("id") Integer id) throws MessagingException {
	  	Law list = lawService.findById(id);
	  	model.addAttribute("abc", list.getId());
	  	model.addAttribute("mailBox", new MailBox());
		  return "hello/index";
    
  }
  @RequestMapping("/sendEmail")
  public String sendEmail(@PathParam("id") Integer id,@PathParam("ten")String ten, @ModelAttribute("mailBox") MailBox mailBox, final Model model) throws MessagingException {
	  		Law list = lawService.findById(id);
	  		String a = "Tài khoản khách hàng: " + ten + " \nNội dung: " + mailBox.getMessage();
	  	
	  		mailService.sendEmail(mailBox.getSubject(), a, list.getEmail());
		    return "redirect:/home/index";	
	  
  }
}