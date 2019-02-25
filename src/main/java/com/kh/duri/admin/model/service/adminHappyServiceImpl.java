package com.kh.duri.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminHappyDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

@Service
public class adminHappyServiceImpl implements adminHappyService{

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminHappyDao ahd;
	
	//행복두리 전체 목록
	@Override
	public List<adminMember> adminHappyList() throws ListException {
		
		List<adminMember> list = ahd.adminHappyList(sqlsession);
		
		return list;
	}

	//행복두리 [기존회원(1)/신규회원(3)] 상세페이지 (공통페이지)
	@Override
	public adminMember HappyDetail(adminMember m) throws ListException {
		
		adminMember HappyDetail = ahd.HappyDetail(sqlsession, m);
		
		return HappyDetail;
	}
	//행복두리 상세보기 - 정기후원 내역
	@Override
	public List<adminDirectList> HappydirectList(adminDirectList ad) throws ListException {
		
		List<adminDirectList> directList =ahd.HappydirectList(sqlsession,ad);
		
		return directList;
	}
	//행복두리 상세보기 - 크라우드 금액 펀딩 내역
	@Override
	public List<adminFundingHistoryList> HappyfundingMoneyList(adminFundingHistoryList ahf) throws ListException {
		
		List<adminFundingHistoryList> fundingMoneyList =ahd.HappyfundingMoneyList(sqlsession,ahf);
		
		return fundingMoneyList;
	}
	//행복두리 상세보기 - 크라우드 물품 펀딩 내역	
	@Override
	public List<adminFundingHistoryList> HappyfundingGoodsList(adminFundingHistoryList ahf) throws ListException {
		
		List<adminFundingHistoryList> fundingGoodsList =ahd.HappyfundingGoodsList(sqlsession,ahf);
		
		return fundingGoodsList;
	}
	//행복두리 승인목록 -신규리스트
	@Override
	public List<adminMember> adminHappyNewList() throws ListException {
		
		List<adminMember> list = ahd.adminHappyNewList(sqlsession);
		
		return list;
	}
	//행복두리 승인목록 -자기소개 갱신 목록
	@Override
	public List<adminMember> adminHappyMprList() throws ListException {

		List<adminMember> list = ahd.adminHappyMprList(sqlsession);
		
		return list;
	}
	//행복두리 승인목록 -증빙서류 갱신 목록
	@Override
	public List<adminMember> adminHappyAttachList() throws ListException {

		List<adminMember> list = ahd.adminHappyAttachList(sqlsession);
		
		return list;
	}
	//행복두리 승인목록 -증빙서류 비갱신 목록
	@Override
	public List<adminMember> adminHappyNotAttachList() throws ListException {

		List<adminMember> list = ahd.adminHappyNotAttachList(sqlsession);
		
		return list;
	}

	
}
