package com.kh.duri.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.board.model.exception.BoardException;
import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.Board2;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.board.model.vo.PageInfo;

public interface boardService {


	int getDonateListCount() throws DonateListException;

	List<Member> selectDonateList(PageInfo pi) throws DonateListException;

	Member longDanateDetail(Member m);

	int getMoneyListCount();

	List<Board> selectMoneyList(PageInfo pi) throws DonateListException;

	Board moneyDetailOne(Board b);

	int getThingListCount() throws DonateListException;

	List<BoardItem> selectThingList(PageInfo pi);

	List<BoardItem> selectThingList2(PageInfo pi);

	BoardItem thingDetailOne(BoardItem bi);

	List<BoardItem> thingDetailOne2(BoardItem bi);

	int insertCloud(Board b) throws BoardException;

	int insertItem(Board b) throws BoardException;

	int moneyCountOne(Board moneyDetail);

	int selectTotalMoney(Member m);

	int selectTotalCount(Member m);

	int moneyCountTwo(Board moneyDetail);

	int selectMno(String nick);

	int insertWish(Board2 b) throws BoardException;

	int insertWish2(Board2 b) throws BoardException;

	int insertWish3(Board2 b) throws BoardException;

	Board2 thingDetailOne3(BoardItem bi) throws BoardException;

	List<Board2> selectPercent(PageInfo pi) throws BoardException;

	List<Board2> selectNowList();









}
