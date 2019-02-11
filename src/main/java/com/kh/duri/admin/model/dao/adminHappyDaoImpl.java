package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.member.model.vo.Member;

@Repository
public class adminHappyDaoImpl implements adminHappyDao{

	@Override
	public List<Member> adminHappyList(SqlSessionTemplate sqlsession) throws ListException{
		
		return sqlsession.selectList("Admin.adminHappyList");
	}

}
