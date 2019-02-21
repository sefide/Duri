package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;

public interface adminAtcService {

	//크라우드 금액 펀딩 승인목록
	List<adminFundingList> adminMoneyCrowdList() throws ListException;
	//크라우드 물품 펀딩 승인 목록
	List<adminFundingList> adminGoodsFundingList() throws ListException;
	//크라우드 펀딩 상세페이지 -회원정보
	adminMember CrowdMemInfoDetail(adminMember m)throws ListException;
	//크라우드 펀딩 상세페이지 -펀딩정보(금액)
	adminFundingList CrowdFundInfoDetail(adminFundingList f)throws ListException;
	//크라우드 펀딩 상세페이지 - 펀딩정보(물품)
	List<adminFundingList> CrowdFundGoodsInfo(adminFundingList f)throws ListException;
	//관리자 행복두리 Q&A 목록
	List<adminQnA> adminQnAList()throws ListException;
	//관리자 행복두리 Q&A 상세보기
	adminQnA adminQnADetail(adminQnA q)throws ListException;
	//관리자 나눔두리 Q&A 목록
	List<adminQnA> adminNanumQnAList() throws ListException;
	//관리자 나눔두리 Q&A 상세보기
	adminQnA adminNanumQnADetail(adminQnA q)throws ListException;
	//관리자 나눔두리 Q&A 댓글달기
	int insertReply(adminQnA q)throws ListException;
	

}
