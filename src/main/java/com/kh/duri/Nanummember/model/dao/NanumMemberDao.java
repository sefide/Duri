package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberDao {
	
	//진행중인 금액 크라우드펀딩 조회
	List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException;
	//진행중인 금액 크라우드펀딩 개수 조회
	int getPointListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//정기후원 개수 조회
	int getDirectFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;

}
