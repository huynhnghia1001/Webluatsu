package com.HuynhTrongNghia_webproject;

import java.util.List;

import com.HuynhTrongNghia_webproject.Entity.Authority;



public interface AuthorityService {

	public List<Authority> findAuthoritiesOfAdministrators();

	public List<Authority> findAll();

	public Authority create(Authority auth);

	public void delete(Integer id);
    
}
