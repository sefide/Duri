package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;

public interface adminAtcDao {

	//크라우드 금액 펀딩 승인목록
	List<adminFundingList> adminMoneyCrowdList(SqlSessionTemplate sqlsession) throws ListException;
	//크라우드 물품 펀딩 승인목록
	List<adminFundingList> adminGoodsFundingList(SqlSessionTemplate sqlsession)throws ListException;
	//크라우드 펀딩 상세페이지 -회원정보
	adminMember CrowdMemInfoDetail(SqlSessionTemplate sqlsession, adminMember m)throws ListException;
	//크라우드 펀딩 상세페이지 -펀딩정보(금액)
	adminFundingList CrowdFundInfoDetail(SqlSessionTemplate sqlsession, adminFundingList f)throws ListException;
	//크라우드 펀딩 상세페이지 -펀딩정보(물품)
	List<adminFundingList> CrowdFundGoodsInfo(SqlSessionTemplate sqlsession, adminFundingList f)throws ListException;
	//관리자 행복두리 Q&A 목록
	List<adminQnA> adminQnAList(SqlSessionTemplate sqlsession)throws ListException;
	//관리자 행복두리 Q&A 상세보기
	adminQnA adminQnADetail(SqlSessionTemplate sqlsession, adminQnA q)throws ListException;

	//관리자 나눔두리 Q&A 목록
	List<adminQnA> adminNanumQnAList(SqlSessionTemplate sqlsession) throws ListException;
	//관리자 나눔두리 Q&A 상세보기
	adminQnA adminNanumQnADetail(SqlSessionTemplate sqlsession, adminQnA q)throws ListException;
	//관리자 나눔두리 Q&A 댓글달기
	int insertReply(SqlSessionTemplate sqlsession, adminQnA q)throws ListException;

	//Q&A 답변하기 버튼
	int adminAnswer(SqlSessionTemplate sqlsession, adminQnA q);
	//크라우드 펀딩 반려 버튼
	int adminCrowdDeny(SqlSessionTemplate sqlsession, adminFundingList af);
	//크라우드 펀딩 승인 버튼
	int adminCrowdApprove(SqlSessionTemplate sqlsession, adminFundingList af);

	
}
