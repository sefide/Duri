package com.kh.duri.happymember.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;

@Component
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
	public ArrayList<FundItemList> fundItemList() throws MypageException {
		
		ArrayList<FundItemList> fundItemList = hd.fundItemList(sqlSession);
		
		/*System.out.println("Service 후원물품 리스트 : " + fundItemList);*/
		
		return fundItemList;
	}

	//배송받을 물품 선택 후 수량 변경하기
	@Override
	public int getDelivery(String[] itemNumArray, String[] itemAmountArray, String mno) throws MypageException {
		int result = hd.getDelivery(sqlSession, itemNumArray, itemAmountArray, mno );
		
		return result;
	}

	
	//배송현황 추가하기
	@Override
	public int insertDelivery(String address, String mno) throws MypageException {
		int insertResult1 = hd.insertDelivery(sqlSession, address, mno);
		
		return insertResult1;
	}

	/*//배송현황 목록 조회(페이징)
	@Override
	public int getDeliveryListCount(Member m) throws MypageException {
		int listCount = hd.getDeliveryListCount(sqlSession, m);		
		
		return listCount;
	}*/

	

	
	

	

}
