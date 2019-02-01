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
}
