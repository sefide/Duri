package com.kh.duri.Nanummember.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.FundItem;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.QnA;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberDao {
	
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
	//찜한 후원  가져오기
	HashMap<String, List<FundInterest>> selectLikeFundList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//종료된 물품 크라우드 펀딩 - 물품 가져오기
	HashMap<String, FundItem> selectEndItem(SqlSessionTemplate sqlSession, Member m, int fno)throws NanumException;
	//QnA 개수 가져오기
	int getQnAListCount(SqlSessionTemplate sqlSession, Member m)throws NanumException;
	//QnA 목록 가져오기
	List<QnA> selectQnAList(SqlSessionTemplate sqlSession, PageInfo pi, Member m) throws NanumException;
	//QnA 상세 가져오기
	List<QnA> selectQnADetail(SqlSessionTemplate sqlSession, int qNo)throws NanumException;
	
	
	
	
	
	

	
	
	
	
}
