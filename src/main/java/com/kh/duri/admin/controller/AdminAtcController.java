package com.kh.duri.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.service.adminAtcService;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;



@Controller
public class AdminAtcController {
	@Autowired
	private adminAtcService aas;




	//크라우드펀딩 승인목록
	@RequestMapping("adminCrowd.ad")
	public String adminCrowdList(Model model1, Model model2) {
		
		try {
			List<adminFundingList>adminMoneyFundingList = aas.adminMoneyCrowdList();
			List<adminFundingList>adminGoodsFundingList = aas.adminGoodsFundingList();
			
			model1.addAttribute("adminMoneyFundingList", adminMoneyFundingList);
			model2.addAttribute("adminGoodsFundingList", adminGoodsFundingList);
			
			return "admin/adminCrowd";
			
			}catch(ListException e) {
				model1.addAttribute("msg", e.getMessage());
				model2.addAttribute("msg", e.getMessage());
				
				return "admin/adminCrowd";
			}
		
	}
	//크라우드 금액 승인글 상세페이지
	@RequestMapping("adminCrowdDetailMoney.ad")
	public String adminCrowdDetailMoney(HttpServletRequest request, HttpServletResponse response,Model model1,Model model2,adminMember m, adminFundingList f) {
		
		int fundingnum = Integer.parseInt(request.getParameter("fundingnum"));
		int membernum = Integer.parseInt(request.getParameter("membernum"));
		
		
		
		m.setMno(membernum);
		f.setfNo(fundingnum);
		
		adminMember CrowdMemInfo;
		adminFundingList CrowdFundInfo;
		
		try {
			CrowdMemInfo = aas.CrowdMemInfoDetail(m);
			CrowdFundInfo = aas.CrowdFundInfoDetail(f);
			
			model1.addAttribute("CrowdMemInfo", CrowdMemInfo);
			model2.addAttribute("CrowdFundInfo", CrowdFundInfo);
			
			return "admin/adminCrowdDetailMoney";
			
		} catch (ListException e) {

			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminCrowdDetailMoney";
		}
		
		
	}
	//크라우드 물품 승인글 상세페이지
	@RequestMapping("adminCrowdDetailGoods.ad")
	public String adminCrowdDetailGoods(HttpServletRequest request, HttpServletResponse response,Model model1,Model model2,adminMember m, adminFundingList f) {
		
		int fundingnum = Integer.parseInt(request.getParameter("fundingnum"));
		int membernum = Integer.parseInt(request.getParameter("membernum"));
		
		
		
		m.setMno(membernum);
		f.setfNo(fundingnum);
		
		adminMember CrowdMemGoodsInfo;
		List<adminFundingList> CrowdFundGoodsInfo;
		
		try {
			CrowdMemGoodsInfo = aas.CrowdMemInfoDetail(m);
			CrowdFundGoodsInfo = aas.CrowdFundGoodsInfo(f);
			System.out.println("CrowdFundGoodsInfo:"+CrowdFundGoodsInfo);
			model1.addAttribute("CrowdMemGoodsInfo", CrowdMemGoodsInfo);
			model2.addAttribute("CrowdFundGoodsInfo", CrowdFundGoodsInfo);
			
			return "admin/adminCrowdDetailGoods";
			
		} catch (ListException e) {
			
			model1.addAttribute("msg", e.getMessage());
			model2.addAttribute("msg", e.getMessage());
			
			return "admin/adminCrowdDetailGoods";
		}
		
		
	}
	
	
	//관리자 메인페이지
	@RequestMapping("adminMain.ad")
	public String adminMain() {
		return "admin/adminMain";
	}
	
	//관리자 행복두리 Q&A 목록
	@RequestMapping("adminQnA.ad")
	public String adminQnAList(Model model) {  
		
		try {
			List<adminQnA>adminQnAList = aas.adminQnAList();			
			model.addAttribute("adminQnAList", adminQnAList);		
			return "admin/adminQnA";			
			}catch(ListException e) {
				model.addAttribute("msg", e.getMessage());				
				return "admin/adminQnA";
			}		
	}
	//관리자 행복두리 Q&A상세보기
	@RequestMapping("adminQnADetail.ad")
	public String adminQnADetail(HttpServletRequest request, HttpServletResponse response,Model model,adminQnA q) {		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		int Qnanum = Integer.parseInt(request.getParameter("Qnanum"));
		q.setQ_Mno(Mnonum);
		q.setqNo(Qnanum);		
		adminQnA adminQnADetail;		
		try {
			adminQnADetail = aas.adminQnADetail(q);			
			model.addAttribute("adminQnADetail", adminQnADetail);
			return "admin/adminQnADetail";			
		} catch (ListException e) {			
			model.addAttribute("msg", e.getMessage());
			return "admin/adminQnADetail";
		}
	}	
	//관리자 나눔두리 Q&A 목록
		@RequestMapping("adminNanumQnA.ad")
		public String adminNanumQnAList(Model model) {  			
			try {
				List<adminQnA>adminNanumQnAList = aas.adminNanumQnAList();			
				model.addAttribute("adminNanumQnAList", adminNanumQnAList);		
				return "admin/adminNanumQnA";			
				}catch(ListException e) {
					model.addAttribute("msg", e.getMessage());				
					return "admin/adminNanumQnA";
				}		
		}	
	//관리자 나눔두리 Q&A상세보기
	@RequestMapping("adminNanumQnADetail.ad")
	public String adminNanumQnADetail(HttpServletRequest request, HttpServletResponse response,Model model,adminQnA q) {		
		int Mnonum = Integer.parseInt(request.getParameter("Mnonum"));
		int Qnanum = Integer.parseInt(request.getParameter("Qnanum"));
		q.setQ_Mno(Mnonum);
		q.setqNo(Qnanum);		
		adminQnA adminNanumQnADetail;		
		try {
			adminNanumQnADetail = aas.adminNanumQnADetail(q);			
			model.addAttribute("adminNanumQnADetail", adminNanumQnADetail);
			return "admin/adminNanumQnADetail";			
		} catch (ListException e) {			
			model.addAttribute("msg", e.getMessage());
		return "admin/adminNanumQnADetail";
		}
	}
	
	//관리자 QnA 답변 달기 -> ajax를 이용하자! 
 	@RequestMapping("adminNanumReply.ad")
 	public @ResponseBody String adminNanumReply(@RequestParam int qNo, @RequestParam String qAnswer, HttpServletRequest request, HttpServletResponse response,Model model) {		
		/*System.out.println("admin qNo"+qNo);
		System.out.println("admin qAnswer"+qAnswer);	*/
		adminQnA q = new adminQnA();
		q.setqAnswer(qAnswer);
		q.setqNo(qNo);		
		/*System.out.println("admin q"+q);*/
		try {
			int result = aas.insertReply(q);
			return qAnswer;
		} catch (ListException e) {
			return "";
		}		
 	}
 	

	
}
