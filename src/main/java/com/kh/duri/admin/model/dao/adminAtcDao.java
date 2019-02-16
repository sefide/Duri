package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminAtcDao {

	//크라우드 금액 펀딩 승인목록
	List<adminFundingList> adminMoneyCrowdList(SqlSessionTemplate sqlsession) throws ListException;
	//크라우드 물품 펀딩 승인목록
	List<adminFundingList> adminGoodsFundingList(SqlSessionTemplate sqlsession)throws ListException;
	//크라우드 펀딩 상세페이지 -회원정보
	adminMember CrowdMemInfoDetail(SqlSessionTemplate sqlsession, adminMember m)throws ListException;
	//크라우드 펀딩 상세페이지 -펀딩정보
	adminFundingList CrowdFundInfoDetail(SqlSessionTemplate sqlsession, adminFundingList f)throws ListException;
	
}
