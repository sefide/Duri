package com.kh.duri.Nanummember.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.Nanummember.model.dao.NanumMemberDao;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.member.model.vo.Member;

@Component
public class NanumMemberServiceImpl implements NanumMemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NanumMemberDao nd;
	
	@Override
	public List<Funding> selectMoneyCloud(Member m) {
		List<Funding> fList = nd.selectMoneyCloud(sqlSession,m);
		return fList;
	}
}
