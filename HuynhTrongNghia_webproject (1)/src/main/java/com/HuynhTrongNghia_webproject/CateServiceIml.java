package com.HuynhTrongNghia_webproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.CateDao;
import com.HuynhTrongNghia_webproject.Entity.Cate;

@Service
public class CateServiceIml implements CateService{
	
	@Autowired
	CateDao cDao;
	
	public List<Cate> findAll() {
		return cDao.findAll();
	}
}
