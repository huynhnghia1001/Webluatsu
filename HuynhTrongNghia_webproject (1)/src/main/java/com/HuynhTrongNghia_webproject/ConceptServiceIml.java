package com.HuynhTrongNghia_webproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.ConceptDao;
import com.HuynhTrongNghia_webproject.Entity.Concept;


@Service
public class ConceptServiceIml implements ConceptService{
	@Autowired
	ConceptDao pdao;
	
	public List<Concept> findAll() {
		return pdao.findAll();
	}
	
	public List<Concept> findByCategoryId(String cid) {
		// TODO Auto-generated method stub
		return pdao.findByCategoryId(cid);
	}

	public Concept findById(Integer id) {
		return pdao.findById(id).get();
	}
}
