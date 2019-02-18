package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;

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

}
