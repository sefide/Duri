package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

public interface HappymemberService {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	//보유물품 리스트
	ArrayList<MyDonateItems> donateItemList(MyDonateItems mdi) throws MypageException;

	//후원물품 리스트
	ArrayList<FundItemList> selectfundItemList() throws MypageException;

	//배송받을 물품 선택 후 수량 변경하기
	int getDelivery(String[] itemNumArray, String[] itemAmountArray, String mno, String address) throws MypageException;

	/*//배송현황 추가하기
	int insertDelivery(String address, String mno) throws MypageException;

	//배송현황 상세정보 추가하기
	int insertDeliveryDetail(String[] itemNumArray, String[] itemAmountArray) throws MypageException;*/

	//배송현황 목록 개수 조회
	int selectDeliveryListCount(Delivery d) throws MypageException;

	//정기후원 목록 조회하기 개수 세기
	int selectLongDonateCount(Member m) throws MypageException;


	


	


}
