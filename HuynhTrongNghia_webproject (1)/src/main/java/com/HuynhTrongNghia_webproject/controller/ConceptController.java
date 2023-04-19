package com.HuynhTrongNghia_webproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HuynhTrongNghia_webproject.ConceptService;
import com.HuynhTrongNghia_webproject.Entity.Concept;


@Controller
public class ConceptController {
	@Autowired
	ConceptService lawService;
	
	
	@RequestMapping("/list/khainiem")
    public String list(Model m , @RequestParam("cid")Optional<String> cid) {
		
		if(cid.isPresent()) {
    		List<Concept> list = lawService.findByCategoryId(cid.get());
    		m.addAttribute("items", list);
    	}else {
    		List<Concept> list = lawService.findAll();
        	m.addAttribute("items", list);
    	}
    	return "layout/khainiem";
    }
}
