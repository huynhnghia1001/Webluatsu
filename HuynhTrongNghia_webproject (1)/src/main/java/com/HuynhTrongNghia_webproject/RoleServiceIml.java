package com.HuynhTrongNghia_webproject;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.RoleDao;
import com.HuynhTrongNghia_webproject.Entity.Role;




@Service
public class RoleServiceIml implements RoleService{

	@Autowired
	RoleDao dao;
	
	
	public List<Role> findAll() {
		return dao.findAll();
	}
   
}
