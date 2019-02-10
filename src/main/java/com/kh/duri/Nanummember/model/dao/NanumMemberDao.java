package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberDao {
	
	//진행중인 금액 크라우드펀딩 조회
	List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m);

}
