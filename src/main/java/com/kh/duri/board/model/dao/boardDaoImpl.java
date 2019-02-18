package com.kh.duri.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.board.model.exception.DonateListException;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

@Repository
public class boardDaoImpl implements boardDao {


	//정기후원 리스트 갯수 조회
	@Override
	public int getDonateListCount(SqlSessionTemplate sqlSession) throws DonateListException {
		int listCount = sqlSession.selectOne("Member.selectDonateListCount");
		
		System.out.println("모든 회원 명수 : "+ listCount);
		
		if(listCount < 0) {
			throw new DonateListException("모든 회원 명수 조회 실패");
		}
		
		return listCount;
	}

	//정기후원 목록회원 리스트 조회
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


	//정기후원 상세정보 조회
	@Override
	public Member longDonateDetail(SqlSessionTemplate sqlSession, Member m) {
		Member longDetail = sqlSession.selectOne("Member.selectLongList",m);	//받아온 m을 이용해 mapper에서 sql문 실행해서 받아온 값 저장 
		
		System.out.println("Dao Member : "+longDetail);
		
/*		if(longDetail ==null) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");	//예외처리
		}*/
		
		return longDetail;
	}

	//금액후원 게시글 갯수 조회
	@Override
	public int getMoneyListCount(SqlSessionTemplate sqlSession) {
		int listCount = sqlSession.selectOne("Boards.selectMoneyListCount");
		
		System.out.println("모든 게시글 개수 : "+ listCount);
/*		if(listCount < 0) {
			throw new DonateListException("모든 회원 명수 조회 실패");
		}*/
		
		return listCount;
	}

	//금액후원 게시글 리스트 조회
	@Override
	public List<Board> selectMoneyList(SqlSessionTemplate sqlSession, PageInfo pi) throws DonateListException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Board> bh = sqlSession.selectList("Boards.selectMoneyList", rowBounds);
		
		
		if(bh == null){
			throw new DonateListException("금액후원 명단을 불러올수 없습니다.");
		}
		
		System.out.println("Dao Point 객체 : "+ bh.size());
		System.out.println("Dao Point 총객체 : "+ bh);
		return bh;
	}

	//금액후원 상세정보 조회
	@Override
	public Board moneyDetail(SqlSessionTemplate sqlSession, Board b) {
		Board moneyDetail = sqlSession.selectOne("Boards.selectMoneyDetail",b);	//받아온 m을 이용해 mapper에서 sql문 실행해서 받아온 값 저장 
		
		System.out.println("Dao Member : "+moneyDetail);
		
/*		if(longDetail ==null) {
			throw new LoginException("로그인정보가 존재하지 않습니다.");	//예외처리
		}*/
		
		return moneyDetail;
	}

	
	//물품후원 갯수 조회
	@Override
	public int getThingListCount(SqlSessionTemplate sqlSession) throws DonateListException {
		int listCount = sqlSession.selectOne("Boards.selectThingListCount");
		
		System.out.println("모든 물품게시글 개수 : "+ listCount);
		if(listCount < 0) {
			throw new DonateListException("모든 물품후원게시글 갯수 조회 실패");
		}
		
		return listCount;
	}

	
	//물품후원 리스트 조회
	@Override
	public List<BoardItem> selectThingList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<BoardItem> th = sqlSession.selectList("Boards.selectThingList", rowBounds);
		
		
	/*	if(th == null){
			throw new DonateListException("금액후원 명단을 불러올수 없습니다.");
		}*/
		
		System.out.println("Dao Point 객체 : "+ th.size());
		System.out.println("Dao Point 총객체 : "+ th);
		return th;
	}






	
}
