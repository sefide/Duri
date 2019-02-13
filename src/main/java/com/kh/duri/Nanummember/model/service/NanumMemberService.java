package com.kh.duri.Nanummember.model.service;

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
	
	//금액 크라우드 펀딩 개수 조회 - 진행
	int getMoneyCloundListCount(Member m) throws NanumException;
	//금액 크라우드 펀딩 조회 - 진행
	List<Funding> selectMoneyCloud(Member m, PageInfo pi) throws NanumException;		
	//금액 크라우드펀딩 개수 조회 - 종료
	int getEndMoneyCloundListCount2(Member m) throws NanumException;
	//금액 크라우드 펀딩 조회 - 종료
	List<Funding> selectMoneyCloud2(Member m, PageInfo pi2) throws NanumException;
	//물품 크라우드 펀딩 개수 조회 - 진행
	int getItemCloundListCount(Member m) throws NanumException;
	//물품 크라우드 펀딩 조회 - 진행
	List<Funding> selectItemCloud(Member m, PageInfo pi3) throws NanumException;
	//물품 크라우드 펀딩 개수 조회 - 종료
		
	//물품 크라우드 펀딩 조회 - 종료
		
	
	
	
	//정기후원 개수 조회 - 진행
	int getDirectFundListCount(Member m) throws NanumException;
	//정기 후원 조회 - 진행
	List<SelectDirectFund> selectDirectFund(Member m, PageInfo pi) throws NanumException;
	//정기후원 개수 조회  - 종료
	int getDirectFundListCount2(Member m) throws NanumException;
	//정기 후원 조회 - 종료
	List<SelectDirectFund> selectDirectFund2(Member m, PageInfo pi2) throws NanumException;
	//정기 감사편지 개수 조회 - 진행
	int getDirectLetterListCount(Member m)throws NanumException;
	//정기 감사편지 조회 - 진행
	List<Letter> selectDirectLetter(Member m, PageInfo pi)throws NanumException;
	//물품 크라우드 감사편지 개수 조회 
	int getMoneyCloudLetterListCount(Member m) throws NanumException;
	//물품 크라우드 감사편지 조회 
	List<Letter> selectMoneyCloudLetter(Member m, PageInfo pi2) throws NanumException;
	// 찜한 정기 후원 개수 조회
	int getLikeDirectListCount(Member m)throws NanumException;
	// 찜한 정기 후원  조회
	List<FundInterest> selectLikeDirect(Member m, PageInfo pi) throws NanumException;
	// 찜한 금액 크라우드 펀딩 개수 조회
	int getLikeMoneyCloudListCount(Member m) throws NanumException;
	// 찜한 금액 크라우드 펀딩  조회
	List<FundInterest> selectLikeMoneyCloud(Member m, PageInfo pi2)throws NanumException;
	
	
	
	


}
