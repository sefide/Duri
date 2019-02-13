package com.kh.duri.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

public interface boardDao {

	int getDonateListCount(SqlSessionTemplate sqlSession) throws DonateListException;

	List<Member> selectDonateList(SqlSessionTemplate sqlSession, PageInfo pi) throws DonateListException;



	Member longDonateDetail(SqlSessionTemplate sqlSession, Member m);

}