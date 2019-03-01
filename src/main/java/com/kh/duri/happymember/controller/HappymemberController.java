package com.kh.duri.happymember.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.common.CommonUtils;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.service.HappymemberService;
import com.kh.duri.happymember.model.vo.Attachment;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.DirectFundHistory;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.Funding;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.happymember.model.vo.Pagination;
import com.kh.duri.happymember.model.vo.Qna;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

@Controller
public class HappymemberController {
	//의존성 주입
	@Autowired
	private HappymemberService hs;
	
	//마이페이지 - 보유물품 목록 불러오기 ajax
	@RequestMapping("donateItemList.happy")
	public @ResponseBody HashMap<String, Object> items(@RequestParam String mno, HttpServletRequest request, HttpServletResponse response) {
		
		/*System.out.println("controller 회원번호 : " + mno);*/

		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		ArrayList<MyDonateItems> ownlist = null;
		ArrayList<FundItemList> fundItemList = null;
		
		MyDonateItems mdi = new MyDonateItems();
		mdi.setO_mno(Integer.parseInt(mno));
		
		
		try {
			ownlist = hs.donateItemList(mdi);	//보유물품 리스트
			
			fundItemList = hs.selectfundItemList();	//후원물품 리스트
			
			/*System.out.println("controller 보유물품리스트 : " + ownlist);
			System.out.println("controller 후원물품리스트 : " + fundItemList);*/
			
			
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
				/*System.out.println("물품 목록 추가 성공!");*/
				return "redirect:selectDeliveryList.happy";
			}
			
			
			
		} catch (MypageException e) {
			request.setAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		return "redirect:selectDeliveryList.happy";
	}
	
	//정기후원 목록 개수 조회, 목록 페이징
	@RequestMapping("longDonate.happy")
	public String selectLongDonate(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
			int listCount = hs.selectLongDonateCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<DirectFundHistory> directFundList = hs.selectDirectFundList(m, pi);
			
			/*for(DirectFundHistory i : directFundList) {
				System.out.println("정기후원 내역 : " + i);
			}*/
			
			model.addAttribute("directFundList", directFundList);
			model.addAttribute("pi", pi);
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
		}
		
		return "happymember/longDonate";
	}
	
	//배송현황 목록 개수 조회, 목록 페이징
	@RequestMapping("selectDeliveryList.happy")
	public String selectDeliveryList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
			
		int currentPage = 1;
			
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
			
		try {
			int listCount = hs.selectDeliveryListCount(m);
				
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
			List<DeliveryDetail> deliveryList = hs.selectDeliveryList(m, pi);
				
			/*for(DeliveryDetail i : deliveryList) {
				System.out.println("배송 현황 목록 : " + i);
			}*/
				
			model.addAttribute("deliveryList", deliveryList);
			model.addAttribute("pi", pi);
				
				
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		return "happymember/deliveryStatus";
	}
	
	
	//자기소개 수정
	@RequestMapping("updateIntroduce.happy")
	public String updateIntroduce(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member oldLoginUser = (Member) request.getSession().getAttribute("loginUser");
		String userNewPr = request.getParameter("userNewPr");
		
		/*System.out.println("userNewPr : " + userNewPr);*/
		
		oldLoginUser.setMprNew(userNewPr);
		oldLoginUser.setMpr(userNewPr);
				
		try {
			int result = hs.updateIntroduce(oldLoginUser);
			
			if(result > 0){
				return "redirect:logngDonateRefresh.happy";
			}
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	
		
		return "happymember/myIntroModify.happy";
	}
	
	//물품후원 목록 개수 조회, 목록 페이징
	@RequestMapping("itemDonateList.happy")
	public @ResponseBody HashMap<String, Object> itemDonateList(@RequestParam int currentPage, Model model, HttpServletRequest request, HttpServletResponse response){
		Member m = (Member)request.getSession().getAttribute("loginUser");
		int mno = m.getMno();
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		try {
			int listCount = hs.selectItemDonateCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Funding> itemDonateList = hs.selectItemDonateList(mno, pi);
			
			/*for(Funding i : itemDonateList) {
				System.out.println("물훔푸원 목록 : " + i);
			}*/
	
			map.put("itemDonateList", itemDonateList);
			map.put("pi", pi);
			return map;
			
		} catch (MypageException e) {
			map.put("msg", e.getMessage());
			return map;
		}
		
	}
	
	//금액후원 목록 개수 조회, 목록 페이징
	@RequestMapping("moneyDonateList.happy")
	public @ResponseBody HashMap<String, Object> moneyDonateList(@RequestParam int currentPage, Model model, HttpServletRequest request, HttpServletResponse response){
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		try {
			int listCount = hs.selectMoneyDonateCount(m);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			List<Funding> moneyDonateList = hs.selectMoneyDonateList(m, pi);
			
			map.put("moneyDonateList", moneyDonateList);
			map.put("pi", pi);
			return map;
			
		} catch (MypageException e) {
			map.put("msg", e.getMessage());
			return map;
		}
	} 
	
	//Q&A 목록 개수 조회, 목록 페이징
	@RequestMapping("qna.happy")
	public String selectQnaList(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		try {
				int listCount = hs.selectQnaListCount(m);
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				List<Qna> qnaList = hs.selectQnaList(m, pi);
				
				/*for(Qna i : qnaList) {
					System.out.println("qnaList : " + i);
				}*/
				
				model.addAttribute("qnaList", qnaList);
				model.addAttribute("pi", pi);
				
			} catch (MypageException e) {
				model.addAttribute("msg", e.getMessage());
				return "common/errorPage";
			}
	
		return "happymember/qna";
	}
	
	//Q&A 작성
	@RequestMapping("myQnaInsert.happy")
	public String insertQna(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member) request.getSession().getAttribute("loginUser");
		int mno = m.getMno();
		
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaContent = request.getParameter("qnaContent");
		
		Qna q = new Qna();
		q.setQ_mno(mno);
		q.setQtitle(qnaTitle);
		q.setQcontent(qnaContent);
		
		try {
			int result = hs.insertQna(q);
			
			if(result > 0) {
				return "redirect:qnaInsertOriginal.happy";
			}
			
			
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		
		return "happymember/qna";
	}
	
	
	//Q&A 상세보기 
	@RequestMapping("qnaDetail.happy")
	public String qnaDetail(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		int mno = m.getMno();
		
		String requestQno = request.getParameter("requestQno");
		int qno = Integer.parseInt(requestQno);
		/*System.out.println("qno잘뽑힘? : " + requestQno);
		System.out.println("qno 인트형 : " + qno);*/
		
		Qna q = new Qna();
		q.setQno(qno);
		q.setQ_mno(mno);

		try {
			List<Qna> qnaDetail = hs.selectQnaDetail(q);
			
			/*System.out.println("다 담겻나? : " + qnaDetail);*/
			
			model.addAttribute("qnaDetail", qnaDetail);
			model.addAttribute("qnaTitle", qnaDetail.get(0).getQtitle());
			model.addAttribute("qnaDate", qnaDetail.get(0).getQdate());
			model.addAttribute("qnaContent", qnaDetail.get(0).getQcontent());
			model.addAttribute("qnaAnswer", qnaDetail.get(0).getQanswer());
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
		} 
		
		
		return "happymember/qnaDetail";
	}
	
	//감사편지 보낼 정기후원자 닉네임 뽑기
	@RequestMapping("thankyouLetter.happy")
	public String selectNanumNick(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		try {
			List<Member> nanumNicks = hs.selectNanumNick(m);
			
			model.addAttribute("nanumNicks", nanumNicks);
			
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		
		
		return "happymember/thankyouLetter";
	}
	
	//감사편지 보내기
	@RequestMapping("thankyouLetterInsert.happy")
	public String insertThankyouLetter(Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		String nanumMnoString = request.getParameter("nick");
		String letterTitle = request.getParameter("letterTitle");
		String letterContent = request.getParameter("letterContent");
		
		int happyMno = m.getMno();//세션에서 행복두리 번호 뽑고
		int nanumMno = Integer.parseInt(nanumMnoString);//넘겨받은 나눔두리 번호 뽑고
		/*System.out.println("나눔두리 번호 : " + nanumMno);
		System.out.println("편지 제목 : " + letterTitle);
		System.out.println("편지 내용 : " + letterContent);*/
		
		Letter l = new Letter();
		l.setLeMnoTake(happyMno);
		l.setLeMnoGive(nanumMno);
		l.setLeTitle(letterTitle);
		l.setLeContent(letterContent);
		
		
		try {
			int result = hs.insertThankyouLetter(l);
			
			if(result > 0) {
				return "redirect:logngDonateRefresh.happy";
			}
			
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		
		return "hapymember/thankyouLetter";
	}
	
	
	//증빙서류 현황 조회
	@RequestMapping("proofDocument.happy")
	public String adate(@RequestParam String changeName, Model model, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
	
		System.out.println("제발... : " + changeName);
			
		try {
			Attachment proofDocument = hs.selectProofDocument(m);
					
			/*System.out.println("증빙서류 객체 : " + proofDocument);*/
			
			model.addAttribute("proofDocument", proofDocument);
					
					
		} catch (MypageException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		
		return "happymember/proofDocument";
	}
	
	//증빙서류 업로드(파일 이름 변경)
	@RequestMapping("proofDocumentUpload.happy")
	public String proofDocumentUpload(Model model, HttpServletRequest request,
						@RequestParam(value="photo", required=false) MultipartFile photo){
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		String fundType = request.getParameter("fundType");
		System.out.println("후원타입 : " + fundType);
		System.out.println("행복두리 증빙서류 : " + photo);
		
	
		//실제경로 가져오기
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\formFiles";
		System.out.println("저장될 주소 : " + filePath);
		
		//파일명 변경
		String originFileName = photo.getOriginalFilename();
		System.out.println("이름 : " + originFileName);
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		
		try {
			//사진명 변경해서 업로드
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			
			m.setmFundtype(fundType);
			m.setOrigin(originFileName);
			m.setChange(changeName+ext);
			
			int result = hs.updateProofDocumentUpload(m);
				
			if(result > 0) {
				System.out.println("성공!!");
				model.addAttribute("changeName", m.getChange());
				return "redirect:proofDocument.happy";
			}
			
		} catch (IOException e) {
			new File(filePath = "\\" + changeName + ext).delete();
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
			
		}
		
		return "redirect:proofDocument.happy";
	}
	
	
	//물품 배송 목록 새로고침했을 때 insert다시 안되게 !
	@RequestMapping("deliveryOriginal.happy")
	public String deliveryOriginal() {
		return "happymember/deliveryStatus";
	}
	
	//새로고침 - 자기소개 수정
	@RequestMapping("logngDonateRefresh.happy")
	public String logngDonateRefresh() {
		return "redirect:longDonate.happy";
	}
	
	//새로고침 - Q&A 작성
	@RequestMapping("qnaInsertOriginal.happy")
	public String qnaInsertOriginal() {
		return "redirect:qna.happy";
	}
		
	@RequestMapping("qnaInsert.happy")
	public String qnaInsert() {
		return "happymember/qnaInsert";
	}
	
	@RequestMapping("mypage.happy")
	public String happy1() {
		return "happymember/mypage";
	}
	
	
	@RequestMapping("deliveryStatus.happy")
	public String happy3() {
		return "happymember/deliveryStatus";
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
	/**/
}

