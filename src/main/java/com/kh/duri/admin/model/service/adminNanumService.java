package com.kh.duri.admin.model.service;

import java.util.List;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.member.model.vo.Member;

public interface adminNanumService {

	//나눔두리 전체목록
	List<Member> adminNanumList() throws ListException;
	//나눔두리 기부영수증 목록
	List<Donatelist> adminDonatelist() throws ListException;

}
