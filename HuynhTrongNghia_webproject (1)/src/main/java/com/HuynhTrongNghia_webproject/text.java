package com.HuynhTrongNghia_webproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class text {
	@RequestMapping("hello")
	public String hello() {
		return "layout/index1";
	}
	@RequestMapping("login")
	public String login() {
		return "hello/login";
	}
	@RequestMapping("logout")
	public String logout() {
		return "hello/logout";
	}
	@RequestMapping("doimk")
	public String doimk() {
		return "hello/doimk";
	}
}
