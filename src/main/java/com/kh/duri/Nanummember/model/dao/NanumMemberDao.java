package com.kh.duri.Nanummember.model.dao;

import java.util.HashMap;
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
	
	
	

	//찜한 정기 후원  조회
	List<FundInterest> selectLikeDirect(SqlSessionTemplate sqlSession, Member m, PageInfo pi)throws NanumException;

	// 찜한 금액 크라우드 펀딩  조회
	List<FundInterest> selectLikeMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException;
	
	
	
	
	//크라우드 펀딩 개수 가져오기
	HashMap<String, Integer> getCloudCont(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//크라우드 펀딩 가져오기
	HashMap<String, List<Funding>> selectCloudList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//정기후원 개수 가져오기
	HashMap<String, Integer> getFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//정기후원  가져오기
	HashMap<String, List<SelectDirectFund>> selectFundList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//감사편지 개수 가져오기
	HashMap<String, Integer> getletterCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	//감사편지  가져오기
	HashMap<String, List<Letter>> selectLetterList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//감사편지 상세 가져오기
	List<Letter> selectLetterDetailList(SqlSessionTemplate sqlSession, int leNo) throws NanumException;
	//찜한 후원 개수 가져오기
	HashMap<String, Integer> getLikeListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException;
	
	
	
	
	

	
	
	
	
}
