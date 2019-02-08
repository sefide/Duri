package com.kh.duri.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("Eunji_cloudList.bo")
	public String eunji1() {
		return "board/causes";
	}
	
	@RequestMapping("Eunji_cloudList2.bo")
	public String eunji2() {
		return "board/causes2";
	}
	
	
	@RequestMapping("Eunji_cloudWrite.bo")
	public String eunji5() {
		return "happymember/cloudWrite";
	}
	
	@RequestMapping("long_donate.bo")
	public String eunji6() {
		return "board/donate";
	}
	
	@RequestMapping("long_donate_datail.bo")
	public String eunji7() {
		return "board/about_long";
	}
	
	@RequestMapping("cloud_money_datail.bo")
	public String eunji8() {
		return "board/about_money";
	}
	
	@RequestMapping("cloud_thing_datail.bo")
	public String eunji9() {
		return "board/about_thing";
	}
}
