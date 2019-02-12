package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

public interface HappymemberService {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	//보유물품 리스트
	ArrayList<MyDonateItems> donateItemList(MyDonateItems mdi) throws MypageException;

	//후원물품 리스트
	ArrayList<FundItemList> fundItemList() throws MypageException;


	


}
