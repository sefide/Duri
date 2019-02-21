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
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;

@Controller
public class AdminNanumController {

	@Autowired
	private adminNanumService ans;


	//나눔두리 전체목록 + 기부영수증 목록
	@RequestMapping("adminNanum.ad")
	public String adminNanumList(Model model1,Model model2) {
	
		try {
		List<adminMember>Nanumlist = ans.adminNanumList();
		List<Donatelist>Donatelist = ans.adminDonatelist();
		
		model1.addAttribute("Nanumlist", Nanumlist);
		model2.addAttribute("Donatelist", Donatelist);
		
		return "admin/adminNanum";
		
		}catch(ListException e) {
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminNanum";
		}
	
	}
	
	//나눔두리 상세조회 
	@RequestMapping("adminNanumDetail.ad")
	public String adminNanumListDetail(HttpServletRequest request, HttpServletResponse response,
			Model model,Model model1,Model model2,Model model3,
			adminMember m,adminDirectList ad, adminFundingHistoryList ahf) {
	 
		int num = Integer.parseInt(request.getParameter("num"));
		adminMember NanumDetail;
		List<adminDirectList> directList;
		List<adminFundingHistoryList> fundingMoneyList;
		List<adminFundingHistoryList> fundingGoodsList;
		m.setMno(num);
		ad.setDh_Mno_give(num);
		ahf.setFh_Mno_Give(num);
		
		try {
			NanumDetail = ans.NanumDetail(m);
			directList = ans.directList(ad);
			fundingMoneyList = ans.fundingMoneyList(ahf);
			fundingGoodsList = ans.fundingGoodsList(ahf);
			model.addAttribute("NanumDetail", NanumDetail);
			model1.addAttribute("directList", directList);
			model2.addAttribute("fundingMoneyList", fundingMoneyList);
			model3.addAttribute("fundingGoodsList", fundingGoodsList);
			
			
			return "admin/adminNanumDetail";
			
		} catch (ListException e) {

			model.addAttribute("msg", e.getMessage());
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			model3.addAttribute("msg", e.getMessage());
			
			return "admin/adminNanumDetail";
		}
		
	}
	
	
	
	
	
}
