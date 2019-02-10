package com.kh.duri.happymember.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.service.HappymemberService;
import com.kh.duri.happymember.model.vo.DonateItems;

@Controller
public class HappymemberController {
	//의존성 주입
	@Autowired
	private HappymemberService hs;
	
	//마이페이지 - 보유물품 목록 불러오기 ajax
	@RequestMapping("donateItemList.happy")
	public @ResponseBody ArrayList<DonateItems> donateItemList(String mno, HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("controller 회원번호 : " + mno);
		
		ArrayList<DonateItems> list = null;
		
		DonateItems di = new DonateItems();
		di.setO_mno(Integer.parseInt(mno));
		
		try {
			list = hs.donateItemList(di);
			
			System.out.println("controller 보유물품리스트 : " + list);
			
		} catch (MypageException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
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
	
	@RequestMapping("cloudWrite.happy")
	public String happt10() {
		return "happymember/cloudWrite";
	}
	
	@RequestMapping("cloudThingDetail.happy")
	public String happt11() {
		return "board/about_thing";
	}
	
	@RequestMapping("cloudMoneyDetail.happy")
	public String happt12() {
		return "board/about_money";
	}
	
}

