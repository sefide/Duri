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
import com.kh.duri.admin.model.vo.RefundList;
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
	//행복두리 환급 목록
	@RequestMapping("adminRefund.ad")
	public String adminRefundList() {
		
		return "admin/adminRefund";
		
	}
	//행복두리 승인목록 조회
	@RequestMapping("adminHappyAcc.ad")
	public String adminHappyAccList(Model model) {
		List<adminMember>HappyNewList ; //신규목록
		try {
			HappyNewList = ahs.adminHappyNewList();
			
			model.addAttribute("HappyNewList", HappyNewList);
			
			return "admin/adminHappyAcc";
			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());
				
				return "admin/adminHappyAcc";
			}
		
	}
	//행복두리 전체 목록 조회
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
	//행복두리 [기존회원(1)/신규회원(3)] 상세페이지 (공통페이지)  
	@RequestMapping("adminHappyDetail.ad")
	public String adminHappyDetailList(HttpServletRequest request, HttpServletResponse response,Model model,adminMember m) {
		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		String Statusnum = request.getParameter("Statusnum");
		m.setMno(Mnonum);
		m.setmTakeStatus(Statusnum);
		
		adminMember HappyDetail;
		try {
			HappyDetail = ahs.HappyDetail(m);
			model.addAttribute("HappyDetail", HappyDetail);
			
			System.out.println(HappyDetail);
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
