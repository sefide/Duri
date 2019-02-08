package com.kh.duri.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.vo.Member;

@Repository
public class adminNanumDaoImpl implements adminNanumDao{

	@Override
	public ArrayList<Member> adminNanumList(SqlSessionTemplate sqlsession) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public ArrayList<Member> adminNanumList(SqlSessionTemplate sqlsession) {

		return sqlsession.selectList("Admin.adminNanumList");
	}
*/
}
