package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.admin.model.vo.adminDirectList;
import com.kh.duri.admin.model.vo.adminFundingHistoryList;
import com.kh.duri.admin.model.vo.adminMember;

@Repository
public class adminNanumDaoImpl implements adminNanumDao{

	//나눔두리 전체목록
	@Override
	public List<adminMember> adminNanumList(SqlSessionTemplate sqlsession) throws ListException{

		return sqlsession.selectList("Admin.adminNanumList");
	}
	//나눔두리 기부영수증목록
	@Override
	public List<Donatelist> adminDonateList(SqlSessionTemplate sqlsession) throws ListException{
		
		return sqlsession.selectList("Admin.adminDonateList");
	}
	//나눔두리 상세조회 - 기본정보
	@Override
	public adminMember NanumDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {
		
		return (adminMember) sqlsession.selectOne("Admin.adminNanumDetail",m);
	}
	//나눔두리 상세보기 - 정기후원 내역
	@Override
	public List<adminDirectList> directList(SqlSessionTemplate sqlsession, adminDirectList ad) throws ListException {
		
		return sqlsession.selectList("Admin.adminNanumDetaildirectList",ad);
	}
	//나눔두리 상세보기 - 크라우드 금액 펀딩 내역
	@Override
	public List<adminFundingHistoryList> fundingMoneyList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)
			throws ListException {
		return sqlsession.selectList("Admin.adminNanumDetailfundingMoneyList",ahf);
	}
	//나눔두리 상세보기 - 크라우드 물품 펀딩 내역
	@Override
	public List<adminFundingHistoryList> fundingGoodsList(SqlSessionTemplate sqlsession, adminFundingHistoryList ahf)
			throws ListException {
		return sqlsession.selectList("Admin.adminNanumDetailfundingGoodsList",ahf);
	}

}
