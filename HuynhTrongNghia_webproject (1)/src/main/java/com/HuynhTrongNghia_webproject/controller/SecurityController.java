package com.HuynhTrongNghia_webproject.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {
	@RequestMapping("/security/login/form")
	public String loginForm(Model model) {
			model.addAttribute("message","Vui lòng đăng nhập!");
			return "hello/login";
	}
	@RequestMapping("/security/login/success")
	public String loginSuccess(Model model) {
			model.addAttribute("message","Đăng nhập thành công!");
			return "hello/login";
	}
	@RequestMapping("/security/login/error")
	public String loginError(Model model) {
			model.addAttribute("message","Sai thông tin đăng nhập!");
			return "hello/login";
	}
	@RequestMapping("/security/unauthoried")
	public String unauthoried(Model model) {
			model.addAttribute("message","Không có quyền truy xuất!");
			return "hello/login";
	}
	@RequestMapping("/security/logoff/success")
	public String logoffSuccess(Model model) {
			model.addAttribute("message","Bạn đã đăng xuất!");
			return "hello/login";
	}
	
	@RequestMapping("/security/dmk/form")
	public String dmkform(Model model) {
			model.addAttribute("message","Đổi mật khẩu thành công!");
			return "hello/doimk";
	}
	
	@RequestMapping("/security/quenmk/form")
	public String qmkform(Model model) {
			model.addAttribute("message","Đổi mật khẩu thành công!");
			return "hello/quenmk";
	}
	
	@RequestMapping("/security/dmk/success")
	public String dmkSuccess(Model model) {
			model.addAttribute("message","Đổi mật khẩu thành công!");
			return "hello/doimk";
	}
	
	@RequestMapping("/security/dmk/error")
	public String dmkError(Model model) {
			model.addAttribute("message","Đổi mật khẩu thành công!");
			return "hello/doimk";
	}
}
