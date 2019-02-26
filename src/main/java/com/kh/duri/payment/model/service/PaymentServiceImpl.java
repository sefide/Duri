package com.kh.duri.payment.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.vo.DirectFundHistoryDetail;
import com.kh.duri.Nanummember.model.vo.FundHistory;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.dao.PaymentDao;
import com.kh.duri.payment.model.exception.DirectFundException;
import com.kh.duri.payment.model.exception.FundingException;
import com.kh.duri.payment.model.exception.PaymentException;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.vo.BoardItemValue;
import com.kh.duri.payment.model.vo.DirectFundHist;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.FundItemDetail;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Payment;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

@Service
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private PaymentDao pd;
	
	// 나눔두리 - 포인트 히스토리 갯수 세기
	@Override
	public int selectPointListCount(Member m) throws PointHistoryException {
		int listCount = pd.selectPointListCount(sqlSession ,m);
		
		return listCount;
	}
	// 나눔두리 - 포인트 히스토리 갯수 세기 - 기간별 검색
	@Override
	public int selectSearchPointListCount(Member m) throws PointHistoryException {
		int listCount = pd.selectSearchPointListCount(sqlSession ,m);
		
		return listCount;
	}
	
	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public List<Point> selectPointHistory(Member m, PageInfo pi) throws PointHistoryException {
		List<Point> phList = pd.selectPointHistory(sqlSession, m, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return phList;
	}

	// 나눔두리 - 기간별 포인트 히스토리 검색 
	@Override
	public List<Point> searchPointHistory(Member m, PageInfo pi) throws PointHistoryException {
		List<Point> phList = pd.searchPointHistory(sqlSession, m, pi);	//DAO로 Member 정보와 sqlSession 전송
		
		return phList;
	}

	// 나눔두리 - 기부금영수증 발급내역 갯수 세기
	@Override
	public int selectReceiptListCount(Member m) throws ReceiptException {
		int listCount = pd.selectReceiptListCount(sqlSession ,m);
		
		return listCount;
	}
	// 나눔두리 - 기부금영수증 발급내역 갯수 세기 - 기간별 검색
	@Override
	public int selectSearchReceiptListCount(Member m) throws ReceiptException {
		int listCount = pd.selectSearchReceiptListCount(sqlSession ,m);
		
		return listCount;
	}


	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> selectDonateReceiptHistory(Member m, PageInfo pi) throws ReceiptException {
		List<DonateReceipt> drList = pd.selectDonateReceiptHistory(sqlSession, m, pi);
		
		return drList;
	}
	
	// 나눔두리 - 기간별 기부금영수증 발급내역 검색
	@Override
	public List<DonateReceipt> searchDonateReceipt(Member m, PageInfo pi) throws ReceiptException {
		List<DonateReceipt> drList = pd.searchDonateReceipt(sqlSession, m, pi);
		
		return drList;
	}
	
	// 나눔,행복두리 - 환급목록 갯수 세기
	@Override
	public int selectListCount(Member m) throws RefundException {
		int listCount = pd.selectListCount(sqlSession ,m);
		
		return listCount;
	}

	// 나눔,행복두리 - 환급목록 가져오기 
	@Override
	public List<Refund> selectRefundList(Member m, PageInfo pi) throws RefundException {
		List<Refund> rfList = pd.selectRefundList(sqlSession, m, pi);
		
		return rfList;
	}
	
	// 나눔,행복두리 - 포인트 환급 요청하기
	@Override
	public Member insertRefund(Refund r, Member m) throws RefundException {
		Member loginUser = pd.insertRefund(sqlSession, r, m);
		
		return loginUser;
	}
	
	// 나눔두리 - 후원포인트 충전하기
	@Override
	public Member insertPayment(Member m, Payment py) throws PaymentException {
		Member loginUser = pd.insertPayment(sqlSession, m, py);		
	
		return loginUser;
	}
	
	// 나눔두리 - 정기후원 내역 입력하기 (1차)
	@Override
	public int insertDirectFundHist(DirectFundHist dh) throws DirectFundException {
		int result = 0;
		// DirectFundHistory 입력
		int result1 = pd.insertDirectFundHist(sqlSession, dh);
		
		// DirectFundHistory seq번호 알아내기
		int resultDhNo = pd.selectDirectFundCurVal(sqlSession);
		dh.setDhNo(resultDhNo);
		
		// DirectFundHistoryDetail에도 입력
		int result2 = pd.insertDirectFundDetail(sqlSession, dh);
		
		// DirectFundHistoryDetail seq번호 알아내기
		int resultDhdNo = pd.selectDirectFundDetailCurVal(sqlSession);
		dh.setDhNo(resultDhdNo);
		
		// 나눔두리 - Point 이력 남기기
		int result3 = pd.insertPointDirect(sqlSession, dh);
		
		// 행복두리 - Point 업뎃하기
		int result4 = pd.updateDirecthPoint(sqlSession, dh);
		
		if(result1 > 0 && result2 > 0 && result3 > 0 && result4 > 0) {
			result = 1;
		}
		
		return result;
	}
	
	// 나눔두리 - 다음 정기결제를 위한 merchant_id 값 가져오기
	@Override
	public DirectFundHist selectDirectFundId(DirectFundHist dh) throws DirectFundException {
		DirectFundHist result = pd.selectDirectFundId(sqlSession, dh);
		
		return result;
	}

	// 금액 후원 결제페이지 - 펀딩정보 select
	@Override
	public Board selectFundMoney(Board b) throws FundingException {
		// 해당 금액후원글 정보  select
		Board resultBoard = pd.selectFundMoney(sqlSession, b);
		if(resultBoard == null) {
			resultBoard = new Board();
		}
		// 해당 금액후원글 펀딩 후원 누적액 select
		int curValue = pd.selectFundMoneyCulValue(sqlSession, b);
		
		resultBoard.setFdValue(curValue);
		
		return resultBoard;
	}
	
	// 금액 후원 진행 - 펀딩내역 insert
	@Override
	public Member insertFundMoneyHistory(FundHistory fh, String check, String fWriter, int isGoal) throws FundingException {
		// 후원 100% 달성 시 
		int resultGoal1 = 0;
		int resultGoal2 = 0;
		if(isGoal == 1) { // 100% 달성 시 
			System.out.println("후원 목표 달성 !!!!!!!!");
			// 해당 펀딩글 GOAL로 바꾸고, 마감일 변경 - 금액물품둘다
			resultGoal1 = pd.updateFundingGoal(sqlSession, fh);
			
		    // 후원자 GoalNum +1 하기
			resultGoal2 = pd.updateMemberGoalNum(sqlSession, fh);
			
		}

		// 후원 내역 입력하고
		int result1 = pd.insertFundMoneyHistory(sqlSession, fh);
		int result2 = 1;
		//System.out.println("service check : "+ check);
		if(check.equals("1")) {
			// 기부금 영수증 발급내역 넣고
			result2 = pd.insertDonateReceipt(sqlSession, fh);
		}
		
		Member m = new Member();
		m.setMno(Integer.parseInt(fWriter));
		m.setmPoint(fh.getFhValue());

		//System.out.println("service m : " + m);
		// 포인트 업데이트 (행복두리)
		int result3 = pd.updateMoneyhPoint(sqlSession, m);

		
		m.setMno(fh.getFhMnoGive());
		// 포인트 업데이트 (나눔두리)
		int result4 = pd.updateMoneynPoint(sqlSession, m);

		m.setMno(fh.getFhMnoGive());
		// 업데이트된 로그인 유저 조회 (나눔두리)
		Member resultM = pd.selectLoginnMember(sqlSession, m);

		// 후원내역번호 알아내기 select 
		int resultFhNo = pd.selectFundHistCurVal(sqlSession);
		
		fh.setFhNo(resultFhNo);
		// 포인트 이력 남기기 insert (나눔두리)
		int result6 = pd.insertFundnPoint(sqlSession, fh);
		
		// 포인트 이력 남기기 insert (행복두리)
		fh.setFhMnoGive(Integer.parseInt(fWriter));
		int result5 = pd.insertFundhPoint(sqlSession, fh);
		
		
		if(result1 > 0 && result2 > 0 && result3 > 0 && result4 > 0 && resultM != null) {
			return resultM;
		}else {
			return null;
		}
		
	}

	// 물품 후원 결제페이지 - 펀딩정보 select
	@Override
	public HashMap<String, Object> selectFundItem(BoardItem bi) throws FundingException {

		// 후원글 정보 불러오기
		BoardItem b = pd.selectFundItemBoard(sqlSession, bi);
		
		// 후원물품 정보 불러오기
		List<BoardItemValue> biList = pd.selectFundItem(sqlSession, bi);
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("biList", biList);
		hmap.put("b", b);
		return hmap;
	}
	
	// 물품 후원 진행 - 펀딩내역 insert
	@Override
	public Member insertFundItemHistory(FundHistory fh, ArrayList<FundItemDetail> fhdList, String check,
			String fWriter, int isGoal) throws FundingException {
		// 100% 달성 시 GOAL로 바꾸고, 마감일 변경 - 금액물품둘다
	    // 후원자 GoalNum +1 하기
		//System.out.println("check : "+ check); // 0이면 미발급 , 1이면 발급
		//System.out.println("isGoal : "+ isGoal);  // 0이면 미달성, 1이면 달성
		
		Member m = new Member();
		m.setMno(fh.getFhMnoGive());
		
		int resultGoal1 = 0;
		int resultGoal2 = 0;
		if(isGoal == 1) { // 100% 달성 시 
			System.out.println("후원 목표 달성 !!!!!!!!");
			// 해당 펀딩글 GOAL로 바꾸고, 마감일 변경 - 금액물품둘다
			resultGoal1 = pd.updateFundingGoal(sqlSession, fh);
			
		    // 후원자 GoalNum +1 하기
			resultGoal2 = pd.updateMemberGoalNum(sqlSession, fh);
			
		}
		
		// 후원내역 입력하고 (fundHistory/ fundHistoryDetail)
		int result1 = pd.insertFundItemHistory(sqlSession, fh);
		
		// 방금 insert한 후원내역 번호 가져와서 
		int fhd_fhNo = pd.selectFundHistCurVal(sqlSession);
		
		int result2 = 0;
		for(int i = 0; i < fhdList.size(); i++) {
			fhdList.get(i).setFhd_fhNo(fhd_fhNo);
			result2 += pd.insertFundItemHistoryDetail(sqlSession, fhdList.get(i));
		}
		
		int result3 = 0;
		// 기부금 영수증 (DonateReceipt)
		if(check.equals("1")) {
			result3 = pd.insertDonateReceipt(sqlSession, fh);
		}
		
		// 나눔두리 포인트 업데이트
		m.setmPoint(fh.getFhValue());
		int result4 = pd.updateMoneynPoint(sqlSession, m);
		
		// 행복두리 소유 물품 업데이트
		int result5 = 0;
		for(int i = 0; i < fhdList.size(); i++) {
			fhdList.get(i).setFhd_fhNo(fhd_fhNo);
			fhdList.get(i).setFhd_mNo_take(Integer.parseInt(fWriter));
			result5 = pd.updateHappyOwnItem(sqlSession, fhdList.get(i));
			
			//System.out.println("result5 : "+ result5);
			// 행복두리 소유 물품 추가하기
			if(result5 == 0) {
				pd.insertHappyOwnItem(sqlSession, fhdList.get(i));
			}
		}
		
		// 포인트 이력 insert  (Point)
		fh.setFhNo(fhd_fhNo);
		int result6 = pd.insertFundnPoint(sqlSession, fh);
		int result7 = pd.insertFundhPoint(sqlSession, fh);
		
		m.setMno(fh.getFhMnoGive());
		// 업데이트된 나눔두리 유저 세션 업데이트
		Member resultM = pd.selectLoginnMember(sqlSession, m);

		return resultM;
	}
	
	// 스케줄러 사용하여 정기후원 내역 insert
	@Override
	public int insertDirectFundDetailSchedule(String day) throws DirectFundException {
		// 오늘 날짜 기준과 같은 날을 가진 애들중 진행중인 정기후원 목록 뽑아와서 
		List<DirectFundHist> dhList = pd.selectDirectFundHistToday(sqlSession, day);
		int result = 0;
		System.out.println("스케줄 서비스 진입 ");
		for(int i = 0; i < dhList.size(); i++) {
			//System.out.println(dhList.get(i));
			
			// 몇회차 후원인지 확인
			int curCount = pd.selectFundCurCount(sqlSession, dhList.get(i).getDhNo());
			//System.out.println("curCount : "+ curCount);
			DirectFundHistoryDetail dhd = new DirectFundHistoryDetail();
			dhd.setDhdCount(curCount+1);
			dhd.setDhdDhno(dhList.get(i).getDhNo());
			dhd.setDhdValue(Integer.parseInt(dhList.get(i).getDhValue()));
			//System.out.println("dhd : "+ dhd);
			// 그 정보를 DirectFundDetail 테이블에 추가한다. 
			result = pd.insertDirectFundDetailNext(sqlSession, dhd);
			
			// 행복두리 해당하는 회원의 포인트 업데이트
			pd.updateDirecthPoint(sqlSession, dhList.get(i));
			
			Member m = new Member();
			m.setMno(dhList.get(i).getDh_mNo_take());
			// 포인트 이력 insert (행복/나눔)
			pd.insertPointDirect(sqlSession, dhList.get(i)); // 나눔두리
			pd.insertPointDirectHappy(sqlSession, dhList.get(i)); // 행복두리 
			
		}
		
		return result;
	}
	
	// webhook 사용하여 정기후원 내역 insert
	@Override
	public int insertDirectFundDetail(DirectFundHist rdh) throws DirectFundException {
		// 회차 정보 가져오고
		int curCount = pd.selectFundCurCount(sqlSession, rdh.getDhNo());
		
		// 일단 새로운 회차 DirectFundHistoryDetail에 insert
		//System.out.println("curCount : "+ curCount);
		DirectFundHistoryDetail dhd = new DirectFundHistoryDetail();
		dhd.setDhdCount(curCount+1);
		dhd.setDhdDhno(rdh.getDhNo());
		dhd.setDhdValue(Integer.parseInt(rdh.getDhValue()));
		//System.out.println("dhd : "+ dhd);
		// 그 정보를 DirectFundDetail 테이블에 추가한다. 
		int result1 = pd.insertDirectFundDetailNext(sqlSession, dhd);
		
		// DirectFundHistory 업데이트 
		int result2 = pd.updateDirectFundImpUid(sqlSession, rdh);
		
		// 행복두리 해당하는 회원의 포인트 업데이트
		pd.updateDirecthPoint(sqlSession,rdh);
		
		Member m = new Member();
		m.setMno(rdh.getDh_mNo_take());
		// 포인트 이력 insert (행복/나눔)
		pd.insertPointDirect(sqlSession, rdh); // 나눔두리
		pd.insertPointDirectHappy(sqlSession, rdh); // 행복두리 
		
		return result2;
	}
	

	
	
	
	

}
