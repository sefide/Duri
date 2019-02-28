
package com.kh.duri.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.duri.common.CommonUtils;
import com.kh.duri.happymember.model.service.HappymemberService;
import com.kh.duri.happymember.model.vo.Attachment;
import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.service.MemberService;
import com.kh.duri.member.model.vo.Member;

@Controller
public class MemberController {
	//의존성 주입용 필드선언
	@Autowired
	private MemberService ms;

	@Autowired
	private HappymemberService hs;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//로그인 회원 조회용 메소드(행복두리)
	@RequestMapping	("login.me")
	public ModelAndView loginCheck(Member m, ModelAndView mv, HttpSession session, Model model, HttpServletRequest request) {
			
		try {
			System.out.println("member : "+m);
			
			Member loginUser = null; 
			loginUser = ms.loginMember(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
			
			if(loginUser != null) {
				if(loginUser.getMtype().equals("M")) {
					
					mv.setViewName("redirect:adminMain.ad"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
					
					
				}else{
					
					session.setAttribute("loginUser", loginUser);	//세션에 뿌려주기
					
					
					Member member = (Member)request.getSession().getAttribute("loginUser");
					/*System.out.println("세션 : " + member);*/
					
					if(Integer.parseInt(member.getmTakeStatus()) == 3) {
						mv.setViewName("redirect:goHappyMain.me");
					}else {

					//애린이가 수정
					//로그인 하자마자 증빙 서류 재 제출 D-day 띄우기	
					Attachment aDate;
					aDate = hs.selectAdate(member);
					
				/*	System.out.println("갱신 가능 시작 d-day : " + aDate.getChangestart());
					System.out.println("갱신가능~마감까지 d-day : " + aDate.getFinishdate());*/
					session.setAttribute("changestart", aDate.getChangestart());
					session.setAttribute("finishdate", aDate.getFinishdate());
					
					mv.setViewName("redirect:goHappyMain.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
					
					}
				}
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
				
			
				loginUser2 = ms.loginNaMember(m); //받아온 아이디와 비밀번호로 로그인 정보 조회
				
				System.out.println(loginUser2.getMtype());
				if(loginUser2 != null) {
					if(loginUser2.getMtype().equals("M")) {

						mv.setViewName("redirect:adminMain.ad"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
						
						
					}else{
						session.setAttribute("loginUser2", loginUser2);	//세션에 뿌려주기
						mv.setViewName("redirect:goNanumMain.me"); //위처럼 redirect로 뷰페이지이름연결할거랑 똑같음
					}
				}
				

				
			} catch (LoginException e) {
				
				mv.addObject("msg",e.getMessage());
				mv.setViewName("common/errorPage");
			}
			
			
			return mv;
		}
		
		
		
		

	//아이디 중복확인
	@RequestMapping("duplicationCheck.me")		
	public @ResponseBody String idcheck(@RequestParam String mid2, HttpServletResponse response) {

		int count = 0;

		try {
			count = ms.idcheck(mid2);
			System.out.println("count : " + count);
			
			
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


		return count+"";
	}
	
	//닉네임 중복확인
	@RequestMapping("duplicationCheckNick.me")		
	public @ResponseBody String NickCheck(@RequestParam String mNick, HttpServletResponse response) throws LoginException {

		int count = 0;

		count = ms.NickCheck(mNick);
		System.out.println("count : " + count);
		


		return count+"";
	}
	
	
		
	
	@RequestMapping("insert.me")
	public @ResponseBody String insertMember(Member m, Model model) {
		
		int result = 0;
		
		try {

			System.out.println("member : "+m);
			System.out.println(m.getMpwd());
			
			/* 암호화처리 */
			String encPassword = passwordEncoder.encode(m.getMpwd()); 
			
			System.out.println("암호화 후 : "+encPassword);
			
			m.setMpwd(encPassword);//암호화된 비밀번호 저장
			
			System.out.println("member : "+m);
	
			
			result = ms.insertMember(m);
			
			
		
			
			
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result>0) {
			return result+"";
		}else {
			model.addAttribute("msg","회원가입 실패");
			return "common/errorPage";
		}

	}

	
	//행복두리 회원가입
	@RequestMapping("insert2.me")
	public String insertHappyMember(Model model, Member m, HttpServletRequest request,
			@RequestParam (value="photo", required=false) MultipartFile photo) {

		System.out.println("Member : " + m);
		System.out.println("photo : " + photo);
		
		
		int result= 0 ;
		// 실제경로 가져오기
		String root = request.getSession().getServletContext().getRealPath("resources");
		/* System.out.println(root); */

		String filePath = root + "\\formFiles";

		// 파일명 변경
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();

		try {

			// 사진명 변경해서 업로드
			photo.transferTo(new File(filePath + "\\" + changeName + ext));

			/* 암호화처리 */
			String encPassword = passwordEncoder.encode(m.getMpwd()); 
			
			System.out.println("암호화 후 : "+encPassword);
			
			m.setMpwd(encPassword);//암호화된 비밀번호 저장
			m.setOrigin(originFileName);
			m.setChange(changeName);
			
			System.out.println("member : "+m);

			result = ms.insertHappyMember(m);

			return "redirect:goHappyLogin.me";

		} catch (IOException e) {

			new File(filePath = "\\" + changeName + ext).delete();

			model.addAttribute("msg", "회원가입 실패!");
			return "common/errorPage";
		}

	}

	
	
	 
	// 인증번호 이메일 보내기

	@RequestMapping("emailCheckNumSend.do")
	public @ResponseBody String emailCheckNumSend(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String email = req.getParameter("email");

		String host = "smtp.gmail.com";

		String to = email;

		String from = "wqwq1563@gmail.com";

		String password = "dmswl1596";

		String from_name = "둘이두리관리자";



		Properties props = new Properties();

		props.put("mail.smtps.auth", "true");

		Session session = Session.getInstance(props);

		int checkNum=1;

		try {

			MimeMessage msg = new MimeMessage(session);

			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));

			msg.setSubject("둘이두리 인증번호");

			

			while (true) {

				checkNum = ((int) (Math.random() * 1000000));

				if (checkNum > 99999) {

					break;

				}

			}

			

			HttpSession session2=req.getSession();

			session2.setAttribute("checkNum", checkNum);

			msg.setContent("<h1>인증번호 : "+checkNum+"</h1>", "text/html;charset=" + "EUC-KR");

			InternetAddress address = new InternetAddress(to);

			msg.setRecipient(Message.RecipientType.TO, address);

			

			Transport transport = session.getTransport("smtps");

			transport.connect(host, from, password);

			transport.sendMessage(msg, msg.getAllRecipients());

			Transport.send(msg);

			transport.close();

			

		} catch (Exception ex) {

			System.out.println(ex.getMessage());

		}

		return checkNum+"";

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
	
	
	/*@RequestMapping("logout.me")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		
		return "redirect:goMain.me";
	}*/
	
	@RequestMapping("logout.me")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		
		return "redirect:total.nanum";
	}

	
	



	
	
	@RequestMapping("happyLogin.me")
	public String cloudList() {
		return "member/HappyLogin";
	}
	
	
	@RequestMapping("nanumLogin.me") 
	public String cloudList2() {
		return "member/NanumLogin";
	}
	
	@RequestMapping("join.me") 
	public String cloudList3() {
		return "member/memberJoin";
	}
	
	@RequestMapping("goHappyLogin.me") 
	public String happyLogin() {
		return "member/HappyLogin";
	}
	
	
	

	
}

