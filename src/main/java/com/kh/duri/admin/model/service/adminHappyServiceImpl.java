package com.kh.duri.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminHappyDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminMember;

@Service
public class adminHappyServiceImpl implements adminHappyService{

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminHappyDao ahd;
	
	//행복두리 전체 목록
	@Override
	public List<adminMember> adminHappyList() throws ListException {
		
		List<adminMember> list = ahd.adminHappyList(sqlsession);
		
		return list;
	}

	//행복두리 상세조회(기존회원)
	@Override
	public List<adminMember> adminHappyDetailList(adminMember m) throws ListException {
		
		List<adminMember> list = ahd.adminHappyDetailList(sqlsession, m);
		
		return null;
	}

}
