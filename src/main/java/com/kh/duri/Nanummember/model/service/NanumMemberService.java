package com.kh.duri.Nanummember.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberService {
	
	/*// 찜한 정기 후원 개수 조회
	int getLikeDirectListCount(Member m)throws NanumException;
	// 찜한 금액 크라우드 펀딩 개수 조회
	int getLikeMoneyCloudListCount(Member m) throws NanumException;*/
		
	// 찜한 정기 후원  조회
	List<FundInterest> selectLikeDirect(Member m, PageInfo pi) throws NanumException;
	
	// 찜한 금액 크라우드 펀딩  조회
	List<FundInterest> selectLikeMoneyCloud(Member m, PageInfo pi2)throws NanumException;
	
	
	
	//크라우드 펀딩 수 가져오기
	HashMap<String, Integer> getCloudCont(Member m) throws NanumException;	
	//크라우드 펀딩 가져오기
	HashMap<String, List<Funding>> selectCloudList(Member m, HashMap<String, PageInfo> paging)  throws NanumException;
	//정기후원 수  가져오기
	HashMap<String, Integer> getFundCount(Member m) throws NanumException;
	//정기후원  가져오기
	HashMap<String, List<SelectDirectFund>> selectFundList(Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//감사편지 수  가져오기
	HashMap<String, Integer> getletterCount(Member m) throws NanumException;
	//감사편지  가져오기
	HashMap<String, List<Letter>> selectLetterList(Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//감사편지 상세 가져오기
	List<Letter> selectLetterDetailList(int leNo) throws NanumException;
	//찜한 후원  수 가져오기
	HashMap<String, Integer> getLikeListCount(Member m) throws NanumException;
	

	
	
	
	
	


}
