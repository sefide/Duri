package com.kh.duri.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Point;

@Repository
public class boardDaoImpl implements boardDao {



	@Override
	public int getDonateListCount(SqlSessionTemplate sqlSession) throws DonateListException {
		int listCount = sqlSession.selectOne("Member.selectDonateListCount");
		
		System.out.println("모든 회원 명수 : "+ listCount);
		
		if(listCount < 0) {
			throw new DonateListException("모든 회원 명수 조회 실패");
		}
		
		return listCount;
	}

	@Override
	public List<Member> selectDonateList(SqlSessionTemplate sqlSession, PageInfo pi) throws DonateListException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Member> bh = sqlSession.selectList("Member.selectDonateList", rowBounds);
		
		
		if(bh == null){
			throw new DonateListException("정기후원 명단을 불러올수 없습니다.");
		}
		
		System.out.println("Dao Point 객체 : "+ bh.size());
		System.out.println("Dao Point 총객체 : "+ bh);
		return bh;
	}



	
}
