package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.DonateItems;
import com.kh.duri.member.model.vo.Member;

public interface HappymemberDao {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	ArrayList<DonateItems> donateItemList(SqlSessionTemplate sqlSession, DonateItems di) throws MypageException;

	
}
