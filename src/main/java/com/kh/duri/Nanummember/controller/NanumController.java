package com.kh.duri.Nanummember.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.member.model.vo.Member;

@Controller
public class NanumController {
	
	@RequestMapping("total.nanum")
	public String Total1() {
		return "Nanummember/totalMain";
	}
	@RequestMapping("main.nanum")
	public String Total2() {
		return "Nanummember/nanumMain";
	}
	
	@RequestMapping("mypage.nanum")
	public String selectCloudList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser2");
		/*List<>*/
		
		
		return "Nanummember/mypage/mypage";
	}
	@RequestMapping("mypageFund.nanum")
	public String Total4() {
		return "Nanummember/mypage/mypage_fund";
	}
	
	@RequestMapping("mypageLetter.nanum")
	public String Total5() {
		return "Nanummember/mypage/mypage_letter";
	}
	
	@RequestMapping("mypageLetterDetail.nanum")
	public String Total11() {
		return "Nanummember/mypage/mypage_letterDetail";
	}
	
	@RequestMapping("mypageReceipt.nanum")
	public String Total6() {
		return "Nanummember/mypage/mypage_receipt";
	}
	
	@RequestMapping("mypageLikefund.nanum")
	public String Total7() {
		return "Nanummember/mypage/mypage_likefund";
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
