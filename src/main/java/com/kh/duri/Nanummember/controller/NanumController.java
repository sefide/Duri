package com.kh.duri.Nanummember.controller;

import static org.hamcrest.CoreMatchers.is;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.service.NanumMemberService;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.FundItem;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.Pagination;
import com.kh.duri.Nanummember.model.vo.QnA;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;


@Controller
public class NanumController {
	@Autowired
	private NanumMemberService ns;
	
		@Autowired
	 private PasswordEncoder passwordEncoder;
	 
	@RequestMapping("total.nanum")
	public String Total1() {
		return "Nanummember/totalMain";
	}
	
	
	/* ----------------------나눔두리 회원정보 수정 ----------------------*/
	//회원정보 수정 들어오기
	@RequestMapping("updateInfo.nanum")
	public String Total12(Model model, HttpServletRequest request, HttpServletResponse response) {			
		return "Nanummember/mypage/mypage_updateInfo";
	}
	
	//비밀번호 확인
	@RequestMapping("checkPwd.nanum")
	public String Total13(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		String mpwd = m.getMpwd(); //비교할 DB의 인코딩 된 암호
		String pwd = request.getParameter("pwd"); //인코딩하고 일치시킬 원시 비번
		if( passwordEncoder.matches(pwd, mpwd) == true  ) { // 비밀번호 일치시 
			return "Nanummember/mypage/mypage_updateDetail";
		 }else { // 비밀번호 불일치
			 return "Nanummember/mypage/mypage_updateInfo";
		  } 
	}
	//회원정보 수정 완료!
		@RequestMapping("updateComplete.nanum")
		public String updateInfo(Model model, HttpServletRequest request, HttpServletResponse response) {	
			Member m = (Member)request.getSession().getAttribute("loginUser2");
			String mNick = request.getParameter("mNick");			
			String mPwd = request.getParameter("mPwd"); 
			String mPhone = request.getParameter("mPhone"); 
			System.out.println("mNick"+mNick);
			System.out.println("mPwd"+mPwd);
			System.out.println("mPhone"+mPhone);
			return "Nanummember/mypage/mypage_updateInfo";
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
			PageInfo pi = Pagination.getPageInfo(currentPage, moneyCount, 3);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, moneyCount, 3);
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, itemCount, 3);
			PageInfo pi4 = Pagination.getPageInfo(currentPage4, endItemCount, 3);
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
			//물품을 가져와 보자!
			HashMap<String,FundItem> ingItem = new HashMap<String,FundItem>(); //진행중인 물품 크라우드 펀딩 - 물품 리스트
			HashMap<String,FundItem> endItem = new HashMap<String,FundItem>(); //종료된 물품 크라우드 펀딩 - 물품 리스트			
			model.addAttribute("moneyList",moneyList);
			model.addAttribute("pi",pi);
			model.addAttribute("endMoneyList",endMoneyList);
			model.addAttribute("pi2",pi2);	
			model.addAttribute("itemList",itemList);
			model.addAttribute("pi3",pi3);	
			model.addAttribute("endItemList",endItemList);
			model.addAttribute("pi4",pi4);		
			return "Nanummember/mypage/mypage";	
		}catch (NanumException e) {
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
			PageInfo pi = Pagination.getPageInfo(currentPage, fundIng, 3);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, fundEnd, 3);		
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
			PageInfo pi = Pagination.getPageInfo(currentPage, fundLetterCount, 3); 
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, endFundLetterCount, 3); 
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, moneyCloudLetterCount, 3);
			PageInfo pi4 = Pagination.getPageInfo(currentPage4, itemCloudLetterCount, 3);
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
		
		try {
			List<Letter> letterDetailList = ns.selectLetterDetailList(leNo);
			model.addAttribute("letterDetailList",letterDetailList);		
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
		int currentPage = 1;
		int currentPage2 = 1; 
		int currentPage3 = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		if(request.getParameter("currentPage2") != null) {
			currentPage2 = Integer.parseInt(request.getParameter("currentPage2"));
		}
		if(request.getParameter("currentPage3") != null) {
			currentPage3 = Integer.parseInt(request.getParameter("currentPage3"));
		}
		try {
			HashMap<String, Integer> likeListCount = new HashMap<>();			
			likeListCount = ns.getLikeListCount(m);	 //감사편지 개수 가져오기 	 
			int likeDirectCount = likeListCount.get("likeDirectCount");
			int likeMoneyCount = likeListCount.get("likeMoneyCount");		
			int likeItemCount = likeListCount.get("likeItemCount");
			PageInfo pi = Pagination.getPageInfo(currentPage, likeDirectCount, 3);
			PageInfo pi2 = Pagination.getPageInfo(currentPage2, likeMoneyCount, 3);
			PageInfo pi3 = Pagination.getPageInfo(currentPage3, likeItemCount, 3);
			HashMap<String, PageInfo> paging = new HashMap<>();
			paging.put("pi", pi);
			paging.put("pi2", pi2);
			paging.put("pi3", pi3);
			HashMap<String, List<FundInterest>> likeFundList =  new HashMap<String, List<FundInterest>>();
			likeFundList = ns.selectLikeFundList(m,paging);	//찜한 후원가져오기 		
			List<FundInterest> likeDirectList = likeFundList.get("likeDirectList");
			List<FundInterest> likeMoneyList = likeFundList.get("likeMoneyList");
			List<FundInterest> likeItemList = likeFundList.get("likeItemList");
			model.addAttribute("likeDirectList",likeDirectList);
			model.addAttribute("pi",pi);
			model.addAttribute("likeMoneyList",likeMoneyList);
			model.addAttribute("pi2",pi2);
			model.addAttribute("likeItemList",likeItemList);
			model.addAttribute("pi3",pi3);
			
			return "Nanummember/mypage/mypage_likefund";
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/mypage/mypage_likefund";
		}		
	}
	
	/* ----------------------나눔두리 QnA ----------------------*/
	//QnA 목록 조회
	@RequestMapping("QnAList.nanum")
	public String selectQnaList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} 	 		
		try {
			int QnAListCount = ns.getQnAListCount(m);
			PageInfo pi = Pagination.getPageInfo(currentPage, QnAListCount, 10);
			List<QnA> QnAList =  ns.selectQnAList(m,pi);	//QnA 목록 가져오기 				
			model.addAttribute("QnAList",QnAList);
			model.addAttribute("pi",pi);
			return "Nanummember/QnA_list";			
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/QnA_list";
		}
	}
	//QnA 상세 조회
	@RequestMapping("QnADetail.nanum")
	public String selectQnADetail(Model model, HttpServletRequest request, HttpServletResponse response) {
		int qNo = Integer.parseInt(request.getParameter("qNo"));	
		List<QnA> QnADetail;
		try {
			QnADetail = ns.selectQnADetail(qNo);
			model.addAttribute("QnADetail", QnADetail);
			return "Nanummember/QnA_detail";
		} catch (NanumException e) {
			e.printStackTrace();
			return "Nanummember/QnA_detail";
		}
	}
	//QnA 등록 폼으로 이동
	@RequestMapping("QnAInsertForm.nanum")
	public String goQnAInsert() {			
			return "Nanummember/QnA_insert";
	}
	
	//QnA 등록 후 리스트로 리다이렉트
	@RequestMapping("QnAInsert.nanum")
	public String insertQnA(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		int mno = m.getMno();		
		String qTitle = request.getParameter("qTitle");
		String qContent = request.getParameter("qContent");
		//QnA입력
		QnA q = new QnA();
		q.setQ_mNo(mno);
		q.setqTitle(qTitle);
		q.setqContent(qContent);
		try {
			int result = ns.insertQnA(q);
			return "redirect:QnAList.nanum";
		} catch (NanumException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "redirect:QnAList.nanum";
		}
	}
	//QnA 삭제
	@RequestMapping("deleteQnA.nanum")
	public String deleteQnA(Model model, HttpServletRequest request, HttpServletResponse response) {
		int qNo = Integer.parseInt(request.getParameter("qNo"));
		try {
			int result = ns.deleteQnA(qNo);
			return "redirect:QnAList.nanum";
		} catch (NanumException e) {
			e.printStackTrace();
			return "redirect:QnAList.nanum";
		}
	}
	

}
