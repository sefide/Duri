package com.kh.duri.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {

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

	// 포인트 환급페이지
	@RequestMapping("pointCharge.pm")
	public String pointCharge() {
	    return "payment/point_charge"; 
	}

	// 포인트 히스토리 페이지
	@RequestMapping("pointHistory.pm")
	public String pointHistory() {
	    return "payment/point_history";
	}
	
	// 기부금 영수증 발급내역 페이지
	@RequestMapping("donateReceipt.pm")
	public String donateReceipt() {
	    return "payment/donation_receipt";
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
