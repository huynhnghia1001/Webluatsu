package com.HuynhTrongNghia_webproject.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.HuynhTrongNghia_webproject.Entity.Law;


public interface LawDao  extends JpaRepository<Law, Integer>{
	@Query("SELECT p FROM Law p WHERE p.cate.id=?1")
	   List<Law> findByCategoryId(String cid);
	
	@Query("SELECT p FROM Law p WHERE p.fullname LIKE ?1 ")
	List<Law> timTheoTen(String fullname);
}
