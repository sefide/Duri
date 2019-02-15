package com.kh.duri.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PaymentException;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.service.PaymentService;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Pagination;
import com.kh.duri.payment.model.vo.Payment;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;

	// 나눔두리 포인트 히스토리 페이지
	@RequestMapping("pointHistory.pm")
	public String pointHistory(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		try {
			int listCount = ps.selectPointListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Point> phList = ps.selectPointHistory(m, pi);
			
			/*for(Point i : phList) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("phList", phList);
			model.addAttribute("pi", pi);
			return "payment/point_history";
		} catch (PointHistoryException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/point_history";
		}
		
	}
	// 나눔두리 포인트 히스토리 기간별 검색 조회
	@RequestMapping("searchPointHistory.pm")
	public String searchPointHistory(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		String sm = request.getParameter("startMonth")+"-01";
		String em = request.getParameter("endMonth");
		//System.out.println("어허 " + em.substring(5, 7));
		if(em.substring(5, 7).equals("04") ||em.substring(5, 7).equals("06")||em.substring(5, 7).equals("09")||em.substring(5, 7).equals("11")) {
			em = em + "-30";
		}else if (em.substring(5, 7).equals("02")) {
			em = em + "-28";
		}else {
			em = em + "-31";
		}
		
		//System.out.println("startMonth : " + sm + "/ endMonth : " + em);
		m.setmPhone(sm); //startMonth
		m.setmAddress(em); // endMonth
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<Point> phList;
		try {
			int listCount = ps.selectSearchPointListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			System.out.println("Controller : endPage :"+ pi.getEndPage());
			phList = ps.searchPointHistory(m, pi);
			
			/*for(DonateReceipt i : dr) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("phList", phList);
			model.addAttribute("pi", pi);
			return "payment/point_history";
			
		} catch (PointHistoryException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/point_history";
		}
	   
	}
		
	// 나눔두리 기부금 영수증 발급내역 페이지
	@RequestMapping("donateReceipt.pm")
	public String donateReceipt(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		//System.out.println("세션에 저장된 회원번호 : " + m.getMno());
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<DonateReceipt> drList;
		try {
			int listCount = ps.selectReceiptListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			drList = ps.selectDonateReceiptHistory(m, pi);
			
			/*for(DonateReceipt i : dr) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("drList", drList);
			model.addAttribute("pi", pi);
			return "payment/donation_receipt";
			
		} catch (ReceiptException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/donation_receipt";
		}
	   
	}
	
	// 나눔두리 기부금 영수증 발급내역 기간별 검색 조회
	@RequestMapping("searchDonateReceipt.pm")
	public String searchDonateReceipt(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		String sm = request.getParameter("startMonth")+"-01";
		String em = request.getParameter("endMonth");
		System.out.println("어허 " + em.substring(5, 7));
		if(em.substring(5, 7).equals("04") ||em.substring(5, 7).equals("06")||em.substring(5, 7).equals("09")||em.substring(5, 7).equals("11")) {
			em = em + "-30";
		}else if (em.substring(5, 7).equals("02")) {
			em = em + "-28";
		}else {
			em = em + "-31";
		}
		
		//System.out.println("startMonth : " + sm + "/ endMonth : " + em);
		m.setmPhone(sm); //startMonth
		m.setmAddress(em); // endMonth
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<DonateReceipt> drList;
		try {
			int listCount = ps.selectSearchReceiptListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			drList = ps.searchDonateReceipt(m, pi);
			
			/*for(DonateReceipt i : dr) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("drList", drList);
			model.addAttribute("pi", pi);
			return "payment/donation_receipt";
			
		} catch (ReceiptException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/donation_receipt";
		}
	   
	}
	
	// 행복두리 포인트 환급목록 페이지
	@RequestMapping("pointReturnListHappy.pm")
	public String pointReturnHappyList(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser");
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
			int listCount = ps.selectListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Refund> rfList	= ps.selectRefundList(m, pi);
			
			/*for(Refund i : rfList) {
				System.out.println("내역 : "+ i);
			}*/

			model.addAttribute("rfList", rfList);
			model.addAttribute("pi", pi);
			return "payment/point_returnList_happy";
		} catch (RefundException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/point_returnList_happy";
		}
		
	}
	
	// 행복두리 포인트 환급페이지
	@RequestMapping("pointReturnHappy.pm")
	public String pointReturnHappy() {
	    return "payment/point_return_happy";
	}
	
	// 나눔,행복두리 - 포인트 환급 요청하기
	@RequestMapping("execPointReturnHappy.pm")
	public String execPointReturnHappy(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {
		Member m = null;
		String memberType = request.getParameter("memberType");
		System.out.println("memberType :" + memberType);
		if(memberType.equals("n")) {
			m = (Member) request.getSession().getAttribute("loginUser2");
		}else if(memberType.equals("h")){
			m  = (Member) request.getSession().getAttribute("loginUser");
		}else {
			return "redirect:pointReturnListHappy.pm";
		}
		System.out.println("m :" + m);
		String rValue = request.getParameter("returnValue");
		String rBank = request.getParameter("Bank");
		String[] rAccountArr = request.getParameterValues("returnAccount");
		String rName = request.getParameter("accountName");
		String rAccount = "";
		for(int i = 0; i < rAccountArr.length; i++) {
			
			if(i == 0) {
				rAccount += rAccountArr[i];
			}else {
				rAccount += "-"+rAccountArr[i];
			}
		}
		
		Refund r = new Refund();
		r.setrValue(rValue);
		r.setR_mNo(m.getMno());
		r.setrBank(rBank);
		r.setrAccount(rAccount);
		r.setrName(rName);
		
		System.out.println("controller : "+ r);
		try {
			Member loginUser = ps.insertRefund(r, m);
			
			// 포인트 변경된 회원 정보 세션에 업데이트 
			if(memberType.equals("n")) { // 나눔두리 
				session.setAttribute("loginUser2", loginUser);
				return "redirect:pointReturnList.pm";
			}else { // 행복두리
				session.setAttribute("loginUser", loginUser);
				return "redirect:pointReturnListHappy.pm";
			}
		} catch (RefundException e) {
			model.addAttribute("msg", e.getMessage());
			return "redirect:pointReturnListHappy.pm";
		}
		
	}
	
	// 나눔두리 포인트 환급목록 페이지
	@RequestMapping("pointReturnList.pm")
	public String pointReturnList(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
			int listCount = ps.selectListCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Refund> rfList	= ps.selectRefundList(m, pi);
			
			/*for(Refund i : rfList) {
				System.out.println("내역 : "+ i);
			}*/

			model.addAttribute("rfList", rfList);
			model.addAttribute("pi", pi);
			return "payment/point_returnList";
		} catch (RefundException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/point_returnList";
		}
	    
	}
	
	// 나눔두리 포인트 환급페이지
	@RequestMapping("pointReturn.pm")
	public String pointReturn() {
	    return "payment/point_return";
	}
	
	// 나눔두리 포인트 충전페이지
	@RequestMapping("pointCharge.pm")
	public String pointCharge() {
	    return "payment/point_charge"; 
	}

	// 나눔두리 - 포인트 충전 결제하기
	@RequestMapping("pointChargePayment.pm")
	public String pointChargePayment(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {
		String pyPrice = request.getParameter("price");
		String pyCardNum = request.getParameter("apply");
		String py_mNo = request.getParameter("mno");
		String value = request.getParameter("value");
		
		System.out.println("pyPrice : " + pyPrice);
		System.out.println("pyCardNum : " + pyCardNum);
		System.out.println("py_mNo : " + py_mNo);
		System.out.println("value : " + value);
		
		if(pyCardNum.equals("")) {
			pyCardNum = "kakaopay";
		}
		
		Payment py = new Payment();
		py.setPy_mNo(Integer.parseInt(py_mNo));
		py.setPyPrice(value);
		py.setPyCardNum(pyCardNum);
		
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		
		Member loginUser;
		try {
			loginUser = ps.insertPayment(m, py);
			
			session.setAttribute("loginUser2", loginUser);
			model.addAttribute("msg", "포인트 충전이 완료되었습니다.");
		    return "payment/pay_success"; 
		    
		} catch (PaymentException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/pay_success"; 
		}
		
		
	}
	
	// 정기후원 결제페이지
	@RequestMapping("directFund.pm")
	public String directFund(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser2");
		Member takeMember = new Member();
		String mno_take = request.getParameter("mno_take");
		String mnickname_take = request.getParameter("mnickname_take");
		String maddress_take = request.getParameter("maddress_take");
		String valueType = request.getParameter("valueType");
		
		takeMember.setMno(Integer.parseInt(mno_take));
		takeMember.setmNickName(mnickname_take);
		takeMember.setmAddress(maddress_take);
		
		System.out.println("후원대상자 : "+ takeMember);
		System.out.println("후원자 번호 : "+ loginUser.getMno());
		System.out.println("후원타입: "+ valueType);
		
		model.addAttribute("valueType", valueType);
		model.addAttribute("takeMember", takeMember);
	    return "payment/pay_directFund";
	}
	
	@RequestMapping("directFundGetBilling.pm")
	public @ResponseBody String directFundGetBilling(@RequestParam String customer_uid, HttpServletRequest request, HttpServletResponse response) {
		//String customer_uid  = request.getParameter("customer_uid");
		System.out.println("customer_uid : "+ customer_uid);
		return null;
		
		
	}
	
	
	// 물품 후원 결제페이지
	@RequestMapping("fundItem.pm")
	public String fundItem() {
	    return "payment/pay_fundItem";
	}

	// 금액 후원 결제페이지 
	@RequestMapping("fundMoney.pm")
	public String fundMoney() {
	    return "payment/pay_fundMoney";
	}


}
