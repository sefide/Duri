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

	//행복두리 승인목록 -신규리스트
	List<adminMember> adminHappyNewList(SqlSessionTemplate sqlsession)throws ListException;
	//행복두리 상세보기 - 정기후원 내역
	List<adminDirectList> HappydirectList(SqlSessionTemplate sqlsession, adminDirectList ad)throws ListException;
	//행복두리 상세보기 - 크라우드 금액 펀딩 내역
	List<adminFundingHistoryList> HappyfundingMoneyList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;
	//행복두리 상세보기 - 크라우드 물품 펀딩 내역
	List<adminFundingHistoryList> HappyfundingGoodsList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;

	//행복두리 환급목록


}
