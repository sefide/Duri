package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberDao {
	
	//금액 크라우드펀딩 개수 조회 - 진행
	int getPointListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//금액 크라우드펀딩 조회 - 진행
	List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException;	
	//금액 크라우드펀딩 개수 조회 - 종료
	int getPointListCount2(SqlSessionTemplate sqlSession, Member m) throws NanumException;	
	//금액 크라우드펀딩 조회 - 종료
	List<Funding> selectMoneyCloud2(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;	
	//정기후원 개수 조회 - 진행
	int getDirectFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//정기후원 조회 - 진행
	List<SelectDirectFund> selectDirectFund(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException;
	//정기후원 개수 조회 - 종료
	int getDirectFundCount2(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//정기후원 조회 - 종료
	List<SelectDirectFund> selectDirectFund2(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;
	//정기 감사편지 개수 조회 - 진행
	int getDirectLetterListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//정기 감사편지 조회 - 진행
	List<Letter> selectDirectLetter(SqlSessionTemplate sqlSession, Member m, PageInfo pi)throws NanumException;
	
	
	
}
