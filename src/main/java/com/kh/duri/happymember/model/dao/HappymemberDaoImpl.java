package com.kh.duri.happymember.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.member.model.vo.Member;

@Repository
public class HappymemberDaoImpl implements HappymemberDao{

	/*//마이페이지 - 닉네임 불러오기
	@Override
	public Member selectNickName(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		Member selectNickName = sqlSession.selectOne("HappyMember.selectNickName", m);
		
		System.out.println("Dao selectNickName : " + selectNickName);
		
		if(selectNickName == null) {
			throw new MypageException("마이페이지를 불러올 수 없습니다!");
		}
		return selectNickName;
	}*/

}
