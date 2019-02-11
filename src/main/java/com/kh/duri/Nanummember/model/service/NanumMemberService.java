package com.kh.duri.Nanummember.model.service;

import java.util.List;

import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.member.model.vo.Member;

public interface NanumMemberService {
	
	//진행중인 금액 크라우드 펀딩 조회
	List<Funding> selectMoneyCloud(Member m);

}
