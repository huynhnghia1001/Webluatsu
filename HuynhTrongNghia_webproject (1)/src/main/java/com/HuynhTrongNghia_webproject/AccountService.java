package com.HuynhTrongNghia_webproject;

import java.util.List;

import com.HuynhTrongNghia_webproject.Entity.Account;

public interface AccountService {
	public List<Account> getAdministrators();
	
	public Account findById(String username);
	
	Account update(Account account);
	public Account create(Account account);
	public List<Account> findAll();

}
