package com.kh.duri.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("Eunji_cloudList.bo")
	public String cloudList() {
		return "board/causes";
	}
	
	@RequestMapping("Eunji_cloudList2.bo")
	public String cloudList2() {
		return "board/causes2";
	}
	
	@RequestMapping("Eunji_cloudMoneyList.bo")
	public String cloudMoneyList() {
		return "board/causes";
	}
	
	@RequestMapping("Eunji_cloudStuffList.bo")
	public String cloudStuffList() {
		return "board/causes2";
	}
	
	@RequestMapping("Eunji_cloudWrite.bo")
	public String cloudWrite() {
		return "happymember/cloudWrite";
	}
}
