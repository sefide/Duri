package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.DonateItems;
import com.kh.duri.member.model.vo.Member;

@Component
public class HappymemberServiceImpl implements HappymemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private HappymemberDao hd;

	//마이페이지 - 보유물품 목록 불러오기 ajax
	@Override
	public ArrayList<DonateItems> donateItemList(DonateItems di) throws MypageException {
		
		ArrayList<DonateItems> list = hd.donateItemList(sqlSession, di);;
		
		/*System.out.println("Sevice 보유물품리스트 : " + list);*/
		
		return list;
	}

	

}
