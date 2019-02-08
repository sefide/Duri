package com.kh.duri.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminNanumService;
import com.kh.duri.member.model.vo.Member;

@Controller
public class AdminNanumController {

	@Autowired
	private adminNanumService ans;


	
	@RequestMapping("adminNanum.ad")
	public String adminNanumList(Model model) {
	
		ArrayList<Member>list = ans.adminNanumList();
		model.addAttribute("list", list);
		return "admin/adminNanum";
	
	}
	@RequestMapping("adminNanumDetail.ad")
	public String adminNanumListDetail() {
		return "admin/adminNanumDetail";
	}
	
	
	
}
