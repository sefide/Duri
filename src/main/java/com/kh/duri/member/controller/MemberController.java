
package com.kh.duri.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("Eunji_happyLogin.me")
	public String cloudList() {
		return "member/HappyLogin";
	}
	
	
	@RequestMapping("Eunji_nanumLogin.me")
	public String cloudList2() {
		return "member/NanumLogin";
	}
	
	

	
}

