package com.HuynhTrongNghia_webproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HuynhTrongNghia_webproject.SessionService;
import com.HuynhTrongNghia_webproject.Dao.AccountDao;
import com.HuynhTrongNghia_webproject.Entity.Account;



@Controller
public class AccountController {
	@Autowired
	AccountDao tkDao;
	
	@Autowired
	SessionService session;
	
	@RequestMapping("/accounts/loginForm")
	public String formLog(){
		if (session.get("Email") != null) {
			System.err.println("bạn đã đăng nhập rồi");
			return "redirect:/home/index";
	    }
		else {
			return "hello/login";
		}
	}
	
	@RequestMapping("/accounts/doimk")
	public String formdoimk(){
		return "hello/doimk";
	}
	
	@RequestMapping("accounts/quenmk")
	public String quenmk(){
		return "hello/quenmk";
	}
	@RequestMapping("accounts/khainiem")
	public String khainiem(){
		return "layout/khainiem";
	}
//	@RequestMapping("accounts/login")
//    public String login(Model model,@RequestParam("Email") String email, @RequestParam("Password") String password,Model m) {
//   	 try {
//   		 Account user = tkDao.findById(email).get();
//		    	if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {
//	 				session.set("Email", email);
//	 				System.out.println("Đăng nhập thành công");
//	 				return "redirect:/home/index";
//		    }
//		} catch (Exception e) {
//			System.err.println("Đăng nhập thất bại");
//		}
//		return "hello/login";
//    }
     
     
     
//     @RequestMapping("dmk")
// 	public String doimk(@RequestParam("Email") String email, @RequestParam("Password") String password,
// 			@RequestParam("NewPassword") String passwordMoi, @RequestParam("Confirm") String confirm) {
// 		try {
// 			Account user = tkDao.findById(email).get();
// 			if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {
// 				if (!user.getPassword().equals(password)) {
// 					System.err.println("Sai mật khẩu ");
// 				} else if (!passwordMoi.equals(confirm)) {
// 					System.err.println("Mật khẩu nhập lại không đúng");
// 				} else {
// 					user.setPassword(passwordMoi);
// 					tkDao.save(user);
// 					System.err.println("Mật khẩu đã được cập nhật");
// 				}
// 				
// 			}
// 		} catch (Exception e) {
// 			System.err.println("Cập nhật thất bại");
// 		}
// 		return "redirect:/accounts/loginForm";
// 	}
     
//     @RequestMapping("dangxuat")
//  	public String dangxuat() {
//  	session.remove( "Email");
//  	return "redirect:/accounts/loginForm";
//  	}
 	@RequestMapping("/accounts/dangky")
	public String formLogoutacc(Model model){
		model.addAttribute("message","Đăng ký");
		return "hello/dangky";
	}
 	@RequestMapping("/accounts/gioithieu")
	public String gioithieu(){
		return "layout/gioithieu";
	}
 	@RequestMapping("/accounts/nganhang")
	public String nganhang(){
		return "layout/nganhang";
	}
}
