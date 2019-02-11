package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

@Component
public class HappymemberServiceImpl implements HappymemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private HappymemberDao hd;

	//마이페이지 - 보유물품 목록 불러오기 ajax
	//보유물품 리스트
	@Override
	public ArrayList<MyDonateItems> donateItemList(MyDonateItems mdi) throws MypageException {
		
		ArrayList<MyDonateItems> ownlist = hd.donateItemList(sqlSession, mdi);
		
		/*System.out.println("Sevice 보유물품리스트 : " + list);*/
		
		return ownlist;
	}

	//후원물품 리스트
	@Override
	public ArrayList<FundItemList> fundItemList() throws MypageException {
		
		ArrayList<FundItemList> fundItemList = hd.fundItemList(sqlSession);
		
		/*System.out.println("Service 후원물품 리스트 : " + fundItemList);*/
		
		return fundItemList;
	}

	

}
