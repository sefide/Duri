package com.kh.duri.board.model.service;

import java.util.List;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

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


}
