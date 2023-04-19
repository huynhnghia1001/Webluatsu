package com.HuynhTrongNghia_webproject;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SessionService {
	@Autowired
	HttpSession session;
	
	public void set(String name,Object val) {
		session.setAttribute(name, val);
	}
	
	public <E> E get(String name) {
		return (E)session.getAttribute(name);
	}
	
	public void remove(String name) {
		session.removeAttribute(name);
	}
}
