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
	//나눔두리 상세보기 - 기본정보
	List<Member> adminNanumDetailList(Member m) throws ListException;

}
