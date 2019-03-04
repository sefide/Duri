package com.kh.duri.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.board.model.exception.BoardException;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.Board2;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.board.model.vo.PageInfo;
import com.kh.duri.member.model.vo.Member;

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

	int moneyCountDetail(SqlSessionTemplate sqlSession, Board moneyDetail);

	int selectTotalMoney(SqlSessionTemplate sqlSession, Member m);

	int selectTotalCount(SqlSessionTemplate sqlSession, Member m);

	int moneyCountTwo(SqlSessionTemplate sqlSession, Board moneyDetail);

	int selectMno(SqlSessionTemplate sqlSession, String nick);

	int insertWish(SqlSessionTemplate sqlSession, Board2 b) throws BoardException;

	int insertWish2(SqlSessionTemplate sqlSession, Board2 b) throws BoardException;

	int insertWish3(SqlSessionTemplate sqlSession, Board2 b) throws BoardException;

	Board2 thingDetail3(SqlSessionTemplate sqlSession, BoardItem bi) throws BoardException;

	List<Board2> selectPercent(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Board2> selectNowList(SqlSessionTemplate sqlSession);




}
