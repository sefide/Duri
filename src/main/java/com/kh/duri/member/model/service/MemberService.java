package com.kh.duri.member.model.service;

import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;	//행복두리 로그인 정보조회 메소드

	Member loginNaMember(Member m) throws LoginException;	//나눔두리 로그인 정보조회 메소드

	int idcheck(String mid2) throws LoginException;

	int insertMember(Member m) throws LoginException;

	int NickCheck(String mNick);

	int insertHappyMember(Member m);



}
