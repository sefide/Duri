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

	//배송받을 물품 선택 후 수량 변경하기
	int getDelivery(String[] itemNumArray, String[] itemAmountArray, String mno) throws MypageException;

	//배송현황 추가하기
	int insertDelivery(String address, String mno) throws MypageException;


	/*//배송현황 목록 조회(페이징)
	int getDeliveryListCount(Member m) throws MypageException;*/

	


	


}
