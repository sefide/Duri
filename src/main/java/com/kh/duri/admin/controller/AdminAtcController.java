package com.kh.duri.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminAtcController {




	
	@RequestMapping("adminCrowd.ad")
	public String admin3() {
		return "admin/adminCrowd";
	}
	@RequestMapping("adminMain.ad")
	public String admin4() {
		return "admin/adminMain";
	}

	@RequestMapping("adminCrowdDetail.ad")
	public String admin6() {
		return "admin/adminCrowdDetail";
	}
	
	
	
}
