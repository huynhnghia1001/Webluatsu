package com.HuynhTrongNghia_webproject.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.HuynhTrongNghia_webproject.Entity.Concept;


public interface ConceptDao extends JpaRepository<Concept, Integer>{
	@Query("SELECT p FROM Concept p WHERE p.cate.id=?1")
	   List<Concept> findByCategoryId(String cid);
}
