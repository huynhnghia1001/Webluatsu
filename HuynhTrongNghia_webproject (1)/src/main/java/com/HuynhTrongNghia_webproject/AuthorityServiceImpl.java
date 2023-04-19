package com.HuynhTrongNghia_webproject;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.AccountDao;
import com.HuynhTrongNghia_webproject.Dao.AuthorityDao;
import com.HuynhTrongNghia_webproject.Entity.Account;
import com.HuynhTrongNghia_webproject.Entity.Authority;

@Service
public class AuthorityServiceImpl implements AuthorityService{

	@Autowired
	AuthorityDao dao;
	
	@Autowired
	AccountDao accDao;
	
	
	public List<Authority> findAuthoritiesOfAdministrators() {
        List<Account> accounts = accDao.getAdministrators();
		return dao.authoritiesOf(accounts);
	}

	
	public List<Authority> findAll() {
		return dao.findAll();
	}

	
	public Authority create(Authority auth) {
		return dao.save(auth);
	}


	
	public void delete(Integer id) {
		 dao.deleteById(id);
		
	}

	

}
