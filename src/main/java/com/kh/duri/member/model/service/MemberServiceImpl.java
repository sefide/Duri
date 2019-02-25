package com.kh.duri.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;




	@Override
	public Member loginMember(Member m) throws LoginException {
		// System.out.println(sqlSession.hashCode());

		Member loginUser = md.loginCheck(sqlSession, m); // DAO로 Member 정보와 sqlSession 전송

		return loginUser;

	}

	//로그인 나눔두리
	@Override
	public Member loginNaMember(Member m) throws LoginException {
		Member loginUser2 = null;
		
		String encPassword =md.selectEncPassword(sqlSession,m);

		
		// matches를 equals라 생각, 평문=암호화된문장  인지 확인
		if(!passwordEncoder.matches(m.getMpwd(),encPassword)) {
			throw new LoginException("로그인 실패!");
		}else {
			m.setMpwd(encPassword);
			loginUser2 = md.loginNaCheck(sqlSession, m);
		}

		
				
		
		return loginUser2;
	}

	
	//아이디 찾기
	@Override
	public int idcheck(String mid2) throws LoginException {
		int count = md.userIdCheck(sqlSession, mid2);
		
		return count;
	}
	
	
	//닉네임 찾기
	@Override
	public int NickCheck(String mNick) {
		int count = md.NickCheck(sqlSession, mNick);
		
		return count;
	}

	
	//회원가입
	@Override
	public int insertMember(Member m) throws LoginException {
		int result = md.insertNanum(sqlSession,m);
		
		return result;	
	}



	


}
