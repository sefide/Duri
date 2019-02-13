package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminMember;

@Repository
public class adminHappyDaoImpl implements adminHappyDao{

	//행복두리 전체조회
	@Override
	public List<adminMember> adminHappyList(SqlSessionTemplate sqlsession) throws ListException{
		
		return sqlsession.selectList("Admin.adminHappyList");
	}
	//행복두리 상세조회(기존회원)
	@Override
	public adminMember HappyDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {

		
		return sqlsession.selectOne("Admin.adminHappyDetail",m);
	}

}
