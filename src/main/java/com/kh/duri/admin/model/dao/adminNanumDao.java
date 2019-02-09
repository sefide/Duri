package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.member.model.vo.Member;

public interface adminNanumDao {

	List<Member> adminNanumList(SqlSessionTemplate sqlsession);

	
}
