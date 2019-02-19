package com.kh.duri.Nanummember.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.FundItem;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberService {
		
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
	//찜한 후원 가져오기 
	HashMap<String, List<FundInterest>> selectLikeFundList(Member m, HashMap<String, PageInfo> paging) throws NanumException;
	//종료된 물품 크라우드 펀딩 - 물품 가져오기
	HashMap<String, FundItem> selectEndItem(Member m, int fno) throws NanumException;
	
	
	
	

	
	
	
	
	


}
