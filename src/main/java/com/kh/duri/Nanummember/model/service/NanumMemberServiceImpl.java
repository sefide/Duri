package com.kh.duri.Nanummember.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.dao.NanumMemberDao;
import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.member.model.vo.Member;

@Service
public class NanumMemberServiceImpl implements NanumMemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NanumMemberDao nd;

	//금액 크라우드 펀딩 개수 조회 - 진행
	@Override
	public int getMoneyCloundListCount(Member m) throws NanumException {
		int listCount = nd.getPointListCount(sqlSession ,m);	
		return listCount;
	}

	//나눔두리 마이페이지 - 진행중 금액 크라우드 펀딩
	@Override
	public List<Funding> selectMoneyCloud(Member m, PageInfo pi) throws NanumException {
		List<Funding> fList = nd.selectMoneyCloud(sqlSession,m,pi);
		return fList;
	}
	
	//정기후원 개수 조회
	@Override
	public int getDirectFundListCount(Member m) throws NanumException {
		int listCount = nd.getDirectFundCount(sqlSession ,m);	
		return listCount;
	}
	
	/*//금액 크라우드 펀딩 개수 조회 - 종료
	@Override
	public int getEndMoneyCloundListCount(Member m) throws NanumCloudException {
		
		return 0;
	}*/
}
