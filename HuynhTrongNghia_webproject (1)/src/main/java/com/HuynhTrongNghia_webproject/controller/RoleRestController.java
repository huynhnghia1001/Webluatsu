package com.HuynhTrongNghia_webproject.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HuynhTrongNghia_webproject.RoleService;
import com.HuynhTrongNghia_webproject.Entity.Role;



@CrossOrigin("*")
@RestController
@RequestMapping("/rest/roles")
public class RoleRestController {
   @Autowired
   RoleService roleService;
   
   @GetMapping
   public List<Role> getAll(){
	   return roleService.findAll();
   }
}
