package com.kh.duri.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.board.model.exception.BoardException;
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
		
		/*System.out.println("Dao Member2 : "+loginUser2);*/
		
		if(loginUser2 ==null) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");
		}
		
		return loginUser2;
	}

	//아이디 중복확인
	@Override
	public int userIdCheck(SqlSessionTemplate sqlSession, String mid2) throws LoginException {
		/*System.out.println(mid2);*/
		int count= sqlSession.selectOne("Member.userIdCheck",mid2);
		
		/*System.out.println("Dao 아이디 중복확인 count : "+count);*/
		
		if(count < 0) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");
		}
		
		return count;
	}

	//나눔두리 회원가입
	@Override
	public int insertNanum(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		int result = sqlSession.insert("Member.insertNanum", m);

		/*System.out.println("나눔두리 회원가입 성공여부 : " + result);*/
		
		
		 if(result == 0) { 
			 throw new LoginException("작성실패!"); //예외처리
		 
		 }
		 

		return result;
	}

	
	//로그인시 암호화된 비밀번호 가져오기 - 나눔두리
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		String m2 = sqlSession.selectOne("Member.selectPwd",m); 
		/*System.out.println(m2);*/
		return m2;

	}
	
	
	//로그인시 암호화된 비밀번호 가져오기 - 행복두리
	@Override
	public String selectEncPassword2(SqlSessionTemplate sqlSession, Member m) {
		String m2 = sqlSession.selectOne("Member.selectPwd2",m); 
		/*System.out.println(m2);*/
		return m2;
	}
	

	
	//닉네임 중복확인
	@Override
	public int NickCheck(SqlSessionTemplate sqlSession, String mNick) {
		/*System.out.println(mNick);*/
		int count= sqlSession.selectOne("Member.NickCheck",mNick);
		
		/*System.out.println("Dao 닉네임 중복확인 count : "+count);*/
		
	/*	if(count < 0) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");
		}*/
		
		return count;
	}


	@Override
	public int insertHappy(SqlSessionTemplate sqlSession, Member m) {
		int result = sqlSession.insert("Member.insertHappy",m);
		int mno = sqlSession.selectOne("Member.selectMnoCurrval");
		m.setMno(mno);
		int result2 = sqlSession.insert("Member.insertHappyPhoto",m);
		
		System.out.println("나눔두리 회원가입 성공여부 : " + result);
		System.out.println("나눔두리 회원가입 성공여부 : " + result2);
		
		/* if(result == 0) { 
			 throw new LoginException("작성실패!"); //예외처리
		 
		 }*/
		 

		return result;
	}


	@Override
	public int updateHappy(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		int result = sqlSession.insert("Member.updateHappy",m);
		
		System.out.println("행복두리 회원수정 성공여부 : " + result);

		
		 if(result == 0) { 
			 throw new LoginException("작성실패!"); //예외처리
		 
		 }
		 

		return result;
	}


	@Override
	public String findId(SqlSessionTemplate sqlSession,Member m) throws LoginException {
		String mid = sqlSession.selectOne("Member.findId",m); 
		System.out.println(mid);
		 if(mid == null) { 
			 throw new LoginException("작성실패!"); //예외처리
		 
		 }
		return mid;
	}


	@Override
	public int updatePassword(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		int result = sqlSession.insert("Member.updatePass",m);
		
		System.out.println("행복두리 비밀번호 찾기 성공여부 : " + result);

		
		 if(result == 0) { 
			 throw new LoginException("작성실패!"); //예외처리
		 
		 }
		 

		return result;
	}


	

}
