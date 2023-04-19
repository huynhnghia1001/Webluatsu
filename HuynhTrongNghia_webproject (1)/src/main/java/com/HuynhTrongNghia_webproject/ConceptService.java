package com.HuynhTrongNghia_webproject;

import java.util.List;

import com.HuynhTrongNghia_webproject.Entity.Concept;

public interface ConceptService {
	List<Concept> findAll();
	List<Concept> findByCategoryId(String cid);
	Concept findById(Integer id);
}
