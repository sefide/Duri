package com.kh.duri.payment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.vo.DirectFundHistoryDetail;
import com.kh.duri.Nanummember.model.vo.FundHistory;
import com.kh.duri.board.model.vo.Board;
import com.kh.duri.board.model.vo.BoardItem;
import com.kh.duri.member.model.vo.Member;
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

@Repository
public class PaymentDaoImpl implements PaymentDao {

	// 나눔두리 - 포인트 히스토리 갯수 세기
	@Override
	public int selectPointListCount(SqlSessionTemplate sqlSession, Member m) throws PointHistoryException {
		int listCount = sqlSession.selectOne("Point.selectPointListCount", m);
		
		//System.out.println("포인트 히스토리 수 : "+ listCount);
		if(listCount < 0) {
			throw new PointHistoryException("포인트 히스토리 수 조회 실패");
		}
		
		return listCount;
	}
	// 나눔두리 - 포인트 히스토리 갯수 세기 - 기간별 검색
	@Override
	public int selectSearchPointListCount(SqlSessionTemplate sqlSession, Member m) throws PointHistoryException {
		int listCount = sqlSession.selectOne("Point.selectSearchPointListCount", m);
		
		//System.out.println("포인트 히스토리 수 : "+ listCount);
		if(listCount < 0) {
			throw new PointHistoryException("포인트 히스토리 수 조회 실패");
		}
		
		return listCount;
	}
	
	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public List<Point> selectPointHistory(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws PointHistoryException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Point> ph = sqlSession.selectList("Point.selectPointHistory", m, rowBounds);
		
		if(ph == null){
			throw new PointHistoryException("포인트 발급내역 정보가 존재하지 않습니다.");
		}
		
		//System.out.println("Dao Point 객체 : "+ ph.size());
		return ph;
	}

	// 나눔두리 - 기간별 포인트 히스토리 검색 
	@Override
	public List<Point> searchPointHistory(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws PointHistoryException{
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Point> ph = sqlSession.selectList("Point.searchPointHistory", m, rowBounds);
		
		if(ph == null){
			throw new PointHistoryException("포인트 발급내역 정보가 존재하지 않습니다.");
		}
		
		//System.out.println("Dao Point 객체 : "+ ph.size());
		return ph;
	}
	
	// 나눔두리 - 기부금영수증 발급내역 갯수 세기
	@Override
	public int selectReceiptListCount(SqlSessionTemplate sqlSession, Member m) throws ReceiptException {
		int listCount = sqlSession.selectOne("Point.selectReceiptListCount", m);
		
		//System.out.println("기부금 영수증 수 : "+ listCount);
		if(listCount < 0) {
			throw new ReceiptException("기부금 영수증 수 조회 실패");
		}
		
		return listCount;
	}
	// 나눔두리 - 기부금영수증 발급내역 갯수 세기 - 기간별 검색 시 
	@Override
	public int selectSearchReceiptListCount(SqlSessionTemplate sqlSession, Member m) throws ReceiptException {
		int listCount = sqlSession.selectOne("Point.selectSearchReceiptListCount", m);
		
		//System.out.println("기부금 영수증 수 : "+ listCount);
		if(listCount < 0) {
			throw new ReceiptException("기부금 영수증 수 조회 실패");
		}
		
		return listCount;
	}

	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> selectDonateReceiptHistory(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws ReceiptException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<DonateReceipt> drList = sqlSession.selectList("Point.donateReceiptHistory", m, rowBounds);
		
		if(drList == null){
			throw new ReceiptException("기부금 발급내역 정보가 존재하지 않습니다.");
		}
		
		//System.out.println("Dao Donate 객체 size : "+ drList.size());
		return drList;
	}
	
	// 나눔두리 - 기간별 기부금영수증 발급내역 검색
	@Override
	public List<DonateReceipt> searchDonateReceipt(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws ReceiptException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<DonateReceipt> drList = sqlSession.selectList("Point.searchDonateReceipt", m, rowBounds);

		if(drList == null){
			throw new ReceiptException("기부금 발급내역 정보가 존재하지 않습니다.");
		}
		
		//System.out.println("Dao Donate 객체 size : "+ drList.size());
		return drList;
	}


	// 나눔,행복두리 - 환급목록 갯수 세기
	@Override
	public int selectListCount(SqlSessionTemplate sqlSession, Member m) throws RefundException {
		int listCount = sqlSession.selectOne("Point.selectRefundListCount", m);
		
		//System.out.println("환급 내역 수 : "+ listCount);
		if(listCount < 0) {
			throw new RefundException("환급내역 수 조회 실패");
		}
		
		return listCount;
	}

	// 나눔,행복두리 - 환급목록 가져오기
	@Override
	public List<Refund> selectRefundList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) throws RefundException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Refund> rfList = sqlSession.selectList("Point.selectRefundList", m, rowBounds);
		
		
		if(rfList == null){
			throw new RefundException("환급 내역이 존재하지 않습니다.");
		}
		//System.out.println("Dao Refund 객체 size : "+ rfList.size());
		
		return rfList;
	}
	
	// 나눔,행복두리 - 포인트 환급 요청하기
	@Override
	public Member insertRefund(SqlSessionTemplate sqlSession, Refund r, Member m) throws RefundException {
		int result = sqlSession.insert("Point.insertRefund", r);
		int r_No = 0;
		int resultPoint = -1;
		int resultInsertPoint = -1;
		Member loginUser = null;

		if(result == 0){
			throw new RefundException("환급 신청을 실패했습니다.");
		}else {
			r_No = sqlSession.selectOne("Point.selectRefundCurVal");
			resultPoint = sqlSession.update("Point.updateRefundPoint", r);
			
			if(m.getMtype().equals("H")) { // 행복두리
				loginUser = sqlSession.selectOne("Point.loginHaCheck", m);
			}else {  // 나눔두리 
				loginUser = sqlSession.selectOne("Point.loginNaCheck", m);
			}
			
			if(resultPoint <= 0 || loginUser == null || r_No == 0) {
				throw new RefundException("포인트 변경을 실패했습니다.");
			}else {
				r.setrNo(r_No);
				resultInsertPoint = sqlSession.insert("Point.insertPointHistoryRefund", r);
			}
		}
		//System.out.println("Dao result : "+ result);
		//System.out.println("환급 후 포인트이력에 추가가 되었는가? "+ resultInsertPoint);
		
		return loginUser;
	}
	
	// 나눔두리 - 후원포인트 충전하기
	@Override
	public Member insertPayment(SqlSessionTemplate sqlSession, Member m, Payment py) throws PaymentException {
		int result = sqlSession.insert("Point.insertPayment", py);		
		int py_No = 0;
		int resultPoint = -1;
		int resultInsertPoint = -1;
		Member loginUser = null;
		// 1. payment테이블 insert
		
		if(result == 0){
			throw new PaymentException("결제를 실패했습니다.");
		}else {
			py_No = sqlSession.selectOne("Point.selectPaymentCurVal");

			// 2. 포인트 이력 추가
			resultPoint = sqlSession.update("Point.updatePaymentPoint", py);
			
			// 3. 포인트 증가시켜서 회원정보 업데이트
			if(m.getMtype().equals("H")) { // 행복두리
				loginUser = sqlSession.selectOne("Point.loginHaCheck", m);
			}else {  // 나눔두리 
				loginUser = sqlSession.selectOne("Point.loginNaCheck", m);
			}
			
			if(resultPoint <= 0 || loginUser == null || py_No == 0) {
				throw new PaymentException("포인트 변경을 실패했습니다.");
			}else {
				py.setPyNo(py_No);
				resultInsertPoint = sqlSession.insert("Point.insertPointHistoryPayment", py);
			}
		}
		
		//System.out.println("환급 후 포인트이력에 추가가 되었는가? "+ resultInsertPoint);
		
		return loginUser;
	}
	
	
	// 나눔두리 - 정기후원 정보 입력하기 
	@Override
	public int insertDirectFundHist(SqlSessionTemplate sqlSession, DirectFundHist dh) throws DirectFundException {
		int result = sqlSession.insert("Point.insertDirectFundHist", dh);
		
		if(result == 0) {
			throw new DirectFundException("정기후원 정보 입력에 실패했습니다.");
		}
		return result;
	}
	
	// DirectFundHistory seq번호 알아내기
	@Override
	public int selectDirectFundCurVal(SqlSessionTemplate sqlSession) throws DirectFundException {
		int result = sqlSession.selectOne("Point.selectDirectFundCurVal");
		
		if(result == 0) {
			throw new DirectFundException("정기후원 번호를 가져오지 못했습니다.");
		}
		
		return result;
	}

	// 나눔두리 - 정기후원 상세내역 입력하기 (1차)
	@Override
	public int insertDirectFundDetail(SqlSessionTemplate sqlSession, DirectFundHist dh) throws DirectFundException {
		int result = sqlSession.insert("Point.insertDirectFundDetail", dh);
		
		if(result == 0) {
			throw new DirectFundException("정기후원 정보 상세입력에 실패했습니다.");
		}
		
		return result;
	}

	// DirectFundHistoryDetail seq번호 알아내기
	@Override
	public int selectDirectFundDetailCurVal(SqlSessionTemplate sqlSession) throws DirectFundException {
		int result = sqlSession.selectOne("Point.selectDirectFundDetailCurVal");
		
		if(result == 0) {
			throw new DirectFundException("정기후원 정보 입력에 실패했습니다.");
		}
		
		return result;
	}
	

	// 나눔두리 - Point이력에 정기후원 정보 입력하기
	@Override
	public int insertPointDirect(SqlSessionTemplate sqlSession, DirectFundHist dh) throws DirectFundException {
		int result = sqlSession.insert("Point.insertPointDirect", dh);
		
		if(result == 0) {
			throw new DirectFundException("정기후원 정보 입력에 실패했습니다.");
		}
		
		return result;
	}
	
	// 행복두리 - Point 업뎃하기
	@Override
	public int updateDirecthPoint(SqlSessionTemplate sqlSession, DirectFundHist dh) throws DirectFundException {
		int result = sqlSession.update("Point.updateDirectPoint", dh);
		
		if(result == 0) {
			throw new DirectFundException("행복두리 포인트 업데이트에 실패했습니다.");
		}
		
		return result;
	}

	
	// 나눔두리 - 다음 정기결제를 위한 merchant_id 값 가져오기
	@Override
	public DirectFundHist selectDirectFundId(SqlSessionTemplate sqlSession, DirectFundHist dh) throws DirectFundException {
		DirectFundHist result = sqlSession.selectOne("Point.selectDirectFundId", dh);
		
		/*if(result == null) {
			throw new DirectFundException("정기후원 내역을 조회할 수 없습니다.");
		}*/
		//System.out.println("result : " + result);
	
		return result;
	}
	
	// 금액 후원 결제페이지 - 펀딩정보 select
	@Override
	public Board selectFundMoney(SqlSessionTemplate sqlSession, Board b) throws FundingException {
		Board resultBoard = sqlSession.selectOne("Point.selectFundMoney", b);
		
		if(resultBoard == null) {
			throw new FundingException("금액후원 정보를 조회할 수 없습니다. ");
		}
		
		return resultBoard;
	}
	

	// 물품 후원 결제페이지 - 후원물품정보 select
	@Override
	public int selectFundMoneyCulValue(SqlSessionTemplate sqlSession, Board b) {
		Integer result = sqlSession.selectOne("Point.selectFundMoneyCulValue", b);
		
		if(result == null) {
			result = 0;
		}
		System.out.println("dao 현재 누적 후원금 :" + result);
		return result;
	}
	
	// 금액 후원 진행 - 펀딩내역 insert
	@Override
	public int insertFundMoneyHistory(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.insert("Point.insertFundMoneyHistory", fh);
		
		if(result == 0) {
			throw new FundingException("후원정보를 입력할 수 없습니다. ");
		}
		
		return result;
	}

	// 기부금 영수증 발급내역 insert
	@Override
	public int insertDonateReceipt(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.insert("Point.insertDonateReceipt", fh);
		
		if(result == 0) {
			throw new FundingException("기부금영수증 발급이력을 입력할 수 없습니다. ");
		}
		
		return result;
	}
	
	// 포인트 update (행복두리)
	@Override
	public int updateMoneyhPoint(SqlSessionTemplate sqlSession, Member m) throws FundingException {
		int result = sqlSession.update("Point.updateMoneyhPoint", m);
		
		if(result == 0) {
			throw new FundingException("로그인 정보를 가져올 수 없습니다. ");
		}
		
		return result;
	}
	
	// 포인트 update (나눔두리)
	@Override
	public int updateMoneynPoint(SqlSessionTemplate sqlSession, Member m) throws FundingException {
		//System.out.println("업데이트할 나눔두리 회원번호 : "+ m.getMno());
		int result = sqlSession.update("Point.updateMoneynPoint", m);
		
		if(result == 0) {
			throw new FundingException("로그인 정보를 가져올 수 없습니다. ");
		}
		
		return result;
	}
	
	// 로그인 유저 select (나눔두리)
	@Override
	public Member selectLoginnMember(SqlSessionTemplate sqlSession, Member m) throws FundingException {
		//System.out.println("m : " + m.getMno());
		Member resultM = sqlSession.selectOne("Point.loginNaCheck", m);

		if(resultM == null) {
			throw new FundingException("로그인 정보를 가져올 수 없습니다. ");
		}
		
		return resultM;
	}
	
	// 포인트 이력 update() - 나눔두리 
	@Override
	public int insertFundnPoint(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.insert("Point.insertFundnPoint", fh);

		System.out.println("dao 나눔두리 포인트이력 업뎃 - " + fh);
		if(result == 0) {
			throw new FundingException("포인트 이력을 업데이트하지 못하였습니다. ");
		}
		
		return result;
	}

	// 포인트 이력 update() - 행복두리
	@Override
	public int insertFundhPoint(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.insert("Point.insertFundhPoint", fh);
		System.out.println("dao 행복두리 포인트이력 업뎃 - " + fh);
		if(result == 0) {
			throw new FundingException("포인트 이력을 업데이트하지 못하였습니다. ");
		}
		
		return result;
	}
	
	// 후원내역번호 알아내기 select 
	@Override
	public int selectFundHistCurVal(SqlSessionTemplate sqlSession) throws FundingException {
		int result = sqlSession.selectOne("Point.selectFundHistCurVal");
		
		if(result == 0) {
			throw new FundingException("후원내역 번호를 조회하지 못했습니다.");
		}
		
		return result;
	}
	
	// 물품 후원 결제페이지 - 후원글 정보 select
	@Override
	public BoardItem selectFundItemBoard(SqlSessionTemplate sqlSession, BoardItem bi) throws FundingException {
		BoardItem b = sqlSession.selectOne("Point.selectFundItemBoard", bi);
		
		if(b == null) {
			throw new FundingException("후원글 정보를 조회할 수 없습니다. ");
		}
		System.out.println("Dao b : " + b);
		return b;
	}
	
	// 물품 후원 결제페이지 - 후원물품정보 select
	@Override
	public List<BoardItemValue> selectFundItem(SqlSessionTemplate sqlSession, BoardItem bi) throws FundingException {
		List<BoardItemValue> biList = null;
		biList = sqlSession.selectList("Point.selectFundItem", bi);
		if(biList.size() == 0) {
			biList = sqlSession.selectList("Point.selectFundItemNull", bi);
			for(int i = 0; i < biList.size(); i++) {
				biList.get(i).setSumItemValue("0");
			}
			
		}
		System.out.println("Dao biList : " + biList);
		return biList;
	}
	
	// 펀딩 100% 시 펀딩정보 업데이트
	@Override
	public int updateFundingGoal(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.update("Point.updateFundingGoal", fh);

		if(result == 0) {
			throw new FundingException("크라우드 펀딩 달성 설정에 실패했습니다. - 펀딩글");
		}
		
		return result;
	}
	
	// 펀딩 100% 시 나눔두리 정보 업데이트
	@Override
	public int updateMemberGoalNum(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.update("Point.updateMemberGoalNum", fh);
		
		if(result == 0) {
			throw new FundingException("크라우드 펀딩 달성 설정에 실패했습니다. - 회원");
		}
		
		return result;
		
	}
	
	// 펀딩내역 insert (FundHistory) - 물품후원
	@Override
	public int insertFundItemHistory(SqlSessionTemplate sqlSession, FundHistory fh) throws FundingException {
		int result = sqlSession.insert("Point.insertFundItemHistory", fh);
		
		if(result == 0) {
			throw new FundingException("물품 후원내역 입력에 실패했습니다.");
		}
		
		return result;
	}
	
	// 펀딩내역 insert (FundHistoryDetail) - 물품후원
	@Override
	public int insertFundItemHistoryDetail(SqlSessionTemplate sqlSession, FundItemDetail fid)
			throws FundingException {
		int result = sqlSession.insert("Point.insertFundItemHistoryDetail", fid);
		
		if(result == 0) {
			throw new FundingException("물품 후원 상세내역 입력에 실패했습니다.");
		}
		
		return result;
	}
	
	// 행복두리 소유물품 업데이트 (갯수)
	@Override
	public int updateHappyOwnItem(SqlSessionTemplate sqlSession, FundItemDetail fid) throws FundingException {
		int result = sqlSession.insert("Point.updateHappyOwnItem", fid);
		
		return result;
	}
	
	// 행복두리 소유물품 추가 (새로운 소유물품)
	@Override
	public void insertHappyOwnItem(SqlSessionTemplate sqlSession, FundItemDetail fid) throws FundingException {
		int result = sqlSession.insert("Point.insertHappyOwnItem", fid);
		
		if(result == 0) {
			throw new FundingException("후원 물품을 행복두리에게 보내는데 실패했습니다. (추가)");
		}
		
	}
	
	// 정기후원 스케줄, 오늘 결제해야 하는 정기후원 내역list select
	@Override
	public List<DirectFundHist> selectDirectFundHistToday(SqlSessionTemplate sqlSession, String day) throws DirectFundException{
		List<DirectFundHist> dhList = sqlSession.selectList("Point.selectDirectFundHistToday", day);
		
		return dhList;
	}
	
	// 정기후원 스케줄, 몇회차 후원인지 확인 select
	@Override
	public int selectFundCurCount(SqlSessionTemplate sqlSession, int dhNo) throws DirectFundException {
		int curCount = sqlSession.selectOne("Point.selectFundCurCount", dhNo);
		
		if(curCount == 0) {
			throw new DirectFundException("스케쥴, 정기후원 결제내역 입력 실패 (회차조회)");
		}
		return curCount;
	}
	
	// 정기후원 스케줄, 새로운 회차 정기후원 insert
	@Override
	public int insertDirectFundDetailNext(SqlSessionTemplate sqlSession, DirectFundHistoryDetail dhd) throws DirectFundException {
		int result = sqlSession.insert("Point.insertDirectFundDetailNext", dhd);
		
		if(result == 0) {
			throw new DirectFundException("스케쥴, 정기후원 결제내역 입력 실패 (상세정보입력)");
		}
		return result;
	}
	
	// 정기후원 포인트 이력 insert (행복두리)
	@Override
	public void insertPointDirectHappy(SqlSessionTemplate sqlSession, DirectFundHist directFundHist) throws DirectFundException {
		int result = sqlSession.insert("Point.insertPointDirectHappy", directFundHist);
		
		if(result == 0) {
			throw new DirectFundException("스케쥴, 정기후원 포인트 이력(행복두리) 입력 실패");
		}
	}
	
	// 정기후원 새로운 회차 결제 완료 후 merchant_id update  
	@Override
	public int updateDirectFundImpUid(SqlSessionTemplate sqlSession, DirectFundHist rdh) throws DirectFundException {
		int result = sqlSession.update("Point.updateDirectFundImpUid", rdh);
		
		if(result == 0) {
			throw new DirectFundException("정기후원 , 다음 회차 정보 업데이트 실패");
		}
		return result;
	}
	

	
	
	

	

}
