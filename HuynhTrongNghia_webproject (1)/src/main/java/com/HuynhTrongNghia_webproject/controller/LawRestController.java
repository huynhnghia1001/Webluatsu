package com.HuynhTrongNghia_webproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HuynhTrongNghia_webproject.LawService;
import com.HuynhTrongNghia_webproject.Entity.Account;
import com.HuynhTrongNghia_webproject.Entity.Law;


@CrossOrigin("*")
@RestController
@RequestMapping("/rest/lawyers")
public class LawRestController {
   @Autowired
   LawService lawSer;
   
   @GetMapping()
	public List<Law> getAll() {
		return lawSer.findAll();
	}
	
	@GetMapping("{id}")
	public Law getOne(@PathVariable("id") Integer id) {
		return lawSer.findById(id);
	}
	@PostMapping
	public Law create(@RequestBody Law product) {
		return lawSer.create(product);
	}
	@PutMapping("{id}")
	public Law update(@PathVariable("id") Integer id,@RequestBody Law product) {
		return lawSer.update(product);
	}
	@DeleteMapping("{id}")
	public void delete(@PathVariable("id") Integer id) {
		lawSer.delete(id);
	}
	
	@GetMapping("/tim/{fullname}")
	public List<Law> timusername(@PathVariable("fullname") String fullname) {
		return lawSer.timTheoTen("%" + fullname + "%");
	}
}
