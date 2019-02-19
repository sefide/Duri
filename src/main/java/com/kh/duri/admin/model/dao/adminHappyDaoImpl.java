package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.RefundList;
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
	//행복두리 승인목록 -신규리스트
	@Override
	public List<adminMember> adminHappyNewList(SqlSessionTemplate sqlsession) throws ListException {
		
		return sqlsession.selectList("Admin.adminHappyNewList");
	}
	//행복두리 환급목록
	

}
