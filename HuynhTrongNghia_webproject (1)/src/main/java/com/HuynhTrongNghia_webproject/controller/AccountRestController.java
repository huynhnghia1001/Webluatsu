package com.HuynhTrongNghia_webproject.controller;

import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.HuynhTrongNghia_webproject.AccountService;
import com.HuynhTrongNghia_webproject.MailService;
import com.HuynhTrongNghia_webproject.Entity.Account;



@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
public class AccountRestController {
	
	 @Autowired
	 AccountService accService;
	 
	 @Autowired
	MailService mailService;
	 
	 @GetMapping
	    public List<Account> getAccounts(@RequestParam("admin")Optional<Boolean> admin){
	    	if(admin.orElse(false)) {
	    		return accService.getAdministrators();
	    	}
	    	return accService.findAll();
	    }
	
	 @GetMapping("{username}")
		public Account getOne(@PathVariable("username") String username) {
			return accService.findById(username);
		}
	 
	 @PutMapping("{username}")
		public Account update(@PathVariable("username") String username,@RequestBody Account account) {
			return accService.update(account);
		}
	 @PostMapping("{username}")
		public Account create(@PathVariable("username") String username, 
				@RequestBody Account account) throws MessagingException {
		 
			 if(mailService.sendEmailDangKy(username) == true) {
				 return accService.create(account);
			 }
		 return null;
		}
	 
}
