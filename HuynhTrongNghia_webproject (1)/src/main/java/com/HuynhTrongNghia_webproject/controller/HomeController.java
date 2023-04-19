package com.HuynhTrongNghia_webproject.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HuynhTrongNghia_webproject.LawService;
import com.HuynhTrongNghia_webproject.Entity.Law;

@Controller

public class HomeController {
	
	@Autowired
	LawService lawService;
	
	@RequestMapping({"/admin", "/admin/home/index"})
    public String admin() {
    	return "redirect:/assets/admin/index.html";
    }
	
	 @RequestMapping({"/admin", "/admin/home/auth"})
	    public String authority() {
	    	return "redirect:/assets/admin/authority/index.html";
	    }
	
	@RequestMapping("home/index")
    public String home(Model model, @RequestParam("cid") Optional<String> cid) {
		if(cid.isPresent()) {
			List<Law> list = lawService.findByCategoryId(cid.get());
			model.addAttribute("items", list);
		}
		else {
			List<Law> list = lawService.findAll();
			model.addAttribute("items", list);
		}
    	return "layout/index1";
    }
	
	@RequestMapping("home/thongtin/{id}")
    public String ThongTin(Model m, @PathVariable("id") Integer id) {
		Law list = lawService.findById(id);
    	m.addAttribute("items", list);
    	return "layout/ThongTinLuatSu";
    }
	
	@RequestMapping("/law/thongtincanhan/{id}")
    public String ThongTinCaNhan(Model m,@PathVariable("id") Integer id) {
		Law list = lawService.findById(id);
    	m.addAttribute("items", list);
    	return "layout/ThongTinCaNhan";
    }
	
	@Autowired
	HttpServletRequest req;
	
	@RequestMapping("/product/list")
    public String list(Model m) {
		String a = req.getParameter("sp");
		if(a != null){ 
			List<Law> list = lawService.findByName("%"+a+"%");
			m.addAttribute("items" , list);
			return "layout/index1";
		}else{
			List<Law> list = lawService.findAll();
        	m.addAttribute("items", list);
        	return "layout/index1";
		}	
    }
    
}
