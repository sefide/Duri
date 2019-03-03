package com.kh.duri.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;

public interface MemberDao {

	Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	Member loginNaCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int userIdCheck(SqlSessionTemplate sqlSession, String mid2) throws LoginException;

	int insertNanum(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	int NickCheck(SqlSessionTemplate sqlSession, String mNick);

	int insertHappy(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword2(SqlSessionTemplate sqlSession, Member m);

	int updateHappy(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	String findId(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int updatePassword(SqlSessionTemplate sqlSession, Member m) throws LoginException;

}
