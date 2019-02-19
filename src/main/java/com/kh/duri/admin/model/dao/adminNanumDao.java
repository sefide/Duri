package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminNanumDao {
	
	//나눔두리 전체목록
	List<adminMember> adminNanumList(SqlSessionTemplate sqlsession) throws ListException;
	//나눔두리 기부영수증목록
	List<Donatelist> adminDonateList(SqlSessionTemplate sqlsession) throws ListException;
	//나눔두리 상세조회 - 기본정보
	adminMember NanumDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException;
	//나눔두리 상세보기 - 정기후원 내역
	List<adminDirectList> directList(SqlSessionTemplate sqlsession, adminDirectList ad)throws ListException;
	//나눔두리 상세보기 - 크라우드 금액 펀딩 내역
	List<adminFundingHistoryList> fundingMoneyList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;
	//나눔두리 상세보기 - 크라우드 물품 펀딩 내역
	List<adminFundingHistoryList> fundingGoodsList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)throws ListException;

	
}
