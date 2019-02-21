package com.kh.duri.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminAtcDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;

@Service
public class adminAtcServiceImpl implements adminAtcService{
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminAtcDao aad;

	//크라우드 금액 펀딩 승인목록
	@Override
	public List<adminFundingList> adminMoneyCrowdList() throws ListException {
		List<adminFundingList>list = aad.adminMoneyCrowdList(sqlsession);
		return list;
	}
	//크라우드 물품 펀딩 승인목록
	@Override
	public List<adminFundingList> adminGoodsFundingList() throws ListException {
		List<adminFundingList>list = aad.adminGoodsFundingList(sqlsession);
		return list;
	}
	
	//크라우드 펀딩 상세페이지 -회원정보
	@Override
	public adminMember CrowdMemInfoDetail(adminMember m) throws ListException {
		adminMember CrowdMemInfoDetail = aad.CrowdMemInfoDetail(sqlsession,m);
		return CrowdMemInfoDetail;
	}
	
	//크라우드 펀딩 상세페이지 -펀딩정보(금액)
	@Override
	public adminFundingList CrowdFundInfoDetail(adminFundingList f) throws ListException {
		adminFundingList CrowdFundInfoDetail = aad.CrowdFundInfoDetail(sqlsession,f);
		return CrowdFundInfoDetail;
	}
	//크라우드 펀딩 상세페이지 -펀딩정보(물품)
	@Override
	public List<adminFundingList> CrowdFundGoodsInfo(adminFundingList f) throws ListException {
		List<adminFundingList> CrowdFundGoodsInfo = aad.CrowdFundGoodsInfo(sqlsession,f);
		return CrowdFundGoodsInfo;
	}
	//관리자 행복두리 Q&A 목록
	@Override
	public List<adminQnA> adminQnAList() throws ListException {
		List<adminQnA>list = aad.adminQnAList(sqlsession);
		return list;
	}
	//관리자 행복두리 Q&A 상세보기
	@Override
	public adminQnA adminQnADetail(adminQnA q) throws ListException {
		adminQnA adminQnADetail = aad.adminQnADetail(sqlsession,q);
		return adminQnADetail;
	}

}
