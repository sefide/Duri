package com.kh.duri.happymember.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HappymemberController {
	
	@RequestMapping("Aerin_mypage.happy")
	public String happy1() {
		return "happymember/mypage";
	}
	
	@RequestMapping("Aerin_longDonate.happy")
	public String happy2() {
		return "happymember/longDonate";
	}
	
	@RequestMapping("Aerin_longDonateDetail.happy")
	public String happy3() {
		return "happymember/longDonateDetail";
	}
	
	@RequestMapping("Aerin_deliveryStatus.happy")
	public String happy4() {
		return "happymember/deliveryStatus";
	}
	
	@RequestMapping("Aerin_thankyouLetter.happy")
	public String happy5() {
		return "happymember/thankyouLetter";
	}
	
	@RequestMapping("Aerin_qna.happy")
	public String happy6() {
		return "happymember/qna";
	}

	@RequestMapping("Aerin_proofDocument.happy")
	public String happy7() {
		return "happymember/proofDocument";
	}
	
	@RequestMapping("Aerin_goosListPopup.happy")
	public String happy8() {
		return "happymember/goosListPopup";
	}
	
}

