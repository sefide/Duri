package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.DonateItems;
import com.kh.duri.member.model.vo.Member;

public interface HappymemberService {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	ArrayList<DonateItems> donateItemList(DonateItems di) throws MypageException;


}
