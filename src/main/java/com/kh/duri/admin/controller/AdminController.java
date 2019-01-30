package com.kh.duri.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("Euihee_memberList1.ad")
	public String admin1() {
		return "admin/memberList1";
}
	@RequestMapping("Euihee_memberList2.ad")
	public String admin2() {
		return "admin/memberList2";
	}
	@RequestMapping("Euihee_memBlackList.ad")
	public String admin3() {
		return "admin/memBlackList";
	}
	@RequestMapping("Euihee_payBackList.ad")
	public String admin4() {
		return "admin/payBackList";
	}
	@RequestMapping("Euihee_pointList.ad")
	public String admin5() {
		return "admin/pointList";
	}
	@RequestMapping("Euihee_qnaAnswer.ad")
	public String admin6() {
		return "admin/qnaAnswer";
	}
	@RequestMapping("Euihee_qnaList.ad")
	public String admin7() {
		return "admin/qnaList";
	}
	@RequestMapping("Euihee_qnaView.ad")
	public String admin8() {
		return "admin/qnaView";
	}
	@RequestMapping("Euihee_qnaWrite.ad")
	public String admin9() {
		return "admin/qnaWrite";
	}
	@RequestMapping("Euihee_reportList.ad")
	public String admin10() {
		return "admin/reportList";
	}
	@RequestMapping("Euihee_reviewList.ad")
	public String admin11() {
		return "admin/reviewList";
	}
	@RequestMapping("Euihee_reviewView.ad")
	public String admin12() {
		return "admin/reviewView";
	}
	@RequestMapping("Euihee_todayNoticeList.ad")
	public String admin13() {
		return "admin/todayNoticeList";
	}
	@RequestMapping("Euihee_cashList.ad")
	public String admin14() {
		return "admin/cashList";
	}
	@RequestMapping("Euihee_allNoticeList.ad")
	public String admin15() {
		return "admin/allNoticeList";
	}
	@RequestMapping("Euihee_joinConfirmList.ad")
	public String admin16() {
		return "admin/joinConfirmList";
	}
	
}
