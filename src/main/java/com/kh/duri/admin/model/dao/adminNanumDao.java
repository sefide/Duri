package com.kh.duri.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Donatelist;
import com.kh.duri.member.model.vo.Member;

public interface adminNanumDao {
	
	//나눔두리 전체목록
	List<Member> adminNanumList(SqlSessionTemplate sqlsession) throws ListException;
	//나눔두리 기부영수증목록
	List<Donatelist> adminDonateList(SqlSessionTemplate sqlsession) throws ListException;

	
}
