package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminNanumService {

	//나눔두리 전체목록
	List<adminMember> adminNanumList() throws ListException;
	//나눔두리 기부영수증 목록
	List<Donatelist> adminDonatelist() throws ListException;
	//나눔두리 상세보기 - 기본정보
	adminMember NanumDetail(adminMember m) throws ListException;
	//나눔두리 상세보기 - 정기후원 내역
	List<adminDirectList> directList(adminDirectList ad) throws ListException;
	//나눔두리 상세보기 - 크라우드 금액 펀딩 내역
	List<adminFundingHistoryList> fundingMoneyList(adminFundingHistoryList ahf)throws ListException;
	//나눔두리 상세보기 - 크라우드 물품 펀딩 내역
	List<adminFundingHistoryList> fundingGoodsList(adminFundingHistoryList ahf)throws ListException;

}
