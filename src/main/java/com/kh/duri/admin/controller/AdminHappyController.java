package com.kh.duri.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.service.adminHappyService;

@Controller
public class AdminHappyController {

	


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
	@RequestMapping("adminHappyAll.ad")
	public String admin9() {
		return "admin/adminHappyAll";
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
