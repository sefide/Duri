package com.kh.duri.board.model.service;

import java.util.List;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

public interface boardService {


	int getDonateListCount() throws DonateListException;

	List<Member> selectDonateList(PageInfo pi) throws DonateListException;

	Member longDanateDetail(Member m);

}