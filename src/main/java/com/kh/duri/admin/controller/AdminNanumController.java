package com.kh.duri.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminNanumService;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.admin.model.vo.adminMember;

@Controller
public class AdminNanumController {

	@Autowired
	private adminNanumService ans;


	//나눔두리 전체목록 + 기부영수증 목록
	@RequestMapping("adminNanum.ad")
	public String adminNanumList(Model model,Model model2) {
	
		try {
		List<adminMember>Nanumlist = ans.adminNanumList();
		List<Donatelist>Donatelist = ans.adminDonatelist();
		
		model.addAttribute("Nanumlist", Nanumlist);
		model2.addAttribute("Donatelist", Donatelist);
		
		return "admin/adminNanum";
		
		}catch(ListException e) {
			model.addAttribute("msg", e.getMessage());
			
			return "admin/adminNanum";
		}
	
	}
	
	//나눔두리 상세조회 - 기본정보
	@RequestMapping("adminNanumDetail.ad")
	public String adminNanumListDetail(HttpServletRequest request, HttpServletResponse response,Model model,adminMember m) {
	 
		int num = Integer.parseInt(request.getParameter("num"));
		m.setMno(num);
		adminMember NanumDetail;
		try {
			NanumDetail = ans.NanumDetail(m);
			model.addAttribute("NanumDetail", NanumDetail);
		
			return "admin/adminNanumDetail";
		} catch (ListException e) {

			model.addAttribute("msg", e.getMessage());
			
			return "admin/adminNanumDetail";
		}
		
	}
	
	
	
}
