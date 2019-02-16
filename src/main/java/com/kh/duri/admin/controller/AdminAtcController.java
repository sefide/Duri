package com.kh.duri.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminAtcService;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;



@Controller
public class AdminAtcController {
	@Autowired
	private adminAtcService aas;




	//크라우드펀딩 승인목록
	@RequestMapping("adminCrowd.ad")
	public String adminCrowdList(Model model1, Model model2) {
		
		try {
			List<adminFundingList>adminMoneyFundingList = aas.adminMoneyCrowdList();
			List<adminFundingList>adminGoodsFundingList = aas.adminGoodsFundingList();
			
			model1.addAttribute("adminMoneyFundingList", adminMoneyFundingList);
			model2.addAttribute("adminGoodsFundingList", adminGoodsFundingList);
			
			return "admin/adminCrowd";
			
			}catch(ListException e) {
				model1.addAttribute("msg", e.getMessage());
				model2.addAttribute("msg", e.getMessage());
				
				return "admin/adminCrowd";
			}
		
	}
	//크라우드 승인글 상세페이지
	@RequestMapping("adminCrowdDetail.ad")
	public String adminCrowdDetail(HttpServletRequest request, HttpServletResponse response,Model model1,Model model2,adminMember m, adminFundingList f) {
		
		int fundingnum = Integer.parseInt(request.getParameter("fundingnum"));
		int membernum = Integer.parseInt(request.getParameter("membernum"));
		
		
		
		m.setMno(membernum);
		f.setfNo(fundingnum);
		
		adminMember CrowdMemInfo;
		adminFundingList CrowdFundInfo;
		
		try {
			CrowdMemInfo = aas.CrowdMemInfoDetail(m);
			CrowdFundInfo = aas.CrowdFundInfoDetail(f);
			
			model1.addAttribute("CrowdMemInfo", CrowdMemInfo);
			model2.addAttribute("CrowdFundInfo", CrowdFundInfo);
			
			return "admin/adminCrowdDetail";
			
		} catch (ListException e) {

			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminCrowdDetail";
		}
		
		
	}
	
	
	
	@RequestMapping("adminMain.ad")
	public String adminMain() {
		return "admin/adminMain";
	}

	
	
	
}
