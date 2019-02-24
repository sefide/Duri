package com.kh.duri.happymember.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.happymember.model.exception.MypageException;
import com.kh.duri.happymember.model.vo.Attachment;
import com.kh.duri.happymember.model.vo.DeliveryDetail;
import com.kh.duri.happymember.model.vo.DirectFundHistory;
import com.kh.duri.happymember.model.vo.FundItemList;
import com.kh.duri.happymember.model.vo.Funding;
import com.kh.duri.happymember.model.vo.MyDonateItems;
import com.kh.duri.happymember.model.vo.Qna;
import com.kh.duri.member.model.exception.LoginException;
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

	//정기후원 목록 개수 조회
	int selectLongDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//정기후원 목록 조회
	List<DirectFundHistory> selectDirectFundList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException;
	
	//배송현황 목록 개수 조회
	int selectDeliveryListCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//배송현황 목록 조회
	List<DeliveryDetail> selectDeliveryList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException;

	//자기소개 수정
	int updateIntroduce(SqlSessionTemplate sqlSession, Member oldLoginUser) throws MypageException;

	//물품후원 목록 개수 조회
	int selectItemDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//물품후원 목록 조회
	List<Funding> selectItemDonateList(SqlSessionTemplate sqlSession, int mno, PageInfo pi) throws MypageException;

	//금액후원 목록 개수 조회
	int selectMoneyDonateCount(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//금액후원 목록 조회
	List<Funding> selectMoneyDonateList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException;

	//Q&A 목록 개수 조회
	int selectQnaListCount(SqlSessionTemplate sqlSession, Member m)throws MypageException;

	//Q&A 목록 조회
	List<Qna> selectQnaList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws MypageException;

	//Q&A 작성
	int insertQna(SqlSessionTemplate sqlSession, Qna q) throws MypageException;
	
	//Q&A 상세보기
	List<Qna> selectQnaDetail(SqlSessionTemplate sqlSession, Qna q) throws MypageException;
	
	//감사편지 보낼 정기후원자 닉네임 뽑기
	List<Member> selectNanumNick(SqlSessionTemplate sqlSession, Member m) throws MypageException;

	//감사편지 보내기
	int insertThankyouLetter(SqlSessionTemplate sqlSession, Letter l) throws MypageException;

	//증빙서류 승인일 조회
	Attachment selectAdate(SqlSessionTemplate sqlSession, Member member) throws LoginException;

	

	

	

	
	
}
