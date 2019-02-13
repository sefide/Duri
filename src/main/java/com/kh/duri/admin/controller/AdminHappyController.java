package com.kh.duri.admin.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminHappyService;
import com.kh.duri.admin.model.vo.adminMember;


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
	@RequestMapping("adminHappyAcc.ad")
	public String admin10() {
		return "admin/adminHappyAcc";
	}
	@RequestMapping("adminRefund.ad")
	public String admin19() {
		return "admin/adminRefund";
	}
	//행복두리 전체 목록
	@RequestMapping("adminHappyAll.ad")
	public String adminHappyAllList(Model model) {
		
		try {
			List<adminMember>HappyAlllist = ahs.adminHappyList();
			
			model.addAttribute("HappyAlllist", HappyAlllist);
			
			return "admin/adminHappyAll";
			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());
				
				return "admin/adminHappyAll";
			}
		
		
	}
	//행복두리 상세조회(전체목록에서 들어가는거임)
	@RequestMapping("adminHappyDetail.ad")
	public String adminHappyDetailList(HttpServletRequest request, HttpServletResponse response,Model model,adminMember m) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		m.setMno(num);
		adminMember HappyDetail;
		try {
			HappyDetail = ahs.HappyDetail(m);
			model.addAttribute("HappyDetail", HappyDetail);
			return "admin/adminHappyDetail";
			
		} catch (ListException e) {
			model.addAttribute("msg", e.getMessage());
			return "admin/adminHappyDetail";
		}
		
		
		
		
		
	}
	@RequestMapping("adminHappyAccDetail.ad")
	public String admin17() {
		return "admin/adminHappyAccDetail";
	}
	@RequestMapping("adminNewHappyDetail.ad")
	public String admin15() {
		return "admin/adminNewHappyDetail";
	}
	
	
	
}
