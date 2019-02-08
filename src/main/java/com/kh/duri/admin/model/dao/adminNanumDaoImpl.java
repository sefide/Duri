package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.vo.Member;

@Repository
public class adminNanumDaoImpl implements adminNanumDao{


	@Override
	public List<Member> adminNanumList(SqlSessionTemplate sqlsession) {

		return sqlsession.selectList("Admin.adminNanumList");
	}

}
