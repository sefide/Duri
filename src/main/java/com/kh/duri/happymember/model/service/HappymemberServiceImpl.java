package com.kh.duri.happymember.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.happymember.model.dao.HappymemberDao;
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

	//정기후원 목록 개수 조회
		@Override
		public int selectLongDonateCount(Member m) throws MypageException {
			int listCount = hd.selectLongDonateCount(sqlSession, m);
			
			return listCount;
		}
		
	//정기후원 목록 조회
	@Override
	public List<DirectFundHistory> selectDirectFundList(Member m, PageInfo pi) throws MypageException {
		List<DirectFundHistory> directFundList = hd.selectDirectFundList(sqlSession, m, pi);
			
		return directFundList;
	}	
	
	//배송현황 목록 개수 조회
	@Override
	public int selectDeliveryListCount(Member m) throws MypageException {
		int listCount = hd.selectDeliveryListCount(sqlSession, m);
		
		
		return listCount;
	}

	//배송현황 목록 조회
	@Override
	public List<DeliveryDetail> selectDeliveryList(Member m, PageInfo pi) throws MypageException {
		List<DeliveryDetail> deliveryList = hd.selectDeliveryList(sqlSession, m, pi);
		
		return deliveryList;
	}

	//자기소개 수정
	@Override
	public int updateIntroduce(Member oldLoginUser) throws MypageException {
		int result1 = hd.updateIntroduce1(sqlSession, oldLoginUser);
		int result2 = hd.updateIntroduce2(sqlSession, oldLoginUser);
		
		int result = 0;
		
		if(result1 > 0 && result2 < 0) {
			result = 1;
		}else if(result2 > 0 && result1 < 0) {
			result = 2;
		}
				
		return result;
	}

	//물품후원 목록 개수 조회
	@Override
	public int selectItemDonateCount(Member m) throws MypageException {
		int listCount = hd.selectItemDonateCount(sqlSession, m);
		
		return listCount;
	}

	//물품후원 목록 조회
	@Override
	public List<Funding> selectItemDonateList(int mno, PageInfo pi) throws MypageException {
		List<Funding> itemDonateList = hd.selectItemDonateList(sqlSession, mno, pi);
		
		return itemDonateList;
	}

	//금액후원 목록 개수 조회
	@Override
	public int selectMoneyDonateCount(Member m) throws MypageException {
		int listCount = hd.selectMoneyDonateCount(sqlSession, m);
		
		return listCount;
	}

	//금액후원 목록 조회
	@Override
	public List<Funding> selectMoneyDonateList(Member m, PageInfo pi) throws MypageException {
		List<Funding> moneyDonateList = hd.selectMoneyDonateList(sqlSession, m, pi);
		
		return moneyDonateList;
	}

	//Q&A 목록 개수 조회
	@Override
	public int selectQnaListCount(Member m) throws MypageException {
		int listCount = hd.selectQnaListCount(sqlSession, m);
		
		return listCount;
	}

	//Q&A 목록 조회
	@Override
	public List<Qna> selectQnaList(Member m, PageInfo pi) throws MypageException {
		List<Qna> qnaList = hd.selectQnaList(sqlSession, m, pi);
		
		return qnaList;
	}

	//Q&A 작성
	@Override
	public int insertQna(Qna q) throws MypageException {
		int result = hd.insertQna(sqlSession, q);
		
		return result;
	}
	
	//Q&A 상세보기
	@Override
	public List<Qna> selectQnaDetail(Qna q) throws MypageException {
		List<Qna> qnaDetail = hd.selectQnaDetail(sqlSession, q);
		
		return qnaDetail;
	}

	//감사편지 보낼 정기후원자 닉네임 뽑기
	@Override
	public List<Member> selectNanumNick(Member m) throws MypageException {
		List<Member> nanumNicks = hd.selectNanumNick(sqlSession, m);
		
		return nanumNicks;
	}

	//감사편지 보내기
	@Override
	public int insertThankyouLetter(Letter l) throws MypageException {
		int result = hd.insertThankyouLetter(sqlSession, l);
		
		return result;
	}

	//증빙서류 승인일 조회
	@Override
	public Attachment selectAdate(Member member) throws LoginException {
		Attachment aDate = hd.selectAdate(sqlSession, member);
		
		return aDate;
	}

	//증빙서류 현황 조회
	@Override
	public Attachment selectProofDocument(Member m) throws MypageException {
		Attachment proofDocument = hd.selectProofDocument(sqlSession, m);
		
		return proofDocument;
	}

	

	


	

	
	

	

}
