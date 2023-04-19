package com.HuynhTrongNghia_webproject;

import java.util.List;

import com.HuynhTrongNghia_webproject.Entity.Law;


public interface LawService {
	List<Law> findAll();
	List<Law> findByCategoryId(String cid);
	Law findById(Integer id);
	List<Law> findByName(String string);
	Law create(Law product);

	Law update(Law product);

	void delete(Integer id);
	List<Law> timTheoTen(String fullname);
}
