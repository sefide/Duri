package com.kh.duri.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.exception.LoginException;
import com.kh.duri.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	
	//행복두리 로그인 정보조회 메소드
	@Override
	public Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		Member loginUser = sqlSession.selectOne("Member.loginCheck",m);	//받아온 m을 이용해 mapper에서 sql문 실행해서 받아온 값 저장 
		
		System.out.println("Dao Member : "+loginUser);
		
		if(loginUser ==null) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");	//예외처리
		}
		
		return loginUser;



	}

	
	//나눔두리 로그인 정보조회 메소드
	@Override
	public Member loginNaCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		Member loginUser2 = sqlSession.selectOne("Member.loginNaCheck",m);
		
		System.out.println("Dao Member2 : "+loginUser2);
		
		if(loginUser2 ==null) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");
		}
		
		return loginUser2;
	}

}
