package com.kh.duri.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminNanumDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.member.model.vo.Member;

@Service
public class adminNanumServiceImpl implements adminNanumService{

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminNanumDao and;
	
	//나눔두리 전체목록
	@Override
	public List<Member> adminNanumList() throws ListException {
		
		List<Member> list = and.adminNanumList(sqlsession);
		
		return list;
	}

	//나눔두리 기부영수증목록
	@Override
	public List<Donatelist> adminDonatelist() throws ListException{
		
		List<Donatelist> list = and.adminDonateList(sqlsession);
		
		return list;
	}
	
	
	
}
