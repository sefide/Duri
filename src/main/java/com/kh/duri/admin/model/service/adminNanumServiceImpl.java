package com.kh.duri.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminNanumDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.admin.model.vo.adminMember;

@Service
public class adminNanumServiceImpl implements adminNanumService{

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminNanumDao and;
	
	//나눔두리 전체목록
	@Override
	public List<adminMember> adminNanumList() throws ListException {
		
		List<adminMember> list = and.adminNanumList(sqlsession);
		
		return list;
	}

	//나눔두리 기부영수증목록
	@Override
	public List<Donatelist> adminDonatelist() throws ListException{
		
		List<Donatelist> list = and.adminDonateList(sqlsession);
		
		return list;
	}

	//나눔두리 상세조회-기본정보
	@Override
	public adminMember NanumDetail(adminMember m) throws ListException {

		adminMember NanumDetail = and.NanumDetail(sqlsession, m);
		
		return NanumDetail;
	}
	
	
	
}
