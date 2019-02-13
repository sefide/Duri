package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.adminMember;

public interface adminHappyService {

	//행복두리 전체목록
	List<adminMember> adminHappyList() throws ListException;
	//행복두리 상세보기(기존회원)
	adminMember HappyDetail(adminMember m)throws ListException;

}
