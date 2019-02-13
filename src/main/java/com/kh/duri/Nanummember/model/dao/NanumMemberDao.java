package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberDao {
	
	//금액 크라우드펀딩 개수 조회 - 진행
	int getMoneyCloundListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//금액 크라우드펀딩 조회 - 진행
	List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException;	
	//금액 크라우드펀딩 개수 조회 - 종료
	int getEndMoneyCloundListCount2(SqlSessionTemplate sqlSession, Member m) throws NanumException;	
	//금액 크라우드펀딩 조회 - 종료
	List<Funding> selectMoneyCloud2(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;
	//물품 크라우드펀딩 개수 조회 - 진행
	int getItemCloundListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//물품 크라우드펀딩 조회 - 진행
	List<Funding> selectItemCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi3) throws NanumException;
	//물품 크라우드펀딩 개수 조회 - 종료

	//물품 크라우드펀딩 조회 - 종료
		
	
	
	
	
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
	//금액 크라우드 감사편지 개수 조회 
	int getMoneyCloudLetterListCount(SqlSessionTemplate sqlSession, Member m)throws NanumException;
	//물품 크라우드 감사편지  조회 
	List<Letter> selectMoneyCloudLetter(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;
	//찜한 정기 후원 개수 조회
	int getLikeDirectListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//찜한 정기 후원  조회
	List<FundInterest> selectLikeDirect(SqlSessionTemplate sqlSession, Member m, PageInfo pi)throws NanumException;
	//찜한 금액 크라우드 펀딩 개수 조회
	int getLikeMoneyCloudListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	// 찜한 금액 크라우드 펀딩  조회
	List<FundInterest> selectLikeMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;
	
	
	
	
	
}
