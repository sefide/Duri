package com.kh.duri.happymember.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.happymember.model.dao.HappymemberDao;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

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
	//배송현황 추가하기
	//배송현황 상세 정보 추가하기
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


	//배송현황 목록 개수 조회
	@Override
	public int selectDeliveryListCount(Member m) throws MypageException {
		int listCount = hd.selectDeliveryListCount(sqlSession, m);
		
		
		return listCount;
	}

	//정기후원 목록 개수 조회
	@Override
	public int selectLongDonateCount(Member m) throws MypageException {
		int listCount = hd.selectLongDonateCount(sqlSession, m);
		
		return listCount;
	}
/*
	//배송현황 목록 가져오기
	@Override
	public List<DeliveryDetail> selectDeliveryList(Member m, PageInfo pi) throws MypageException {
		List<DeliveryDetail> ddList = hd.selectDeliveryList(sqlSession, m, pi);
		
		return ddList;
	}*/

	//정기후원 목록 조회하기
	@Override
	public List<DirectFundHistory> selectDirectFundList(Member m, PageInfo pi) throws MypageException {
		List<DirectFundHistory> directFundList = hd.selectDirectFundList(sqlSession, m, pi);
		return null;
	}


	

	
	

	

}
