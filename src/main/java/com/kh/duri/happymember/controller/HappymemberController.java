package com.kh.duri.happymember.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HappymemberController {
	
	@RequestMapping("mypage.happy")
	public String happy1() {
		return "happymember/mypage";
	}
	
	@RequestMapping("longDonate.happy")
	public String happy2() {
		return "happymember/longDonate";
	}
	
	@RequestMapping("deliveryStatus.happy")
	public String happy3() {
		return "happymember/deliveryStatus";
	}
	
	@RequestMapping("thankyouLetter.happy")
	public String happy4() {
		return "happymember/thankyouLetter";
	}
	
	@RequestMapping("qna.happy")
	public String happy5() {
		return "happymember/qna";
	}
	
	@RequestMapping("qnaDetail.happy")
	public String happy6() {
		return "happymember/qnaDetail";
	}
	
	@RequestMapping("qnaInsert.happy")
	public String happy7() {
		return "happymember/qnaInsert";
	}

	@RequestMapping("proofDocument.happy")
	public String happy8() {
		return "happymember/proofDocument";
	}

	@RequestMapping("return.happy")
	public String happy9() {
		return "payment/point_return_happy";
	}
	
	@RequestMapping("cloudWrite.happy")
	public String happt10() {
		return "happymember/cloudWrite";
	}
}

