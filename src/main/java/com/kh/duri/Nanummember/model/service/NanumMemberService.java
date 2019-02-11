package com.kh.duri.Nanummember.model.service;

import java.util.List;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberService {
	
	//진행중인 금액 크라우드 펀딩 조회
	List<Funding> selectMoneyCloud(Member m, PageInfo pi) throws NanumException;
	//진행중인 금액 크라우드 펀딩 개수 조회
	int getMoneyCloundListCount(Member m) throws  NanumException;
	//정기후원 개수 조회
	int getDirectFundListCount(Member m) throws  NanumException;
	
/*	//종료된 금액 크라우드 펀딩 개수 조회
	int getEndMoneyCloundListCount(Member m) throws NanumCloudException;*/

}
