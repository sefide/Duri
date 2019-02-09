package com.kh.duri.happymember.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.member.model.vo.Member;

@Component
public class HappymemberServiceImpl implements HappymemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private HappymemberDao hd;

	
	/*//마이페이지 - 닉네임 불러오기
	@Override
	public Member selectNickName(Member m) throws MypageException {
		Member selectNickName = hd.selectNickName(sqlSession, m);
		
		return selectNickName;
	}*/

}
