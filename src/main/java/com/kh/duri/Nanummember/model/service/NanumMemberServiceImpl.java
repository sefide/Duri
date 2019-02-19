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
import com.kh.duri.Nanummember.model.vo.FundItem;
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
	//감사편지 상세 가져오기
	@Override
	public List<Letter> selectLetterDetailList(int leNo) throws NanumException {
		 List<Letter> letterDetailList = nd.selectLetterDetailList(sqlSession,leNo);
		return letterDetailList;
	}	
	//찜한 후원  수 가져오기
	@Override
	public HashMap<String, Integer> getLikeListCount(Member m) throws NanumException {
		 HashMap<String, Integer> LikeListCount = nd.getLikeListCount(sqlSession,m);
		return LikeListCount;
	}
	//찜한 후원 가져오기
	@Override
	public HashMap<String, List<FundInterest>> selectLikeFundList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List<FundInterest>> likeFundList = nd.selectLikeFundList(sqlSession,m,paging);
		return likeFundList;
	}
	//종료된 물품 크라우드 펀딩 - 물품 가져오기
	@Override
	public HashMap<String, FundItem> selectEndItem(Member m, int fno) throws NanumException {
		 HashMap<String, FundItem> endItem = nd.selectEndItem(sqlSession,m,fno);
		return endItem;
	}
	
	
	
	
	
	
	


}
