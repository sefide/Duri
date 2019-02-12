package com.kh.duri.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.service.boardService;
import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Pagination;
import com.kh.duri.payment.model.vo.Point;

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

	@RequestMapping("long_donate_detail.bo")
	public ModelAndView request(Member m, ModelAndView mv,HttpSession session){ 
	
	
			System.out.println("member : "+m);
			
			Member longDetail = null; 
			
			
			longDetail = bs.longDanateDetail(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
				
			session.setAttribute("longDetail", longDetail);	//세션에 뿌려주기
				
				mv.setViewName("redirect:longDonate.bo"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
	
			

		
		return mv;
		

		}



	
	
	@RequestMapping("longDonate.bo")
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
