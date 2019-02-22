package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.happymember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.Funding;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.happymember.model.vo.Qna;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

@Repository
public class HappymemberDaoImpl implements HappymemberDao{

	//마이페이지 - 보유물품 목록 불러오기 ajax
	@Override
	public ArrayList<MyDonateItems> donateItemList(SqlSessionTemplate sqlSession, MyDonateItems mdi) throws MypageException {
		
		ArrayList<MyDonateItems> ownlist = null;
		int mno = mdi.getO_mno();
		
		ownlist = (ArrayList)sqlSession.selectList("HappyMember.selectDonateItemList", mno);
		
		/*System.out.println("Dao 보유물품 리스트 : " + list);*/
		
		
		return ownlist;
	}

	//후원물품 리스트
	@Override
	public ArrayList<FundItemList> selectfundItemList(SqlSessionTemplate sqlSession) throws MypageException {

		ArrayList<FundItemList> fundItemList = null;
		/*int ino = fil.getIno();*/
		
		fundItemList = (ArrayList)sqlSession.selectList("HappyMember.selectFundItemList");
		
		/*System.out.println("Dao 후원물품 리스트 : " + fundItemList);*/
		
		return fundItemList;
	}

	//배송받을 물품 선택 후 수량 변경하기
	@Override
	public int getDelivery(SqlSessionTemplate sqlSession, String[] itemNumArray, String[] itemAmountArray, String mno)
			throws MypageException {
		
		int result = 0;
		MyDonateItems md = null;
		
		for(int i=0; i < itemNumArray.length; i++) {
			String num = itemNumArray[i];
			String amount = itemAmountArray[i];
			
			md = new MyDonateItems();
			md.setO_mno(Integer.parseInt(mno));
			md.setO_ino(Integer.parseInt(num));
			md.setOvalue(Integer.parseInt(amount));
			result = sqlSession.update("HappyMember.updateItemAmount",md);
			
		}
		
		if(result < 0) {
			throw new MypageException("물품 배송 실패");
		}
		
		return result;
	}


	//배송현황 추가하기
	@Override
	public int insertDelivery(SqlSessionTemplate sqlSession, String address, String mno) throws MypageException {
		int insertResult1 = 0;
		Delivery d = new Delivery();
		
		d.setD_mno(Integer.parseInt(mno));
		d.setDaddress(address);
		insertResult1 = sqlSession.insert("HappyMember.insertDeliveryList", d);
		
		if(insertResult1 < 0) {
			throw new MypageException("물품목록 추가 실패");
		}
	
		return insertResult1;
	}

	//배송현황 상세 정보 추가하기
	@Override
	public int insertDeliveryDetail(SqlSessionTemplate sqlSession, String[] itemNumArray, String[] itemAmountArray)
			throws MypageException {
		int insertResult2 = 0;
		DeliveryDetail dd = null;
		
		for(int i=0; i < itemNumArray.length; i++) {
			String num = itemNumArray[i];
			String amount = itemAmountArray[i];
			
			dd = new DeliveryDetail();
			dd.setDd_ino(Integer.parseInt(num));
			dd.setDdvalue(Integer.parseInt(amount));
			insertResult2 = sqlSession.insert("HappyMember.insertDeliveryDetailList", dd);
		}
		
		if(insertResult2 < 0) {
			throw new MypageException("물품목록 상세정보 추가 실패");
		}
	
		return insertResult2;
	}

	//정기후원 목록 개수 조회
	@Override
	public int selectLongDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		int listCount = sqlSession.selectOne("HappyMember.selectLongDonateCount", m);
		
		
		/*System.out.println("정기후원 목록 개수 : " + listCount);*/
		if(listCount < 0) {
			throw new MypageException("정기후원 목록 개수 조회 실패");
		}
		
		return listCount;
	}

	//정기후원 목록 조회
	@Override
	public List<DirectFundHistory> selectDirectFundList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException {
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();//Limit : 한 페이지에 보여줄 게시글 수
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<DirectFundHistory> directFundList = sqlSession.selectList("HappyMember.selectDirectFundList", m, rowBounds);
		
		if(directFundList == null) {
			throw new MypageException("정기후원 목록이 존재하지 않습니다.");
		}
		
		/*System.out.println("정기후원 리스트 수 : " + directFundList.size());*/
		return directFundList;
	}
	
	//배송현황 목록 개수 조회
	@Override
	public int selectDeliveryListCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		
		/*System.out.println("회원번호 : " + m.getMno());*/
		int listCount = sqlSession.selectOne("HappyMember.selectDeliveryListCount", m);
			
		/*System.out.println("물품 배송 현황 수 : " + listCount);*/
			
		if(listCount < 0){
			throw new MypageException("물품 배송 현황 수 조회 실패");
		}
			
		return listCount;

	}

	//배송현황 목록 조회
	@Override
	public List<DeliveryDetail> selectDeliveryList(SqlSessionTemplate sqlSession, Member m, PageInfo pi)
			throws MypageException {
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit()); //offset + pi.getLimit() 만큼 조회해와서 한 페이지에 pi.getLimit()개 만큼 띄운다.
		
		List<DeliveryDetail> deliveryList = sqlSession.selectList("HappyMember.selectDeliveryList", m, rowBounds);
		
		if(deliveryList == null) {
			System.out.println("배송 목록이 존재하지 않습니다.");
		}
		/*System.out.println("배송 현황 리스트 수 : " + deliveryList.size());*/
		
		return deliveryList;
	}

	//자기소개 수정
	@Override
	public int updateIntroduce(SqlSessionTemplate sqlSession, Member oldLoginUser) throws MypageException {
		int result = sqlSession.update("HappyMember.updateIntroduce", oldLoginUser);
		/*System.out.println("회원번너너너너너너넌호 : " + oldLoginUser.getMno());
		System.out.println("자기소개 : " + oldLoginUser.getMprNew());
		System.out.println("정보 : " + result);*/
		
		if(result < 0) {
			throw new MypageException("자기소개 수정 실패");
		}
		return result;
	}

	//물품후원 목록 개수 조회
	@Override
	public int selectItemDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		int listCount = sqlSession.selectOne("HappyMember.selectItemDonateCount", m);
		
		if(listCount < 0) {
			throw new MypageException("물품후원 개수 조회 실패");
		}
		
		return listCount;
	}

	//물품후원 목록 조회
	@Override
	public List<Funding> selectItemDonateList(SqlSessionTemplate sqlSession, int mno, PageInfo pi)
			throws MypageException {
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Funding> itemDonateList = sqlSession.selectList("HappyMember.selectItemDonateList", mno, rowBounds);
		
		if(itemDonateList == null) {
			throw new MypageException("물품후원 목록 조회 실패");
		}
		
		/*System.out.println("itemDonateList 개수 : " + itemDonateList.size());*/
		
		return itemDonateList;
	}

	//금액후원 목록 개수 조회
	@Override
	public int selectMoneyDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		int listCount = sqlSession.selectOne("HappyMember.selectMoneyDonateCount", m);
		
		/*System.out.println("금액후원 개수  : " + listCount);*/
		if(listCount < 0) {
			throw new MypageException("금액후원 개수 조회 실패");
		}
		return listCount;
	}

	//금액후원 목록 조회
	@Override
	public List<Funding> selectMoneyDonateList(SqlSessionTemplate sqlSession, Member m, PageInfo pi)
			throws MypageException {
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Funding> moneyDonateList = sqlSession.selectList("HappyMember.selectMoneyDonateList", m, rowBounds);
		
		if(moneyDonateList == null) {
			throw new MypageException("금액후원 목록 조회 실패");
		}
		
		/*System.out.println("금액후원 목록 수 : " + moneyDonateList.size());
		for(Funding i : moneyDonateList){
			System.out.println("리스트 잘 뽑히나? : " + i);
		}*/
		
		return moneyDonateList;
	}

	//Q&A 목록 개수 조회
	@Override
	public int selectQnaListCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		int listCount = sqlSession.selectOne("HappyMember.selectQnaListCount", m);
		
		/*System.out.println("Q&A 개수 조회 : " + listCount);*/
		
		if(listCount < 0) {
			throw new MypageException("Q&A 목록 개수 조회 실패");
		}
		return listCount;
	}

	//Q&A 목록 조회 
	@Override
	public List<Qna> selectQnaList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException {
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Qna> qnaList = sqlSession.selectList("HappyMember.selectQnaList", m, rowBounds);
		
		if(qnaList == null) {
			throw new MypageException("Q&A 목록 조회 실패");
		}
		
		return qnaList;
	}

	//Q&A 작성
	@Override
	public int insertQna(SqlSessionTemplate sqlSession, Qna q) throws MypageException {
		int result = sqlSession.insert("HappyMember.insertQna", q);
		
		if(result < 0) {
			throw new MypageException("Q&A 작성 실패");
		}
		
		return result;
	}

	//Q&A 상세보기
	
	
	//감사편지 보낼 정기후원자 닉네임 뽑기
	@Override
	public List<Member> selectNanumNick(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		List<Member> nanumNicks = sqlSession.selectList("HappyMember.selectNanumNick", m);
		
		/*for(Member i : nanumNicks) {
			System.out.println("정기후원 닉네임,이름 : " + i);
		}*/
		
		return nanumNicks;
	}

	//감사편지 보내기
	@Override
	public int insertThankyouLetter(SqlSessionTemplate sqlSession, Letter l) throws MypageException {
		int result = sqlSession.insert("HappyMember.insertThankyouLetter", l);
		
		return result;
	}

}
