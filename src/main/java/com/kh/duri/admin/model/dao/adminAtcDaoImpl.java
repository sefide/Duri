package com.kh.duri.admin.model.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;

@Repository
public class adminAtcDaoImpl implements adminAtcDao{

	//크라우드 금액 펀딩 승인목록
	@Override
	public List<adminFundingList> adminMoneyCrowdList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminMoneyCrowdList");
	}
	//크라우드 물품 펀딩 승인목록
	@Override
	public List<adminFundingList> adminGoodsFundingList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminGoodsFundingList");
	}
	//크라우드 펀딩 상세페이지 -회원정보
	@Override
	public adminMember CrowdMemInfoDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {
		return sqlsession.selectOne("Admin.CrowdMemInfoDetail",m);
	}
	//크라우드 펀딩 상세페이지 -펀딩정보
	@Override
	public adminFundingList CrowdFundInfoDetail(SqlSessionTemplate sqlsession, adminFundingList f) throws ListException {
		return sqlsession.selectOne("Admin.CrowdFundInfoDetail",f);
	}
	
	
}
