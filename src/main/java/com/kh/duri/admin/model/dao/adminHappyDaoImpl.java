package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

@Repository
public class adminHappyDaoImpl implements adminHappyDao{

	//행복두리 전체조회
	@Override
	public List<adminMember> adminHappyList(SqlSessionTemplate sqlsession) throws ListException{
		
		return sqlsession.selectList("Admin.adminHappyList");
	}
	//행복두리 [기존회원(1)/신규회원(3)] 상세페이지 (공통페이지)
	@Override
	public adminMember HappyDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {

		
		return sqlsession.selectOne("Admin.adminHappyDetail",m);
	}
	//행복두리 승인 상세 페이지[자개소개 갱신/증빙성 갱신/증빙서 비갱신]
	@Override
	public List<adminMember> HappyAccDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {
		
		return sqlsession.selectList("Admin.adminHappyAccDetail",m);
	}
		
		
	//행복두리 상세보기 - 정기후원 내역
	@Override
	public List<adminDirectList> HappydirectList(SqlSessionTemplate sqlsession, adminDirectList ad)throws ListException {
		
		return sqlsession.selectList("Admin.adminHappydirectList",ad);
	}
	//행복두리 상세보기 - 크라우드 금액 펀딩 내역
	@Override
	public List<adminFundingHistoryList> HappyfundingMoneyList(SqlSessionTemplate sqlsession,adminFundingHistoryList ahf) throws ListException {
		
		return sqlsession.selectList("Admin.adminHappyfundingMoneyList",ahf);
	}
	//행복두리 상세보기 - 크라우드 물품 펀딩 내역
	@Override
	public List<adminFundingHistoryList> HappyfundingGoodsList(SqlSessionTemplate sqlsession,adminFundingHistoryList ahf) throws ListException {
		
		return sqlsession.selectList("Admin.adminHappyfundingGoodsList",ahf);
	}
	//행복두리 승인목록 -신규리스트
	@Override
	public List<adminMember> adminHappyNewList(SqlSessionTemplate sqlsession) throws ListException {
		
		return sqlsession.selectList("Admin.adminHappyNewList");
	}
	//행복두리 승인목록 -자기소개 갱신 목록
	@Override
	public List<adminMember> adminHappyMprList(SqlSessionTemplate sqlsession) throws ListException {

		return sqlsession.selectList("Admin.adminHappyMprList");
	}
	//행복두리 승인목록 -증빙서류 갱신 목록
	@Override
	public List<adminMember> adminHappyAttachList(SqlSessionTemplate sqlsession) throws ListException {

		return sqlsession.selectList("Admin.adminHappyAttachList");
	}
	//행복두리 승인목록 -증빙서류 비갱신 목록
	@Override
	public List<adminMember> adminHappyNotAttachList(SqlSessionTemplate sqlsession) throws ListException {

		return sqlsession.selectList("Admin.adminHappyNotAttachList");
	}
	

}
