
package com.kh.duri.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.service.MemberService;
import com.kh.duri.member.model.service.MemberServiceImpl;
import com.kh.duri.member.model.vo.Member;

@Controller
public class MemberController {
	//의존성 주입용 필드선언
	@Autowired
	private MemberService ms;

	//로그인 회원 조회용 메소드(행복두리)
	@RequestMapping	("login.me")
	public ModelAndView loginCheck(Member m, ModelAndView mv, HttpSession session) {
			
		try {
			System.out.println("member : "+m);
			
			Member loginUser = null; 
			
			if(!(m.getMid().equals("mng01")||m.getMid().equals("mng02")||m.getMid().equals("mng03")||m.getMid().equals("mng04"))) {
				loginUser = ms.loginMember(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
				
				session.setAttribute("loginUser", loginUser);	//세션에 뿌려주기
				
				mv.setViewName("redirect:goHappyMain.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
			}else {
				
				mv.setViewName("redirect:goAdmin.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
			}
			

			
		} catch (LoginException e) {
			
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		
		return mv;
	}

	
	//로그인 회원 조회용 메소드(나눔두리)
		@RequestMapping	("loginNa.me")
		public ModelAndView loginNaCheck(Member m, ModelAndView mv, HttpSession session){
				
			try {
				System.out.println("member : "+m);
				
				Member loginUser2 = null; 
				
				if(!(m.getMid().equals("mng01")||m.getMid().equals("mng02")||m.getMid().equals("mng03")||m.getMid().equals("mng04"))) {
					loginUser2 = ms.loginNaMember(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
					
					session.setAttribute("loginUser2", loginUser2);	//세션에 뿌려주기
					
					mv.setViewName("redirect:goNanumMain.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
				}else {
					
					mv.setViewName("redirect:goAdmin.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
				}
				

				
			} catch (LoginException e) {
				
				mv.addObject("msg",e.getMessage());
				mv.setViewName("common/errorPage");
			}
			
			
			return mv;
		}
		
		
		
		//로그인 회원가입 메소드(나눔두리)
		@RequestMapping	("joinNanum.me")
		public ModelAndView joinNanum(Member m, ModelAndView mv, HttpSession session) {
				
		/*	try {*/
				System.out.println("member : "+m);
				
				/*Member loginUser = null; 
				
				if(!(m.getMid().equals("mng01")||m.getMid().equals("mng02")||m.getMid().equals("mng03")||m.getMid().equals("mng04"))) {
					loginUser = ms.loginMember(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
					
					session.setAttribute("loginUser", loginUser);	//세션에 뿌려주기
					
					mv.setViewName("redirect:goHappyMain.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
				}else {
					
					mv.setViewName("redirect:goAdmin.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
				}
				
*/
			/*	
			} catch (LoginException e) {
				
				mv.addObject("msg",e.getMessage());
				mv.setViewName("common/errorPage");
			}
			
			*/
			return null;
		}

	
	//새로고침하면 로그인계속요청함 ! 방지하기 위해 아래 메서드 생성
	@RequestMapping("goHappyMain.me")
	public String goHappyMain() {
		return "happymember/mypage";
	}
	
	@RequestMapping("goNanumMain.me")
	public String goMain() {
		return "Nanummember/nanumMain";
	}
	
	
	@RequestMapping("logout.me")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		
		return "redirect:total.nanum";
	}

	
	@RequestMapping("goAdmin.me")
	public String goAdmin() {
		return "admin/adminMain";
	}



	
	
	@RequestMapping("Eunji_happyLogin.me")
	public String cloudList() {
		return "member/HappyLogin";
	}
	
	
	@RequestMapping("Eunji_nanumLogin.me") 
	public String cloudList2() {
		return "member/NanumLogin";
	}
	
	@RequestMapping("join.me") 
	public String cloudList3() {
		return "member/memberJoin";
	}
	
	
	

	
}

