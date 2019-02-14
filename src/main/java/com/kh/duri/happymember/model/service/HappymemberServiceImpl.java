package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

@Service
public class HappymemberServiceImpl implements HappymemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private HappymemberDao hd;

	//마이페이지 - 보유물품 목록 불러오기 ajax
	//보유물품 리스트
	@Override
	public ArrayList<MyDonateItems> donateItemList(MyDonateItems mdi) throws MypageException {
		
		ArrayList<MyDonateItems> ownlist = hd.donateItemList(sqlSession, mdi);
		
		/*System.out.println("Sevice 보유물품리스트 : " + list);*/
		
		return ownlist;
	}

	//후원물품 리스트
	@Override
	public ArrayList<FundItemList> selectfundItemList() throws MypageException {
		
		ArrayList<FundItemList> fundItemList = hd.selectfundItemList(sqlSession);
		
		/*System.out.println("Service 후원물품 리스트 : " + fundItemList);*/
		
		return fundItemList;
	}

	//배송받을 물품 선택 후 수량 변경하기
	@Override
	public int getDelivery(String[] itemNumArray, String[] itemAmountArray, String mno, String address) throws MypageException {
		int updateResult = hd.getDelivery(sqlSession, itemNumArray, itemAmountArray, mno );
		int insertResult1 = hd.insertDelivery(sqlSession, address, mno);
		int insertResult2 = hd.insertDeliveryDetail(sqlSession, itemNumArray, itemAmountArray);
		
		int result = 0;
		
		if(updateResult > 0 && insertResult1 > 0 && insertResult2 > 0) {
			result = 1;
		}
		
		return result;
	}

	
	/*//배송현황 추가하기
	@Override
	public int insertDelivery(String address, String mno) throws MypageException {
		
		int insertResult1 = hd.insertDelivery(sqlSession, address, mno);
		int insertResult2 = hd.insertDeliveryDetail(sqlSession, address, mno);
		
		if
		return insertResult1;
	}

	//배송현황 상세 정보 추가하기
	@Override
	public int insertDeliveryDetail(String[] itemNumArray, String[] itemAmountArray) throws MypageException {
		int insertResult2 = hd.insertDeliveryDetail(sqlSession, itemNumArray, itemAmountArray);
		
		return insertResult2;
	}*/

	//배송현황 목록 개수 조회
	@Override
	public int selectDeliveryListCount(Delivery d) throws MypageException {
		int listCount = hd.selectDeliveryListCount(sqlSession, d);
		
		
		return listCount;
	}


	

	
	

	

}
