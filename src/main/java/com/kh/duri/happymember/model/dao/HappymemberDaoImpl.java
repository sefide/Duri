package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

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
	
		return insertResult2;
	}

	//배송현황 목록 개수 조회
	@Override
	public int selectDeliveryListCount(SqlSessionTemplate sqlSession, Delivery d) throws MypageException {
	
		System.out.println("회원번호 : " + d.getD_mno());
		int dmno = d.getD_mno();
		int listCount = sqlSession.selectOne("HappyMember.selectDeliveryListCount", dmno);
		
		System.out.println("물품 배송 현황 수 : " + listCount);
		
		if(listCount < 0){
			throw new MypageException("물품 배송 현황 수 조회 실패");
		}
		
		return listCount;

	}

	//정기후원 목록 조회하기 개수 조회
	@Override
	public int selectLongDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException {
		int listCount = sqlSession.selectOne("HappyMember.selectLongDonateCount", m);
		
		System.out.println(m.getMno());
		System.out.println("정기후원 목록 개수 : " + listCount);
		if(listCount < 0) {
			throw new MypageException("정기후원 목록 개수 조회 실패");
		}
		
		return listCount;
	}
}
