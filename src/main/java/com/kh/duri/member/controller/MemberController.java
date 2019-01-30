package com.kh.duri.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("Ajin1.me")
	public String Total() {
		return "admin/Sample";
		
}

	
}
