package com.kh.duri.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.admin.model.dao.adminNanumDao;
import com.kh.duri.member.model.vo.Member;

@Service
public class adminNanumServiceImpl implements adminNanumService{

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminNanumDao and;
	
	
	@Override
	public ArrayList<Member> adminNanumList() {
		
		ArrayList<Member> list = and.adminNanumList(sqlsession);
		
		return list;
	}
	
	
	
}
