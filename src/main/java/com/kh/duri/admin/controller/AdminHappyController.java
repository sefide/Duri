package com.kh.duri.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminHappyService;
import com.kh.duri.admin.model.service.adminNanumService;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.member.model.vo.Member;

@Controller
public class AdminHappyController {

	@Autowired
	private adminHappyService ahs;



	@RequestMapping("QnA.ad")
	public String admin2() {
		return "admin/QnA";
	}
	@RequestMapping("QnADetail.ad")
	public String admin18() {
		return "admin/QnADetail";
	}
	@RequestMapping("adminHappy.ad")
	public String admin10() {
		return "admin/adminHappy";
	}
	//행복두리 전체 목록
	@RequestMapping("adminHappyAll.ad")
	public String adminHappyAllList(Model model) {
		
		try {
			List<Member>HappyAlllist = ahs.adminHappyList();
			
			model.addAttribute("HappyAlllist", HappyAlllist);
			
			return "admin/adminHappyAll";
			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());
				
				return "admin/adminHappyAll";
			}
		
		
	}
	@RequestMapping("adminHappyDetail.ad")
	public String admin16() {
		return "admin/adminHappyDetail";
	}
	@RequestMapping("adminHappyTotalDetail.ad")
	public String admin17() {
		return "admin/adminHappyTotalDetail";
	}
	@RequestMapping("adminNewHappyDetail.ad")
	public String admin15() {
		return "admin/adminNewHappyDetail";
	}
	
	
	
}
