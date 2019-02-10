package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.member.model.vo.Member;

public interface adminHappyService {

	//행복두리 전체목록
	List<Member> adminHappyList() throws ListException;

}
