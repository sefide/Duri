package com.kh.duri.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;

public interface MemberDao {

	Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	Member loginNaCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int userIdCheck(SqlSessionTemplate sqlSession, String mid2) throws LoginException;

}
