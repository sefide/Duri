package com.kh.duri.Nanummember.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.service.NanumMemberService;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.Pagination;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;


@Controller
public class NanumController {
	@Autowired
	private NanumMemberService ns;
	
	
	@RequestMapping("total.nanum")
	public String Total1() {
		return "Nanummember/totalMain";
	}
	@RequestMapping("main.nanum")
	public String Total2() {
		return "Nanummember/nanumMain";
	}
	
	// 나눔두리 마이페이지()
	@RequestMapping("mypage.nanum")
	public String selectCloudList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1; // 진행중 금액 크라우드 펀딩
		int currentPage2 = 1;	// 종료된 금액 크라우드
		int currentPage3 = 1; //진행중 물품 크라우드
		int currentPage4= 1;  //종료된 물품 크라우드
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}		
		if(request.getParameter("currentPage2") != null) {
			currentPage2 = Integer.parseInt(request.getParameter("currentPage2"));
		}	
		if(request.getParameter("currentPage3") != null) {
			currentPage3 = Integer.parseInt(request.getParameter("currentPage3"));
		}	
		if(request.getParameter("currentPage4") != null) {
			currentPage4 = Integer.parseInt(request.getParameter("currentPage4"));
		}	
		try {
			int MoneyCloudCount = ns.getMoneyCloundListCount(m);
			int EndMoneyCloudCount = ns.getEndMoneyCloundListCount2(m);	
			int ItemCloudCount = ns.getItemCloundListCount(m);
			PageInfo pi = Pagination.getPageInfo(currentPage, MoneyCloudCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, EndMoneyCloudCount);	
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, ItemCloudCount);
			List<Funding> MoneyList = ns.selectMoneyCloud(m,pi);
			List<Funding> EndMoneyList = ns.selectMoneyCloud2(m,pi2);	
			List<Funding> ItemList = ns.selectItemCloud(m,pi3);
			model.addAttribute("MoneyList",MoneyList);
			model.addAttribute("pi",pi);
			model.addAttribute("EndMoneyList",EndMoneyList);
			model.addAttribute("pi2",pi2);	
			model.addAttribute("ItemList",ItemList);
			model.addAttribute("pi3",pi3);	
			return "Nanummember/mypage/mypage";			
		} catch (NanumException e) {
			model.addAttribute("msg", e.getMessage());
			return "Nanummember/mypage/mypage";
		}		
	}
	
	//물품 크라우드 펀딩 조회 - 진행 (@ResponseBody를 이용한 ajax)
	@RequestMapping("ItemClound.nanum")
	public @ResponseBody String selectItemList(@RequestParam int mno, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("ajax mno: "+mno);
		
		return "Nanummember/mypage/mypage_fund";	
	}
		
	//정기 후원 조회
	@RequestMapping("mypageFund.nanum")
	public String selectFundList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		int currentPage2 = 1;		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		if(request.getParameter("currentPage2") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage2"));
		}
		try {
			int listCount = ns.getDirectFundListCount(m);
			int listCount2 = ns.getDirectFundListCount2(m);			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, listCount2);			
			List<SelectDirectFund> dfList = ns.selectDirectFund(m,pi);
			List<SelectDirectFund> dfList2 = ns.selectDirectFund2(m,pi2);
			model.addAttribute("dfList",dfList);
			model.addAttribute("pi",pi);
			model.addAttribute("dfList2",dfList2);
			model.addAttribute("pi2",pi2);
			return "Nanummember/mypage/mypage_fund";
		} catch (NanumException e) {			
			e.printStackTrace();
			return "Nanummember/mypage/mypage_fund";
		}
	}
	
	//감사편지 조회 (정기 - 진행/ 크라우드 - 금액)
	@RequestMapping("mypageLetter.nanum")
	public String selectLetterList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		int currentPage2 = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		if(request.getParameter("currentPage2") != null) {
			currentPage2 = Integer.parseInt(request.getParameter("currentPage2"));
		}
		try {
			int listCount = ns.getDirectLetterListCount(m);
			int listCount2 = ns.getMoneyCloudLetterListCount(m);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, listCount2);
			List<Letter> dlList = ns.selectDirectLetter(m,pi);
			List<Letter> mclList = ns.selectMoneyCloudLetter(m,pi2);
			model.addAttribute("dlList",dlList);
			model.addAttribute("pi",pi);
			model.addAttribute("mclList",mclList);
			model.addAttribute("pi2",pi2);
			return "Nanummember/mypage/mypage_letter";
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/mypage/mypage_letter";
		}
		
		
	}	
	@RequestMapping("mypageLetterDetail.nanum")
	public String Total11() {
		return "Nanummember/mypage/mypage_letterDetail";
	}
	
	@RequestMapping("mypageReceipt.nanum")
	public String Total6() {
		return "Nanummember/mypage/mypage_receipt";
	}
	////찜한 후원 조회 (정기 / 크라우드 - 금액)
	@RequestMapping("mypageLikefund.nanum")
	public String selectLikeFundList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		int currentPage2 = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		if(request.getParameter("currentPage2") != null) {
			currentPage2 = Integer.parseInt(request.getParameter("currentPage2"));
		}
		try {
			int listCount = ns.getLikeDirectListCount(m);
			int listCount2 = ns.getLikeMoneyCloudListCount(m);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, listCount2);
			List<FundInterest> dfList = ns.selectLikeDirect(m,pi);
			List<FundInterest> mclList = ns.selectLikeMoneyCloud(m,pi2);
			model.addAttribute("dfList",dfList);
			model.addAttribute("pi",pi);
			model.addAttribute("mclList",mclList);
			model.addAttribute("pi2",pi2);
			System.out.println("mclList"+mclList);
			return "Nanummember/mypage/mypage_likefund";
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/mypage/mypage_likefund";
		}
		
		
		
	}
	
	@RequestMapping("QnAList.nanum")
	public String Total8() {
		return "Nanummember/QnA_list";
	}
	
	@RequestMapping("QnAInsert.nanum")
	public String Total9() {
		return "Nanummember/QnA_insert";
	}
	
	@RequestMapping("QnADetail.nanum")
	public String Total10() {
		return "Nanummember/QnA_detail";
	}
	
	@RequestMapping("updateInfo.nanum")
	public String Total12() {
		return "Nanummember/mypage/mypage_updateInfo";
	}
	
	
}
