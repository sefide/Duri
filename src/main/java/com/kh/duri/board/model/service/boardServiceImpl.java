package com.kh.duri.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.board.model.dao.boardDao;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Point;

@Component
public class boardServiceImpl implements boardService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private boardDao bd;


	//정기후원 대상자 명수 조회
	@Override
	public int getDonateListCount() throws DonateListException {
		int listCount = bd.getDonateListCount(sqlSession);
		
		return listCount;
	}

	@Override
	public List<Member> selectDonateList(PageInfo pi) throws DonateListException {
		List<Member> doList = bd.selectDonateList(sqlSession, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return doList;
	}



}
