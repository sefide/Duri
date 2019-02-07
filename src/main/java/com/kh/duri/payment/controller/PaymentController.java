package com.kh.duri.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.service.PaymentService;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;

	// 포인트 히스토리 페이지
	@RequestMapping("pointHistory.pm")
	public String pointHistory(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		System.out.println("세션에 저장된 회원번호 : " + m.getMno());
		
		try {
			List<Point> ph = ps.getPointHistory(m);
			
			/*for(Point i : ph) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("phList", ph);
			return "payment/point_history";
		} catch (PointHistoryException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/point_history";
		}
		
	}
		
	// 기부금 영수증 발급내역 페이지
	@RequestMapping("donateReceipt.pm")
	public String donateReceipt(HttpServletRequest request, HttpServletResponse response, Model model) {
		Member m = (Member) request.getSession().getAttribute("loginUser2");
		//System.out.println("세션에 저장된 회원번호 : " + m.getMno());
		
		List<DonateReceipt> dr;
		try {
			dr = ps.getDonateReceiptHistory(m);
			
			/*for(DonateReceipt i : dr) {
				System.out.println("내역 : "+ i);
			}*/
			model.addAttribute("drList", dr);
			return "payment/donation_receipt";
			
		} catch (ReceiptException e) {
			model.addAttribute("msg", e.getMessage());
			return "payment/donation_receipt";
		}
	   
	}
	
	// 정기후원 결제페이지
	@RequestMapping("directFund.pm")
	public String directFund() {
	    return "payment/pay_directFund";
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

	// 포인트 충전페이지
	@RequestMapping("pointCharge.pm")
	public String pointCharge() {
	    return "payment/point_charge"; 
	}

	// 포인트 환급목록 페이지
	@RequestMapping("pointReturnList.pm")
	public String pointReturnList() {
	    return "payment/point_returnList";
	}
	
	// 행복두리 포인트 환급목록 페이지
	@RequestMapping("pointReturnListHappy.pm")
	public String pointReturnHappyList() {
	    return "payment/point_returnList_happy";
	}
	
	// 포인트 환급페이지
	@RequestMapping("pointReturn.pm")
	public String pointReturn() {
	    return "payment/point_return";
	}
	
	// 행복두리 포인트 환급페이지
	@RequestMapping("pointReturnHappy.pm")
	public String pointReturnHappy() {
	    return "payment/point_return_happy";
	}
}
