package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Delivery;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.PageInfo;

public interface HappymemberDao {

	//마이페이지 - 보유물품 목록 불러오기 ajax
	//보유물품 리스트
	ArrayList<MyDonateItems> donateItemList(SqlSessionTemplate sqlSession, MyDonateItems mdi) throws MypageException;

	//후원물품 리스트
	ArrayList<FundItemList> selectfundItemList(SqlSessionTemplate sqlSession) throws MypageException;

	//배송받을 물품 선택 후 수량 변경하기
	int getDelivery(SqlSessionTemplate sqlSession, String[] itemNumArray, String[] itemAmountArray, String mno) throws MypageException;

	//배송현황 추가하기
	int insertDelivery(SqlSessionTemplate sqlSession, String address, String mno) throws MypageException;

	//배송현황 상세 정보 추가하기
	int insertDeliveryDetail(SqlSessionTemplate sqlSession, String[] itemNumArray, String[] itemAmountArray) throws MypageException;

	//배송현황 목록 개수 조회
	int selectDeliveryListCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//정기후원 목록 개수 조회
	int selectLongDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	/*//배송현황 목록 가져오기
	List<DeliveryDetail> selectDeliveryList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException;

	*/

	
	
}
