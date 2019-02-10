package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.member.model.vo.Member;

@Repository
public class adminNanumDaoImpl implements adminNanumDao{

	//나눔두리 전체목록
	@Override
	public List<Member> adminNanumList(SqlSessionTemplate sqlsession) throws ListException{

		return sqlsession.selectList("Admin.adminNanumList");
	}
	//나눔두리 기부영수증목록
	@Override
	public List<Donatelist> adminDonateList(SqlSessionTemplate sqlsession) throws ListException{
		
		return sqlsession.selectList("Admin.adminDonateList");
	}

}
