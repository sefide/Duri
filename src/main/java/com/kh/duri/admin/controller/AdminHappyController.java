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
import com.kh.duri.admin.model.vo.Notice;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;


@Controller
public class AdminHappyController {

	@Autowired
	private adminHappyService ahs;



	
		
	
	//행복두리 승인목록 조회
	@RequestMapping("adminHappyAcc.ad")
	public String adminHappyAccList(Model model,Model model1,Model model2,Model model3) {
		List<adminMember>HappyNewList ; //신규목록
		List<adminMember>HappyMprList ; //자기소개 갱신 목록
		List<adminMember>HappyAttachList ; //증빙서류 갱신 목록
		List<adminMember>HappyNotAttachList ; //증빙서류 비갱신 목록
		try {
			HappyNewList = ahs.adminHappyNewList();
			HappyMprList = ahs.adminHappyMprList();
			HappyAttachList = ahs.adminHappyAttachList();
			HappyNotAttachList = ahs.adminHappyNotAttachList();
			
			model.addAttribute("HappyNewList", HappyNewList);
			model1.addAttribute("HappyMprList", HappyMprList);
			model2.addAttribute("HappyAttachList", HappyAttachList);
			model3.addAttribute("HappyNotAttachList", HappyNotAttachList);
			
			return "admin/adminHappyAcc";
			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());
				model1.addAttribute("msg", e.getMessage());
				model2.addAttribute("msg", e.getMessage());
				model3.addAttribute("msg", e.getMessage());
				
				return "admin/adminHappyAcc";
			}
		
	}
	//행복두리 승인 상세페이지[자기소개 갱신/증빙서류갱신/증빙서류비갱신]
	@RequestMapping("adminHappyAccDetail.ad")
	public String adminHappyAccDetailList(HttpServletRequest request, HttpServletResponse response,Model model,Model model1,Model model2,Model model3,
			adminMember m,adminDirectList ad, adminFundingHistoryList ahf) {
		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		String Statusnum = request.getParameter("Statusnum");
		String num = request.getParameter("num");
		
		List<adminDirectList> directList;
		List<adminFundingHistoryList> fundingMoneyList;
		List<adminFundingHistoryList> fundingGoodsList;
		m.setMno(Mnonum);
		m.setmTakeStatus(Statusnum);
		m.setNumStatus(num);
		ad.setDh_Mno_take(Mnonum);
		ahf.setfWriter(Mnonum);
		
		List<adminMember> HappyAccDetail;
		
		try {
			HappyAccDetail = ahs.HappyAccDetail(m);
			directList = ahs.HappydirectList(ad);
			fundingMoneyList = ahs.HappyfundingMoneyList(ahf);
			fundingGoodsList = ahs.HappyfundingGoodsList(ahf);
			
			model.addAttribute("HappyAccDetail", HappyAccDetail);
			model1.addAttribute("directList", directList);
			model2.addAttribute("fundingMoneyList", fundingMoneyList);
			model3.addAttribute("fundingGoodsList", fundingGoodsList);
			
			
			return "admin/adminHappyAccDetail";
			
		} catch (ListException e) {
			model.addAttribute("msg", e.getMessage());
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			model3.addAttribute("msg", e.getMessage());
			
			return "admin/adminHappyAccDetail";
		}
		
		
	}
	
	
	//행복두리 정상회원 목록 조회
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
	public String adminHappyDetailList(HttpServletRequest request, HttpServletResponse response,Model model,Model model1,Model model2,Model model3,
			adminMember m,adminDirectList ad, adminFundingHistoryList ahf) {
		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		String Statusnum = request.getParameter("Statusnum");
		List<adminDirectList> directList;
		List<adminFundingHistoryList> fundingMoneyList;
		List<adminFundingHistoryList> fundingGoodsList;
		m.setMno(Mnonum);
		m.setmTakeStatus(Statusnum);
		ad.setDh_Mno_take(Mnonum);
		ahf.setfWriter(Mnonum);
		
		adminMember HappyDetail;
		try {
			HappyDetail = ahs.HappyDetail(m);
			directList = ahs.HappydirectList(ad);
			fundingMoneyList = ahs.HappyfundingMoneyList(ahf);
			fundingGoodsList = ahs.HappyfundingGoodsList(ahf);
			
			model.addAttribute("HappyDetail", HappyDetail);
			model1.addAttribute("directList", directList);
			model2.addAttribute("fundingMoneyList", fundingMoneyList);
			model3.addAttribute("fundingGoodsList", fundingGoodsList);
			
			
			return "admin/adminHappyDetail";
			
		} catch (ListException e) {
			model.addAttribute("msg", e.getMessage());
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			model3.addAttribute("msg", e.getMessage());
			return "admin/adminHappyDetail";
		}
		
		
		
		
		
	}
	
	
	//신규회원 승인 버튼
		@RequestMapping("adminNewHappyAgree.ad")
		public String adminNewHappyAgree(HttpServletRequest request, HttpServletResponse response,adminMember m) {
			
			int newno = Integer.parseInt(request.getParameter("newno"));
			m.setMno(newno);
			m.setA_mno(newno);
				int result1 = ahs.adminNewHappyMemberAgree(m);
				int result2 = ahs.adminNewHappyAttachAgree(m);
				
				
				return "redirect:adminHappyAcc.ad";
			
		}
		//신규회원 반려 버튼
		@RequestMapping("adminNewHappyRefuse.ad")
		public String adminNewHappyRefuse(HttpServletRequest request, HttpServletResponse response,adminMember m,Notice n) {
			
			int newno = Integer.parseInt(request.getParameter("number"));
			String textContent = request.getParameter("textContent");
			String type = request.getParameter("type");
			m.setMno(newno);
			m.setA_mno(newno);
			n.setN_mno(newno);
			n.setNcontents(textContent);
			n.setNtype(type);
			
			int result1 = ahs.adminNewHappyMemberRefuse(m);
			int result2 = ahs.adminNewHappyAttachRefuse(m);
			int result3 = ahs.adminHappyNoticeRefuse(n);
			
			
			return "redirect:adminHappyAcc.ad";
			
		}
		
		//자기소개 갱신 회원 승인 버튼
		@RequestMapping("adminMprHappyAgree.ad")
		public String adminMprHappyAgree(HttpServletRequest request, HttpServletResponse response,adminMember m) {
			
			int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
			String Statusnum = request.getParameter("Statusnum");
			String num = request.getParameter("num");
			
			m.setMno(Mnonum);
			int result = ahs.adminMprHappyAgree(m);
			
			
			return "redirect:adminHappyAccDetail.ad?Mnonum="+Mnonum+"&Statusnum="+Statusnum+"&num="+num;
			
		}
	
		//자기소개 갱신 회원 반려 버튼
		@RequestMapping("adminMprHappyRefuse.ad")
		public String adminMprHappyRefuse(HttpServletRequest request, HttpServletResponse response,adminMember m,Notice n) {
			
			int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
			String Statusnum = request.getParameter("Statusnum");
			String num = request.getParameter("num");
			String textContent = request.getParameter("textContent");
			String type = request.getParameter("type");
			
			m.setMno(Mnonum);
			n.setN_mno(Mnonum);
			n.setNcontents(textContent);
			n.setNtype(type);
			
			int result1 = ahs.adminMprHappyRefuse(m);
			int result2 = ahs.adminMprHappyRefuseMsg(n);
			
			
			return "redirect:adminHappyAccDetail.ad?Mnonum="+Mnonum+"&Statusnum="+Statusnum+"&num="+num;
			
		}
		
		//증빙서류 갱신 회원 승인 버튼
		@RequestMapping("adminAttachHappyAgree.ad")
		public String adminAttachHappyAgree(HttpServletRequest request, HttpServletResponse response,adminMember m) {
			
			int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
			String changName =request.getParameter("changName");
			m.setMno(Mnonum);
			m.setA_mno(Mnonum);
			m.setAttachName(changName);

			int result1 = ahs.adminAttachHappyMemberAgree(m);
			int result2 = ahs.adminAttachHappyAttach1Agree(m);
			int result3 = ahs.adminAttachHappyAttach2Agree(m);
			
			
			
			return "redirect:adminHappyAcc.ad";
			
		}
		//증빙서류 갱신 회원 반려 버튼
		@RequestMapping("adminAttachRefuse.ad")
		public String adminAttachRefuse(HttpServletRequest request, HttpServletResponse response,adminMember m,Notice n) {
			
			int Mnonum = Integer.parseInt(request.getParameter("number"));
			String textContent = request.getParameter("textContent");
			String type = request.getParameter("type");
			m.setA_mno(Mnonum);
			n.setN_mno(Mnonum);
			n.setNcontents(textContent);
			n.setNtype(type);
			
			int result1 = ahs.adminAttachRefuse(m);
			int result2 = ahs.adminHappyNoticeRefuse(n);
			
			
			
			return "redirect:adminHappyAcc.ad";
			
		}
		
	
		
	
	
}
