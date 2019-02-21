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
import com.kh.duri.admin.model.vo.adminQnA;



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
	//크라우드 금액 승인글 상세페이지
	@RequestMapping("adminCrowdDetailMoney.ad")
	public String adminCrowdDetailMoney(HttpServletRequest request, HttpServletResponse response,Model model1,Model model2,adminMember m, adminFundingList f) {
		
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
			
			return "admin/adminCrowdDetailMoney";
			
		} catch (ListException e) {

			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminCrowdDetailMoney";
		}
		
		
	}
	//크라우드 물품 승인글 상세페이지
	@RequestMapping("adminCrowdDetailGoods.ad")
	public String adminCrowdDetailGoods(HttpServletRequest request, HttpServletResponse response,Model model1,Model model2,adminMember m, adminFundingList f) {
		
		int fundingnum = Integer.parseInt(request.getParameter("fundingnum"));
		int membernum = Integer.parseInt(request.getParameter("membernum"));
		
		
		
		m.setMno(membernum);
		f.setfNo(fundingnum);
		
		adminMember CrowdMemGoodsInfo;
		List<adminFundingList> CrowdFundGoodsInfo;
		
		try {
			CrowdMemGoodsInfo = aas.CrowdMemInfoDetail(m);
			CrowdFundGoodsInfo = aas.CrowdFundGoodsInfo(f);
			
			model1.addAttribute("CrowdMemGoodsInfo", CrowdMemGoodsInfo);
			model2.addAttribute("CrowdFundGoodsInfo", CrowdFundGoodsInfo);
			
			return "admin/adminCrowdDetailGoods";
			
		} catch (ListException e) {
			
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminCrowdDetailGoods";
		}
		
		
	}
	
	
	//크라우드 펀딩 반려 버튼
	@RequestMapping("adminCrowdDeny.ad")
	public String adminCrowdDeny(HttpServletRequest request, HttpServletResponse response,adminFundingList af) {
		
		int funum = Integer.parseInt(request.getParameter("funum"));
		String term = request.getParameter("term");
		af.setfNo(funum);
		af.setfLeftDay(term);
		
			int result = aas.adminCrowdDeny(af);
			return "redirect:adminCrowd.ad";
			
		
			
		
		
	}
	//크라우드 펀딩 승인 버튼
	@RequestMapping("adminCrowdApprove.ad")
	public String adminCrowdApprove(HttpServletRequest request, HttpServletResponse response,adminFundingList af) {
		int funum = Integer.parseInt(request.getParameter("funum"));
		String term = request.getParameter("term");
		
		af.setfNo(funum);
		af.setfLeftDay(term);
		
		
			int result = aas.adminCrowdApprove(af);
			return "redirect:adminCrowd.ad";
			
			
		
	}
	
	//관리자 메인페이지
	@RequestMapping("adminMain.ad")
	public String adminMain() {
		return "admin/adminMain";
	}
	
	//관리자 행복두리 Q&A 목록
	@RequestMapping("adminQnA.ad")
	public String adminQnAList(Model model) {  
		
		try {
			List<adminQnA>adminQnAList = aas.adminQnAList();
			
			model.addAttribute("adminQnAList", adminQnAList);
			
			return "admin/adminQnA";
			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());
				
				return "admin/adminQnA";
			}
		
		
	}
	//관리자 행복두리 Q&A상세보기
	@RequestMapping("adminQnADetail.ad")
	public String adminQnADetail(HttpServletRequest request, HttpServletResponse response,Model model,adminQnA q) {
		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		int Qnanum = Integer.parseInt(request.getParameter("Qnanum"));
		
	
		
		q.setQ_Mno(Mnonum);
		q.setqNo(Qnanum);
		
		adminQnA adminQnADetail;
		
		try {
			adminQnADetail = aas.adminQnADetail(q);
			
			model.addAttribute("adminQnADetail", adminQnADetail);
			return "admin/adminQnADetail";
			
		} catch (ListException e) {
			
			model.addAttribute("msg", e.getMessage());
			
			return "admin/adminQnADetail";
		}
		
	
	}
	
	//Q&A 답변하기 버튼 
	@RequestMapping("adminAnswer.ad")
	public String adminAnswer(HttpServletRequest request, HttpServletResponse response,adminQnA q) {
		
		String answer = request.getParameter("answer");
		int num = Integer.parseInt(request.getParameter("num"));
		
		q.setqNo(num);
		q.setqAnswer(answer);
		
		
		
			int result = aas.adminAnswer(q);
			return "redirect:adminQnA.ad";
			
			
		
	}
	
	
}
