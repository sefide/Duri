package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
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
	public List<adminMember> adminNanumDetailList(SqlSessionTemplate sqlsession, adminMember m) throws ListException {
		
		return sqlsession.selectList("Admin.adminNanumDetailList",m);
	}

}
