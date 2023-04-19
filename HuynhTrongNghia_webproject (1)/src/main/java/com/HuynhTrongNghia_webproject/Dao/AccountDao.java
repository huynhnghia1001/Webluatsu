package com.HuynhTrongNghia_webproject.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.HuynhTrongNghia_webproject.Entity.Account;
import com.HuynhTrongNghia_webproject.Entity.Law;

public  interface AccountDao extends JpaRepository<Account, String> {
	@Query("SELECT DISTINCT ar.account FROM Authority ar WHERE ar.role.id IN ('LAW','ADMIN')")
    List<Account> getAdministrators();

	
}
