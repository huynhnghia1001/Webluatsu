package com.HuynhTrongNghia_webproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.LawDao;
import com.HuynhTrongNghia_webproject.Entity.Law;


@Service
public class LawServiceIml implements LawService{
	
	@Autowired
	LawDao pdao;
	
	public List<Law> findAll() {
		return pdao.findAll();
	}
	
	public List<Law> findByCategoryId(String cid) {
		// TODO Auto-generated method stub
		return pdao.findByCategoryId(cid);
	}

	public Law findById(Integer id) {
		return pdao.findById(id).get();
	}
	
	

	@Override
	public Law create(Law product) {
		// TODO Auto-generated method stub
		return pdao.save(product);
	}

	@Override
	public Law update(Law product) {
		// TODO Auto-generated method stub
		return pdao.save(product);
	}

	@Override
	public void delete(Integer id) {
		pdao.deleteById(id);
		
	}

	@Override
	public List<Law> findByName(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Law> timTheoTen(String fullname) {
		return pdao.timTheoTen(fullname);
	}
	
}
