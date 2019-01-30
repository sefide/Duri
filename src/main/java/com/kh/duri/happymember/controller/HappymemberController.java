package com.kh.duri.happymember.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HappymemberController {
	
	@RequestMapping("Aerin1.happy")
	public String happy1() {
		return "happymember/thankyouLetter";
	}
	
	

}
