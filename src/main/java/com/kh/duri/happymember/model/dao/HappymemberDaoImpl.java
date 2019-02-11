package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

@Repository
public class HappymemberDaoImpl implements HappymemberDao{

	//마이페이지 - 보유물품 목록 불러오기 ajax
	@Override
	public ArrayList<MyDonateItems> donateItemList(SqlSessionTemplate sqlSession, MyDonateItems mdi) throws MypageException {
		
		ArrayList<MyDonateItems> ownlist = null;
		int mno = mdi.getO_mno();
		
		ownlist = (ArrayList)sqlSession.selectList("HappyMember.selectDonateItemList", mno);
		
		/*System.out.println("Dao 보유물품 리스트 : " + list);*/
		
		
		return ownlist;
	}

	//후원물품 리스트
	@Override
	public ArrayList<FundItemList> fundItemList(SqlSessionTemplate sqlSession) throws MypageException {

		ArrayList<FundItemList> fundItemList = null;
		/*int ino = fil.getIno();*/
		
		fundItemList = (ArrayList)sqlSession.selectList("HappyMember.selectFundItemList");
		
		/*System.out.println("Dao 후원물품 리스트 : " + fundItemList);*/
		
		return fundItemList;
	}




}
