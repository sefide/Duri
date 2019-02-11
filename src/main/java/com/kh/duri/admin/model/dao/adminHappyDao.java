package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.member.model.vo.Member;

public interface adminHappyDao {

	//행복두리 전체목록
	List<Member> adminHappyList(SqlSessionTemplate sqlsession) throws ListException;

}
