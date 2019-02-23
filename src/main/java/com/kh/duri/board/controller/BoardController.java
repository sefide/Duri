package com.kh.duri.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.duri.board.model.exception.BoardException;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.service.boardService;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Pagination;

@Controller
public class BoardController {
	//의존성 주입용 필드선언
	@Autowired
	private boardService bs;
	
	
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
	
	//정기후원 목록 불러오기
	@RequestMapping("long_donate.bo")
	public String longDonateList(Model model, HttpServletRequest request, HttpServletResponse response) {
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		
			try {
				int listCount = bs.getDonateListCount();
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				System.out.println("정기후원자 명수 :  " + listCount);
				

				List<Member> doList;
				
				doList = bs.selectDonateList(pi);
				

				model.addAttribute("doList", doList);
				model.addAttribute("pi", pi);
				return "board/donate";
				
			} catch (DonateListException e) {
				model.addAttribute("msg", e.getMessage());
				return "common/errorPage";
			}

			
		
		
	}

	//정기후원 상세페이지
	@RequestMapping("long_donate_detail.bo")
	public ModelAndView longDonate(Member m, ModelAndView mv,HttpSession session){ 
	
	
			System.out.println("member : "+m);
			
			Member longDetail = null; 
			
			
			longDetail = bs.longDanateDetail(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
				
			session.setAttribute("longDetail", longDetail);	//세션에 뿌려주기
				
				mv.setViewName("redirect:longDonate.bo"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
	
			

		
		return mv;
		

		}


	//금액후원 조회
	   @RequestMapping("money_donate.bo")
	   public String moneyDonateList(Model model, HttpServletRequest request, HttpServletResponse response) throws DonateListException {
	      int currentPage = 1;
	      
	      if(request.getParameter("currentPage") != null) {
	         currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      }      
	         int listCount = bs.getMoneyListCount();			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);			
			System.out.println("크라우드펀딩 금액후원 명수 :  " + listCount);
			

			List<Board> moList;
			
			moList = bs.selectMoneyList(pi);			
			model.addAttribute("moList", moList);
			model.addAttribute("pi", pi);
			return "board/causes";

	         
	      
	      
	   }
	 //금액후원 상세조회
	   @RequestMapping("cloud_money_datail.bo")
	   public ModelAndView moneyDetail(Board b, ModelAndView mv,HttpSession session, HttpServletRequest request, HttpServletResponse response){ 
				
		   String moneyDatail = request.getParameter("moneyDatail");
		   System.out.println("moneyDatail : " + moneyDatail);
		   
		   if(moneyDatail != null) {
			   int happyMoneyFno = Integer.parseInt(moneyDatail);
			   
			   b.setFno(happyMoneyFno);
			   System.out.println("happyMoneyFno : " + happyMoneyFno);
		   }
		   
		System.out.println("Board : "+b);		
		Board moneyDetail = null; 	
		moneyDetail = bs.moneyDetailOne(b); //받아온 아이디와 비밀번호로 로그인 정보 조회			
		session.setAttribute("moneyDetail", moneyDetail);	//세션에 뿌려주기			
		mv.setViewName("redirect:moneyDetail.bo"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음			
		return mv;

	}
	
	
	//물품후원 리스트 조회
	   @RequestMapping("thing_donate.bo")
	   public String thingDonateList(Model model, HttpServletRequest request, HttpServletResponse response) throws DonateListException {
	      int currentPage = 1;
	      
	      if(request.getParameter("currentPage") != null) {
	         currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      }

	      
	         int listCount = bs.getThingListCount();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			System.out.println("크라우드펀딩 물품후원  :  " + listCount);
			

			List<BoardItem> thList;
			List<BoardItem> thList2;

			
			thList = bs.selectThingList(pi);
			thList2 = bs.selectThingList2(pi);
			

			model.addAttribute("thList", thList);
			model.addAttribute("thList2", thList2);
			model.addAttribute("pi", pi);
			return "board/causes2";

	         
	      
	      
	   }

	
	
	//물품후원 상세조회
	@RequestMapping("cloud_thing_datail.bo")
	public ModelAndView thingDetail(BoardItem bi, ModelAndView mv,HttpSession session, HttpServletRequest request, HttpServletResponse response){ 
		
		String itemDatail = request.getParameter("itemDatail");
		/*System.out.println("itemDatail : " + itemDatail);*/
		
		if(itemDatail!= null) {
			int happyItemFno = Integer.parseInt(itemDatail);
			
			bi.setFno(happyItemFno);
		/*	System.out.println("happyItemFno : " + happyItemFno);*/
			
		}
		
		
		BoardItem thingDetail = null; 
		List<BoardItem> thingDetail2 = null; 
		
		
		thingDetail = bs.thingDetailOne(bi); //물품펀딩글 받아오기(fundging)
		thingDetail2 = bs.thingDetailOne2(bi);//물품만 받아오기(fundgindDetail & fundItem)
			
		session.setAttribute("thingDetail", thingDetail);	
		session.setAttribute("thingDetail2", thingDetail2);	
			
		mv.setViewName("redirect:thingDetail.bo"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음


	
		return mv;
	

	}
	 
	//펀딩글 작성(행복두리)
	@RequestMapping("writeCloud.bo")
	public ModelAndView writeCloud(Board b, ModelAndView mv,HttpSession session){ 


		try {
		/*System.out.println("Board : " + b);*/

		int writeCloud = 0;
		int writeCloud2 = 0;
		/*System.out.println(b.getFtype());*/
		

				writeCloud = bs.insertCloud(b); // 받아온 아이디와 비밀번호로 로그인 정보 조회
				
				if (writeCloud > 0) {
					System.out.println("내사연페이지로 이동");
					mv.setViewName("redirect:mypage.happy"); // 위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
	
			
				
			}/*else if(b.getFtype()=="ITEM"){
				writeCloud = bs.insertCloud(b); // 게시글 insert
				writeCloud2 = bs.insertItem(b); // 물품 종류, 개수 insert
				
				if (writeCloud > 0 && writeCloud2 > 0) {
					System.out.println("내사연페이지로 이동");
					mv.setViewName("redirect:mypage.happy"); // 위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
	
				}
			}
*/
		

		
	} catch (BoardException e) {
		System.out.println("실패!");

	}

	return mv;
		
		


	}
	


	// 펀딩글 작성2(행복두리)
	@RequestMapping("writeCloud2.bo")
	public ModelAndView writeCloud2(Board b, ModelAndView mv, HttpSession session) {

		try {
			System.out.println("Board : " + b);

			int writeCloud2 = 0;

			writeCloud2 = bs.insertItem(b); // 물품 종류, 개수 insert

			if ( writeCloud2 > 0) {
				System.out.println("내사연페이지로 이동");
				mv.setViewName("redirect:mypage.happy"); // 위처럼 redirect로 뷰페이지이름연결할거랑 똑같음

			}

		} catch (BoardException e) {
			System.out.println("실패!");

		}

		return mv;

	}

	@RequestMapping("writeCloud_page.bo")
	public String eunji10() {
		return "happymember/cloudWrite";
	}
	
	
	@RequestMapping("longDonate.bo")
	public String eunji7() {
		return "board/about_long";
	}
	
	
	@RequestMapping("moneyDetail.bo")
	public String eunji8() {
		return "board/about_money";
	}
	
	@RequestMapping("thingDetail.bo")
	public String eunji9() {
		return "board/about_thing";
	}
	
	
}
