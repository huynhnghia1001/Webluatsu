package com.HuynhTrongNghia_webproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HuynhTrongNghia_webproject.Dao.AccountDao;
import com.HuynhTrongNghia_webproject.Entity.Account;


@Service
public class AccountServiceIml implements AccountService{
	@Autowired
	AccountDao adao;
	
	public List<Account> getAdministrators() {
		return adao.getAdministrators();
	}

	public List<Account> findAll() {
		return adao.findAll();
	}
	
	public Account findById(String username) {
		// TODO Auto-generated method stub
		return adao.findById(username).get();
	}
	
	public Account update(Account account) {
		// TODO Auto-generated method stub
		return adao.save(account);
	}
	@Override
	public Account create(Account account) {
		return adao.save(account);
	}

}
