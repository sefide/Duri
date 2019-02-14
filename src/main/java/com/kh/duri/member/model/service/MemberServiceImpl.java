package com.kh.duri.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.duri.member.model.dao.MemberDao;
import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao md;

	@Override
	public Member loginMember(Member m) throws LoginException {
		//System.out.println(sqlSession.hashCode());
		
				Member loginUser = md.loginCheck(sqlSession, m);	//DAO로 Member 정보와 sqlSession 전송
				
				return loginUser;


	}

	@Override
	public Member loginNaMember(Member m) throws LoginException {
		Member loginUser2 = md.loginNaCheck(sqlSession, m);
		
		return loginUser2;
	}



}
