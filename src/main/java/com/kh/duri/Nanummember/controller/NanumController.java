package com.kh.duri.Nanummember.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NanumController {
	
	@RequestMapping("Ajin1.nanum")
	public String Total1() {
		return "Nanummember/totalMain";
	}
	@RequestMapping("Ajin2.nanum")
	public String Total2() {
		return "Nanummember/nanumMain";
	}
	@RequestMapping("Ajin3.nanum")
	public String Total3() {
		return "Nanummember/mypage/mypage";
	}
	@RequestMapping("Ajin4.nanum")
	public String Total4() {
		return "Nanummember/mypage/mypage_fund";
	}
	@RequestMapping("Ajin5.nanum")
	public String Total5() {
		return "Nanummember/mypage/mypage_letter";
	}
	@RequestMapping("Ajin6.nanum")
	public String Total6() {
		return "Nanummember/mypage/mypage_receipt";
	}
	@RequestMapping("Ajin7.nanum")
	public String Total7() {
		return "Nanummember/mypage/mypage_likefund";
	}
	@RequestMapping("Ajin_QnA_list.nanum")
	public String Total8() {
		return "Nanummember/QnA_list";
	}
	@RequestMapping("Ajin_QnA_detail.nanum")
	public String Total9() {
		return "Nanummember/QnA_detail";
	}
	
	
	
}
