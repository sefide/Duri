package com.kh.duri.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.board.model.exception.BoardException;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

public interface boardDao {

	int getDonateListCount(SqlSessionTemplate sqlSession) throws DonateListException;

	List<Member> selectDonateList(SqlSessionTemplate sqlSession, PageInfo pi) throws DonateListException;



	Member longDonateDetail(SqlSessionTemplate sqlSession, Member m);

	int getMoneyListCount(SqlSessionTemplate sqlSession);

	List<Board> selectMoneyList(SqlSessionTemplate sqlSession, PageInfo pi) throws DonateListException;

	Board moneyDetail(SqlSessionTemplate sqlSession, Board b);

	int getThingListCount(SqlSessionTemplate sqlSession) throws DonateListException;

	List<BoardItem> selectThingList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<BoardItem> selectThingList2(SqlSessionTemplate sqlSession, PageInfo pi);

	BoardItem thingDetailOne(SqlSessionTemplate sqlSession, BoardItem bi);

	List<BoardItem> thingDetailOne2(SqlSessionTemplate sqlSession, BoardItem bi);

	int insertCloud(SqlSessionTemplate sqlSession, Board b) throws BoardException;

	int insertCloud2(SqlSessionTemplate sqlSession, Board b) throws BoardException;



}
