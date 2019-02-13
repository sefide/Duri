package com.kh.duri.Nanummember.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

@Repository
public class NanumMemberDaoImpl implements NanumMemberDao {
	
	// 금액 크라우드 펀딩 개수 조회 - 진행
	@Override
	public int getMoneyCloundListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectMoneyCloundListCount", m);
		if(listCount < 0) {
			throw new NanumException("진행중인 금액 크라우드 펀딩 개수 조회 실패");
		}	
		return listCount;
	}	
	// 금액 크라우드 펀딩 조회 - 진행
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
	// 금액 크라우드 펀딩 개수 조회 - 종료
	@Override
	public int getEndMoneyCloundListCount2(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectMoneyCloundListCount2", m);
		if(listCount < 0) {
			throw new NanumException("진행중인 금액 크라우드 펀딩 개수 조회 실패");
		}	
		return listCount;
	}
	// 금액 크라우드 펀딩 조회 - 종료
	@Override
	public List<Funding> selectMoneyCloud2(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException {
		int offset = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());		
		List<Funding> fList = sqlSession.selectList("Nanum.selectMoneyCloud2",m,rowBounds);		
		if(fList == null) {
			throw new NanumException("진행중인 금액 크라우드펀딩 존재 하지 않음");
		}
		return fList;
	}
	//물품 크라우드펀딩 개수 조회 - 진행
	@Override
	public int getItemCloundListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectItemCloundListCount", m);
		if(listCount < 0) {
			throw new NanumException("진행중인 물품 크라우드 펀딩 개수 조회 실패");
		}	
		return listCount;
	}
	//물품 크라우드펀딩 조회 - 진행
	@Override
	public List<Funding> selectItemCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi3) throws NanumException {
		int offset = (pi3.getCurrentPage() -1 ) *pi3.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi3.getLimit());		
		List<Funding> fList = sqlSession.selectList("Nanum.selectItemCloud",m,rowBounds);		
		if(fList == null) {
			throw new NanumException("진행중인물품 크라우드 펀딩 존재 하지 않음");
		}
		return fList;
	}
	
	
	
	
	
	
	//정기후원 개수 조회 - 진행
	@Override
	public int getDirectFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectDirectFundCount", m);
		if(listCount < 0) {
			throw new NanumException("정기후원 개수 조회 실패");
		}	
		return listCount;
	}
	
	//정기후원 조회 - 진행
	@Override
	public List<SelectDirectFund> selectDirectFund(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException {
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<SelectDirectFund> dfList = sqlSession.selectList("Nanum.selectDirectFund",m,rowBounds);		
		if(dfList == null) {
			throw new NanumException("정기후원 존재 하지 않음");
		}			
		return dfList;
	}
	//정기후원 개수조회- 종료
	@Override
	public int getDirectFundCount2(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectDirectFundCount2", m);
		if(listCount < 0) {
			throw new NanumException("정기후원 개수 조회 실패");
		}	
		return listCount;
	}
	//정기후원 조회 - 종료
	@Override
	public List<SelectDirectFund> selectDirectFund2(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException {
		int offset = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());		
		List<SelectDirectFund> dfList = sqlSession.selectList("Nanum.selectDirectFund2",m,rowBounds);		
		if(dfList == null) {
			throw new NanumException("정기후원 존재 하지 않음");
		}			
		return dfList;
	}
	//정기 감사편지 개수조회 - 진행
	@Override
	public int getDirectLetterListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectDirectLetterCount", m);
		if(listCount < 0) {
			throw new NanumException("정기후원 편지개수 조회 실패");
		}	
		System.out.println("listCount"+listCount);
		return listCount;
	}
	//정기 감사편지 조회 - 진행
	@Override
	public List<Letter> selectDirectLetter(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException {
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<Letter> dlList = sqlSession.selectList("Nanum.selectDirectLetter",m,rowBounds);		
		if(dlList == null) {
			throw new NanumException("정기후원편지 존재 하지 않음");
		}			
		return dlList;
	}
	//금액 크라우드 감사편지 개수조회 
	@Override
	public int getMoneyCloudLetterListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectMoneyCloudLetterCount", m);
		if(listCount < 0) {
			throw new NanumException("물품 크라우드 편지개수 조회 실패");
		}	
		return listCount;
	}
	//물품 크라우드 감사편지  조회 
	@Override
	public List<Letter> selectMoneyCloudLetter(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException {
		int offset = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());		
		List<Letter> dlList = sqlSession.selectList("Nanum.selectMoneyCloudLetter",m,rowBounds);		
		if(dlList == null) {
			throw new NanumException("물품 크라우드 편지 존재 하지 않음");
		}			
		return dlList;
	}
	//찜한 정기 후원 개수 조회
	@Override
	public int getLikeDirectListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectLikeDirectCount", m);
		if(listCount < 0) {
			throw new NanumException("찜한 정기후원 개수 조회 실패");
		}	
		return listCount;
	}
	//찜한 정기 후원  조회
	@Override
	public List<FundInterest> selectLikeDirect(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws NanumException {
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<FundInterest> dlList = sqlSession.selectList("Nanum.selectLikeDirect",m,rowBounds);		
		if(dlList == null) {
			throw new NanumException("찜한 정기후원 존재 하지 않음");
		}			
		return dlList;
	}
	//찜한 금액 크라우드 펀딩 개수 조회
	@Override
	public int getLikeMoneyCloudListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		int listCount = sqlSession.selectOne("Nanum.selectLikeMoneyCount", m);
		if(listCount < 0) {
			throw new NanumException("찜한 정기후원 개수 조회 실패");
		}	
		return listCount;
	}
	// 찜한 금액 크라우드 펀딩  조회
	@Override
	public List<FundInterest> selectLikeMoneyCloud(SqlSessionTemplate sqlSession, Member m, PageInfo pi2) throws NanumException {
		int offset = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());		
		List<FundInterest> dlList = sqlSession.selectList("Nanum.selectLikeMoneyCloud",m,rowBounds);		
		if(dlList == null) {
			throw new NanumException("찜한 금액 크라우드펀딩 존재 하지 않음");
		}			
		return dlList;
	}
	
	
	

	

}
