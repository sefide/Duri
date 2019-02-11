package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.member.model.vo.Member;

@Repository
public class NanumMemberDaoImpl implements NanumMemberDao {

	
	// 진행중인 금액 크라우드 펀딩 개수 조회
	@Override
	public int getPointListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectMoneyCloundListCount", m);

		if(listCount < 0) {
			throw new NanumException("진행중인 금액 크라우드 펀딩 개수 조회 실패");
		}	
		return listCount;
	}
	
	// 진행중인 금액 크라우드 펀딩 
	@Override
	public List<Funding> selectMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi)throws NanumException {
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Funding> fList = sqlSession.selectList("Nanum.selectMoneyCloud",m,rowBounds);
		
		if(fList == null) {
			throw new NanumException("진행중인 금액 크라우드펀딩 존재 하지 않음");
		}
		return fList;
	}
	
	//정기후원 개수 조회
	@Override
	public int getDirectFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectDirectFundCount", m);

		if(listCount < 0) {
			throw new NanumException("정기후원 개수 조회 실패");
		}	
		return listCount;
	}

}
