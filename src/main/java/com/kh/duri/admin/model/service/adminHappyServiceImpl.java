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
	
	//행복두리 승인 상세 페이지[자개소개 갱신/증빙성 갱신/증빙서 비갱신]
		@Override
		public List<adminMember> HappyAccDetail(adminMember m) throws ListException {
			
			List<adminMember> HappyAccDetail = ahd.HappyAccDetail(sqlsession, m);
			
			return HappyAccDetail;
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

	
	//신규행복두리 승인버튼
	@Override
	public int adminNewHappyMemberAgree(adminMember m) {
		int result = ahd.adminNewHappyMemberAgree(sqlsession,m);
		return result;
	}
	@Override
	public int adminNewHappyAttachAgree(adminMember m) {
		int result = ahd.adminNewHappyAttachAgree(sqlsession,m);
		return result;
	}
	//자기소개 갱신 행복두리 승인버튼
	@Override
	public int adminMprHappyAgree(adminMember m) {
		int result = ahd.adminMprHappyAgree(sqlsession,m);
		return result;
	}
	//증빙서류 갱신 회원 승인 버튼
	@Override
	public int adminAttachHappyMemberAgree(adminMember m) {
		int result = ahd.adminAttachHappyMemberAgree(sqlsession,m);
		return result;
	}
	@Override
	public int adminAttachHappyAttach1Agree(adminMember m) {
		int result = ahd.adminAttachHappyAttach1Agree(sqlsession,m);
		return result;
	}
	@Override
	public int adminAttachHappyAttach2Agree(adminMember m) {
		int result = ahd.adminAttachHappyAttach2Agree(sqlsession,m);
		return result;
	}
	//신규행복두리 반려버튼
	@Override
	public int adminNewHappyMemberRefuse(adminMember m) {
		int result = ahd.adminNewHappyMemberRefuse(sqlsession,m);
		return result;
	}

	@Override
	public int adminNewHappyAttachRefuse(adminMember m) {
		int result = ahd.adminNewHappyAttachRefuse(sqlsession,m);
		return result;
	}
	

	
}
