package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminHappyDao {

	//행복두리 전체목록
	List<adminMember> adminHappyList(SqlSessionTemplate sqlsession) throws ListException;

	//행복두리 [기존회원(1)/신규회원(3)] 상세페이지 (공통페이지)
	adminMember HappyDetail(SqlSessionTemplate sqlsession, adminMember m)throws ListException;
	//행복두리 승인 상세 페이지[자개소개 갱신/증빙성 갱신/증빙서 비갱신]
	List<adminMember> HappyAccDetail(SqlSessionTemplate sqlsession, adminMember m)throws ListException;
	//행복두리 상세보기 - 정기후원 내역
	List<adminDirectList> HappydirectList(SqlSessionTemplate sqlsession, adminDirectList ad)throws ListException;
	//행복두리 상세보기 - 크라우드 금액 펀딩 내역
	List<adminFundingHistoryList> HappyfundingMoneyList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;
	//행복두리 상세보기 - 크라우드 물품 펀딩 내역
	List<adminFundingHistoryList> HappyfundingGoodsList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;
	//행복두리 승인목록 -신규리스트
	List<adminMember> adminHappyNewList(SqlSessionTemplate sqlsession)throws ListException;
	//행복두리 승인목록 -자기소개 갱신 목록
	List<adminMember> adminHappyMprList(SqlSessionTemplate sqlsession)throws ListException;
	//행복두리 승인목록 -증빙서류 갱신 목록
	List<adminMember> adminHappyAttachList(SqlSessionTemplate sqlsession)throws ListException;
	//행복두리 승인목록 -증빙서류 비갱신 목록
	List<adminMember> adminHappyNotAttachList(SqlSessionTemplate sqlsession)throws ListException;

	
	
	//신규행복두리 승인버튼
	int adminNewHappyMemberAgree(SqlSessionTemplate sqlsession, adminMember m);
	int adminNewHappyAttachAgree(SqlSessionTemplate sqlsession, adminMember m);
	//자기소개 갱신 행복두리 승인버튼
	int adminMprHappyAgree(SqlSessionTemplate sqlsession, adminMember m);
	//증빙서류 갱신 회원 승인 버튼
	int adminAttachHappyMemberAgree(SqlSessionTemplate sqlsession, adminMember m);
	int adminAttachHappyAttach1Agree(SqlSessionTemplate sqlsession, adminMember m);
	int adminAttachHappyAttach2Agree(SqlSessionTemplate sqlsession, adminMember m);
	//신규행복두리 반려버튼
	int adminNewHappyMemberRefuse(SqlSessionTemplate sqlsession, adminMember m);
	int adminNewHappyAttachRefuse(SqlSessionTemplate sqlsession, adminMember m);
	



}
