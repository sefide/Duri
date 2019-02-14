package com.kh.duri.happymember.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.service.HappymemberService;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

@Controller
public class HappymemberController {
	//의존성 주입
	@Autowired
	private HappymemberService hs;
	
	//마이페이지 - 보유물품 목록 불러오기 ajax
	@RequestMapping("donateItemList.happy")
	public @ResponseBody HashMap<String, Object> items(@RequestParam String mno, HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("controller 회원번호 : " + mno);

		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		ArrayList<MyDonateItems> ownlist = null;
		ArrayList<FundItemList> fundItemList = null;
		
		MyDonateItems mdi = new MyDonateItems();
		mdi.setO_mno(Integer.parseInt(mno));
		
		
		try {
			ownlist = hs.donateItemList(mdi);	//보유물품 리스트
			
			fundItemList = hs.selectfundItemList();	//후원물품 리스트
			
			System.out.println("controller 보유물품리스트 : " + ownlist);
			System.out.println("controller 후원물품리스트 : " + fundItemList);
			
			
			hmap.put("ownlist", ownlist);
			hmap.put("fundItemList", fundItemList);
			return hmap;
			
		} catch (MypageException e) {
			hmap.put("msg", e.getMessage());
			return hmap;
		}
	}

	//배송받을 물품 선택 후 수량 변경하기
	//배송현황 추가하기 
	//배송현황 상세 테이블에 추가하기
	//메소드 추가하기
	//물품정보(물품번호, 수량) /  회원번호 
	//방금 추가된 배송번호 찾아내기
	//배송번호 포함해서 행 insert 
	//행에 필요한 정보 : 물품정보(물품번호, 수량) /배송번호/  회원번호 
	@RequestMapping("getDelivery.happy")
	public String getDelivery(HttpServletRequest request, HttpServletResponse response) {
		String mno = request.getParameter("mno");
		String address = request.getParameter("address");
		String item = request.getParameter("item");
		String itemAmount = request.getParameter("itemAmount");
		
		/*System.out.println("물품번호 : " + item);
		System.out.println("개수 : " + itemAmount);*/
		
		String[] itemNumArray;
		itemNumArray = item.split(",");
		
		String[] itemAmountArray;
		itemAmountArray = itemAmount.split(",");
		
		try {
			int result = hs.getDelivery(itemNumArray, itemAmountArray, mno, address);
			
			if(result == 1) {
				System.out.println("물품 목록 추가 성공!");
				return "happymember/deliveryStatus";
			}
			
			
			
		} catch (MypageException e) {
			request.setAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		return "happymember/deliveryStatus";
	}
	
	//배송현황 목록 개수 조회
	@RequestMapping("selectDeliveryList.happy")
	public String happyDeliveryList(HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		int mno = m.getMno();
		
		Delivery d = new Delivery();
		d.setD_mno(mno);
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
			int listCount = hs.selectDeliveryListCount(d);
			
			
			
			
		} catch (MypageException e) {
			request.setAttribute("msg", e.getMessage());
			return "happymember/deliveryStatus";
		}
		return "happymember/deliveryStatus";
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
	
	
	@RequestMapping("myInfoModifyHappy.happy")
	public String happt30() {
		return "happymember/myInfoModify";
	}
	
	@RequestMapping("myIntroModify.happy")
	public String happt31() {
		return "happymember/myIntroModify";
	}
}

