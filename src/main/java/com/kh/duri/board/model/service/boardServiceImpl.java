package com.kh.duri.board.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.kh.duri.board.model.dao.boardDao;
import com.kh.duri.board.model.exception.BoardException;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.board.model.vo.PageInfo;

@Service
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

	//정기후원자 목록 조회
	@Override
	public List<Member> selectDonateList(PageInfo pi) throws DonateListException {
		List<Member> doList = bd.selectDonateList(sqlSession, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return doList;
	}

	//정기후원 상세페이지 조회
	@Override
	public Member longDanateDetail(Member m) {

		Member longDetail = bd.longDonateDetail(sqlSession, m);	//DAO로 Member 정보와 sqlSession 전송
		
		return longDetail;


	}

	//크라우드 펀딩 금액후원 갯수
	@Override
	public int getMoneyListCount() {
		int listCount = bd.getMoneyListCount(sqlSession);
		
		return listCount;
	}

	
	//크라우드 펀딩 금액후원 목록 조회
	@Override
	public List<Board> selectMoneyList(PageInfo pi) throws DonateListException {
		List<Board> moList = bd.selectMoneyList(sqlSession, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return moList;
	}

	@Override
	public Board moneyDetailOne(Board b) {
		Board moneyDetail = bd.moneyDetail(sqlSession, b);	//DAO로 Member 정보와 sqlSession 전송
		
		return moneyDetail ;
	}

	@Override
	public int getThingListCount() throws DonateListException {
		int listCount = bd.getThingListCount(sqlSession);
		
		return listCount;
	}

	@Override
	public List<BoardItem> selectThingList(PageInfo pi) {
		List<BoardItem> thList = bd.selectThingList(sqlSession, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return thList;
	}

	@Override
	public List<BoardItem> selectThingList2(PageInfo pi) {
		List<BoardItem> thList2 = bd.selectThingList2(sqlSession, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return thList2;
	}

	@Override
	public BoardItem thingDetailOne(BoardItem bi) {
		BoardItem thingDetail = bd.thingDetailOne(sqlSession, bi);	//DAO로 Member 정보와 sqlSession 전송
		
		return thingDetail ;
	}

	@Override
	public List<BoardItem> thingDetailOne2(BoardItem bi) {
		List<BoardItem> thingDetail2 = bd.thingDetailOne2(sqlSession, bi);	//DAO로 Member 정보와 sqlSession 전송
		
		return thingDetail2 ;
	}

	@Override
	public int insertCloud(Board b) throws BoardException {
		
		int result = bd.insertCloud(sqlSession,b);
		
		return result;	
	}

	@Override
	public int insertItem(Board b) throws BoardException {
		int result = bd.insertCloud2(sqlSession,b);
		
		return result;	
	}

	@Override
	public Board moneyCountOne(Board moneyDetail) {
		// TODO Auto-generated method stub
		return null;
	}









}
