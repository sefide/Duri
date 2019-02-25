package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminHappyService {

	//행복두리 전체목록
	List<adminMember> adminHappyList() throws ListException;
	//행복두리 [기존회원(1)/신규회원(3)] 상세페이지 (공통페이지)
	adminMember HappyDetail(adminMember m)throws ListException;
	//행복두리 상세보기 - 정기후원 내역
	List<adminDirectList> HappydirectList(adminDirectList ad)throws ListException;
	//행복두리 상세보기 - 크라우드 금액 펀딩 내역
	List<adminFundingHistoryList> HappyfundingMoneyList(adminFundingHistoryList ahf)throws ListException;
	//행복두리 상세보기 - 크라우드 물품 펀딩 내역
	List<adminFundingHistoryList> HappyfundingGoodsList(adminFundingHistoryList ahf)throws ListException;
	//행복두리 승인목록 -신규리스트
	List<adminMember> adminHappyNewList()throws ListException;
	//행복두리 승인목록 -자기소개 갱신 목록
	List<adminMember> adminHappyMprList()throws ListException;
	//행복두리 승인목록 -증빙서류 갱신 목록
	List<adminMember> adminHappyAttachList()throws ListException;
	//행복두리 승인목록 -증빙서류 비갱신 목록
	List<adminMember> adminHappyNotAttachList()throws ListException;
}
