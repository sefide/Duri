package com.kh.duri.Nanummember.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.dao.NanumMemberDao;
import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

@Service
public class NanumMemberServiceImpl implements NanumMemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NanumMemberDao nd;


	//찜한 정기 후원 개수 조회
	@Override
	public int getLikeDirectListCount(Member m) throws NanumException {
		int listCount = nd.getLikeDirectListCount(sqlSession ,m);	
		return listCount;
	}
	//찜한 정기 후원  조회
	@Override
	public List<FundInterest> selectLikeDirect(Member m, PageInfo pi) throws NanumException {
		List<FundInterest> dlList = nd.selectLikeDirect(sqlSession,m,pi);
		return dlList;
	}
	//찜한 금액 크라우드 펀딩 개수 조회
	@Override
	public int getLikeMoneyCloudListCount(Member m) throws NanumException {
		int listCount = nd.getLikeMoneyCloudListCount(sqlSession ,m);	
		return listCount;
	}
	// 찜한 금액 크라우드 펀딩  조회
	@Override
	public List<FundInterest> selectLikeMoneyCloud(Member m, PageInfo pi2) throws NanumException {
		List<FundInterest> dlList = nd.selectLikeMoneyCloud(sqlSession,m,pi2);
		return dlList;
	}
	
	
	
	//크라우드 펀딩 수 가져오기
	@Override
	public HashMap<String, Integer> getCloudCont(Member m) throws NanumException {
		HashMap<String, Integer> cloudCount = nd.getCloudCont(sqlSession, m);
		return cloudCount;
	}
	//크라우드 펀딩 가져오기
	@Override
	public HashMap<String, List<Funding>> selectCloudList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List<Funding>> cloudList = nd.selectCloudList(sqlSession,m,paging);
		return cloudList;
	}
	//정기후원 수 가져오기
	@Override
	public HashMap<String, Integer> getFundCount(Member m) throws NanumException {
		HashMap<String, Integer>  fundCount = nd.getFundCount(sqlSession, m);
		return fundCount;
	}
	//정기후원  가져오기
	@Override
	public HashMap<String, List<SelectDirectFund>> selectFundList(Member m, HashMap<String, PageInfo> paging)throws NanumException {
		HashMap<String, List<SelectDirectFund>> fundList = nd.selectFundList(sqlSession,m,paging);
		return fundList ;		
	}
	//감사편지 수 가져오기
	@Override
	public HashMap<String, Integer> getletterCount(Member m) throws NanumException {
		HashMap<String, Integer>  letterCount = nd.getletterCount(sqlSession, m);
		return letterCount;
	}
	//감사편지  가져오기
	@Override
	public HashMap<String, List<Letter>> selectLetterList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List<Letter>> letterList = nd.selectLetterList(sqlSession,m,paging);
		return letterList;
	}
	
	
	
	
	


}
