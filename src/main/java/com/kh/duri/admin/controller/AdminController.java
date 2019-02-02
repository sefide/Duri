package com.kh.duri.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {



	@RequestMapping("QnA.ad")
	public String admin2() {
		return "admin/QnA";
	}
	@RequestMapping("adminCrowd.ad")
	public String admin3() {
		return "admin/adminCrowd";
	}
	@RequestMapping("adminMain.ad")
	public String admin4() {
		return "admin/adminMain";
	}

	@RequestMapping("adminGoods.ad")
	public String admin6() {
		return "admin/adminGoods";
	}
	@RequestMapping("adminNanum.ad")
	public String admin7() {
		return "admin/adminNanum";
	}
	@RequestMapping("adminHappy.ad")
	public String admin10() {
		return "admin/adminHappy";
	}
	@RequestMapping("adminHappyAll.ad")
	public String admin9() {
		return "admin/adminHappyAll";
	}
	@RequestMapping("Euihee_ui-elements.ad")
	public String admin8() {
		return "admin/ui-elements";
	}
	
	
}
