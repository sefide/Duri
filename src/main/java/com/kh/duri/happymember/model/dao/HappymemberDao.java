package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

public interface HappymemberDao {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	ArrayList<MyDonateItems> donateItemList(SqlSessionTemplate sqlSession, MyDonateItems mdi) throws MypageException;

	ArrayList<FundItemList> fundItemList(SqlSessionTemplate sqlSession) throws MypageException;

	int getDelivery(SqlSessionTemplate sqlSession, String[] itemNumArray, String[] itemAmountArray, String mno) throws MypageException;

	
	
}
