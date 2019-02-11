package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.member.model.vo.Member;

@Repository
public class NanumMemberDaoImpl implements NanumMemberDao {

	@Override
	public List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m) {
		/*List<Funding> fList = sqlSession.selectOne("Nanum.selectMoneyCloud",m);*/
		
		return null;
	}

}
