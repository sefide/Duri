package com.kh.duri.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("Euihee_chart.ad")
	public String admin1() {
		return "admin/chart";
}
	@RequestMapping("Euihee_empty.ad")
	public String admin2() {
		return "admin/empty";
	}
	@RequestMapping("Euihee_form.ad")
	public String admin3() {
		return "admin/form";
	}
	@RequestMapping("Euihee_index.ad")
	public String admin4() {
		return "admin/index";
	}
	@RequestMapping("Euihee_morris-chart.ad")
	public String admin5() {
		return "admin/morris-chart";
	}
	@RequestMapping("Euihee_tab-panel.ad")
	public String admin6() {
		return "admin/tab-panel";
	}
	@RequestMapping("Euihee_table.ad")
	public String admin7() {
		return "admin/table";
	}
	@RequestMapping("Euihee_ui-elements.ad")
	public String admin8() {
		return "admin/ui-elements";
	}
	
	
}
