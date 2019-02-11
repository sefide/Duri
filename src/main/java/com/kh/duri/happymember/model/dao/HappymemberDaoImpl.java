package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.DonateItems;
import com.kh.duri.member.model.vo.Member;

@Repository
public class HappymemberDaoImpl implements HappymemberDao{

	//마이페이지 - 보유물품 목록 불러오기 ajax
	@Override
	public ArrayList<DonateItems> donateItemList(SqlSessionTemplate sqlSession, DonateItems di) throws MypageException {
		
		ArrayList<DonateItems> list = null;
		int mno = di.getO_mno();
		
		list = (ArrayList)sqlSession.selectList("HappyMember.selectDonateItemList", mno);
		
		/*System.out.println("Dao 보유물품 리스트 : " + list);*/
		
		
		return list;
	}




}
