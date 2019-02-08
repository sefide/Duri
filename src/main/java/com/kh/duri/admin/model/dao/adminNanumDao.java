package com.kh.duri.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.member.model.vo.Member;

public interface adminNanumDao {

	ArrayList<Member> adminNanumList(SqlSessionTemplate sqlsession);

	
}
