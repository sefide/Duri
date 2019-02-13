package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminHappyDao {

	//행복두리 전체목록
	List<adminMember> adminHappyList(SqlSessionTemplate sqlsession) throws ListException;

	//행복두리 상세조회(기존회원)
	adminMember HappyDetail(SqlSessionTemplate sqlsession, adminMember m)throws ListException;

}
