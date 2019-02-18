package com.kh.duri.Nanummember.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	/* ----------------------나눔두리 마이페이지 ----------------------*/
	// 크라우드 펀딩 조회
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
			HashMap<String, Integer> cloudCount = new HashMap<>();
			HashMap<String, List<Funding>> cloudList =  new HashMap<String, List<Funding>>();			
			cloudCount = ns.getCloudCont(m);	 //크라우드 펀딩 개수 가져오기 		
			int moneyCount = cloudCount.get("moneyCount");
			int endMoneyCount = cloudCount.get("endMoneyCount");
			int itemCount = cloudCount.get("itemCount");
			int endItemCount = cloudCount.get("endItemCount");
			//페이징			
			PageInfo pi = Pagination.getPageInfo(currentPage, moneyCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, moneyCount);
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, itemCount);
			PageInfo pi4 = Pagination.getPageInfo(currentPage4, endItemCount);
			HashMap<String, PageInfo> paging = new HashMap<>();
			paging.put("pi", pi);
			paging.put("pi2", pi2);
			paging.put("pi3", pi3);
			paging.put("pi4", pi4);			
			cloudList = ns.selectCloudList(m,paging);		//크라우드 펀딩 가져오기	
			List<Funding>moneyList = cloudList.get("moneyList");
			List<Funding>endMoneyList = cloudList.get("endMoneyList");
			List<Funding>itemList = cloudList.get("itemList");
			List<Funding>endItemList = cloudList.get("endItemList");
			model.addAttribute("moneyList",moneyList);
			model.addAttribute("pi",pi);
			model.addAttribute("endMoneyList",endMoneyList);
			model.addAttribute("pi2",pi2);	
			model.addAttribute("itemList",itemList);
			model.addAttribute("pi3",pi3);	
			model.addAttribute("endItemList",endItemList);
			model.addAttribute("pi4",pi4);		
			return "Nanummember/mypage/mypage";			
		} catch (NanumException e) {
			model.addAttribute("msg", e.getMessage());
			return "Nanummember/mypage/mypage";
		}		
		
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
			HashMap<String, Integer> fundCount = new HashMap<>();			
			fundCount = ns.getFundCount(m);	 //정기후원 개수 가져오기 	
			int fundIng = fundCount.get("fundIng"); 
			int fundEnd = fundCount.get("fundEnd"); 
			PageInfo pi = Pagination.getPageInfo(currentPage, fundIng);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, fundEnd);		
			HashMap<String, PageInfo> paging = new HashMap<>();
			paging.put("pi", pi);
			paging.put("pi2", pi2);
			HashMap<String, List<SelectDirectFund>> fundList =  new HashMap<String, List<SelectDirectFund>>();
			fundList = ns.selectFundList(m,paging);	//정기후원 가져오기 
			List<SelectDirectFund> fundIngList = fundList.get("fundIngList"); 
			List<SelectDirectFund> fundEndList = fundList.get("fundEndList"); 
			model.addAttribute("fundIngList",fundIngList);
			model.addAttribute("pi",pi);
			model.addAttribute("fundEndList",fundEndList);
			model.addAttribute("pi2",pi2);
			return "Nanummember/mypage/mypage_fund";
		} catch (NanumException e) {			
			e.printStackTrace();
			return "Nanummember/mypage/mypage_fund";
		}
	}
	
	//감사편지 조회 
	@RequestMapping("mypageLetter.nanum")
	public String selectLetterList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1; // 정기 - 진행 편지
		int currentPage2 = 1; // 정기 - 종료 편지 
		int currentPage3 = 1; // 금액 크라우드 편지
		int currentPage4 = 1; //물품 크라우드
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
			HashMap<String, Integer> letterCount = new HashMap<>();			
			letterCount = ns.getletterCount(m);	 //감사편지 개수 가져오기 	
			int fundLetterCount = letterCount.get("fundLetterCount");
			int endFundLetterCount = letterCount.get("endFundLetterCount");
			int moneyCloudLetterCount = letterCount.get("moneyCloudLetterCount");
			int itemCloudLetterCount = letterCount.get("itemCloudLetterCount");
			PageInfo pi = Pagination.getPageInfo(currentPage, fundLetterCount); 
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, endFundLetterCount); 
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, moneyCloudLetterCount);
			PageInfo pi4 = Pagination.getPageInfo(currentPage4, itemCloudLetterCount);
			HashMap<String, PageInfo> paging = new HashMap<>();
			paging.put("pi", pi);
			paging.put("pi2", pi2);
			paging.put("pi3", pi3);
			paging.put("pi4", pi4);
			HashMap<String, List<Letter>> letterList =  new HashMap<String, List<Letter>>();
			letterList = ns.selectLetterList(m,paging);	//감사 가져오기 			
			List<Letter> fundLetter = letterList.get("fundLetter");
			List<Letter> endFundLetter = letterList.get("endFundLetter");
			List<Letter> moneyCloudLetter = letterList.get("moneyCloudLetter");
			List<Letter> itemCloudLetter = letterList.get("itemCloudLetter");			
			model.addAttribute("fundLetter",fundLetter);
			model.addAttribute("pi",pi);
			model.addAttribute("endFundLetter",endFundLetter);
			model.addAttribute("pi2",pi2);			
			model.addAttribute("moneyCloudLetter",moneyCloudLetter);
			model.addAttribute("pi3",pi3);
			model.addAttribute("itemCloudLetter",itemCloudLetter);
			model.addAttribute("pi4",pi4);	
			return "Nanummember/mypage/mypage_letter";
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/mypage/mypage_letter";
		}
		
		
	}	

	//감사편지 상세조회
	@RequestMapping("mypageLetterDetail.nanum")
	public String Total11(Model model, HttpServletRequest request, HttpServletResponse response) {
		int leNo = Integer.parseInt(request.getParameter("leNo"));
		System.out.println("leNo"+leNo);
		
		try {
			List<Letter> letterDetailList = ns.selectLetterDetailList(leNo);
			model.addAttribute("letterDetailList",letterDetailList);		
			System.out.println("letterDetailList"+letterDetailList);
			return "Nanummember/mypage/mypage_letterDetail";
			
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/mypage/mypage_letterDetail";
		}
	}
	
	//찜한 후원 조회
	@RequestMapping("mypageLikefund.nanum")
	public String selectLikeFundList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1; //정기
		int currentPage2 = 1; //금액
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		if(request.getParameter("currentPage2") != null) {
			currentPage2 = Integer.parseInt(request.getParameter("currentPage2"));
		}
		try {
			HashMap<String, Integer> likeListCount = new HashMap<>();			
			likeListCount = ns.getLikeListCount(m);	 //감사편지 개수 가져오기 	 likeDirectCount
			int likeDirectCount = likeListCount.get("likeDirectCount");
			int likeMoneyCount = likeListCount.get("likeMoneyCount");
			
			PageInfo pi = Pagination.getPageInfo(currentPage, likeDirectCount);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, likeMoneyCount);
			
			/*List<FundInterest> dfList = ns.selectLikeDirect(m,pi);
			List<FundInterest> mclList = ns.selectLikeMoneyCloud(m,pi2);
			model.addAttribute("dfList",dfList);
			model.addAttribute("pi",pi);
			model.addAttribute("mclList",mclList);
			model.addAttribute("pi2",pi2);
			System.out.println("mclList"+mclList);*/
			
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
	
/*	@RequestMapping("mypageReceipt.nanum")
	public String Total6() {
		return "Nanummember/mypage/mypage_receipt";
	}*/
	
}
