package com.HuynhTrongNghia_webproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HuynhTrongNghia_webproject.CateService;
import com.HuynhTrongNghia_webproject.Entity.Cate;



@CrossOrigin("*")
@RestController
@RequestMapping("/rest/cates")
public class CateRestController {
	@Autowired
	CateService categoryService;

	@GetMapping()
	public List<Cate> getAll() {
		return categoryService.findAll();
	}
}
