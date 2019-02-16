package com.kh.duri.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.DirectFundException;
import com.kh.duri.payment.model.exception.PaymentException;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.vo.DirectFundHist;
import com.kh.duri.payment.model.vo.DonateReceipt;
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
		
		System.out.println("포인트 히스토리 수 : "+ listCount);
		if(listCount < 0) {
			throw new PointHistoryException("포인트 히스토리 수 조회 실패");
		}
		
		return listCount;
	}
	// 나눔두리 - 포인트 히스토리 갯수 세기 - 기간별 검색
	@Override
	public int selectSearchPointListCount(SqlSessionTemplate sqlSession, Member m) throws PointHistoryException {
		int listCount = sqlSession.selectOne("Point.selectSearchPointListCount", m);
		
		System.out.println("포인트 히스토리 수 : "+ listCount);
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
		
		System.out.println("Dao Point 객체 : "+ ph.size());
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
		
		System.out.println("Dao Point 객체 : "+ ph.size());
		return ph;
	}
	
	// 나눔두리 - 기부금영수증 발급내역 갯수 세기
	@Override
	public int selectReceiptListCount(SqlSessionTemplate sqlSession, Member m) throws ReceiptException {
		int listCount = sqlSession.selectOne("Point.selectReceiptListCount", m);
		
		System.out.println("기부금 영수증 수 : "+ listCount);
		if(listCount < 0) {
			throw new ReceiptException("기부금 영수증 수 조회 실패");
		}
		
		return listCount;
	}
	// 나눔두리 - 기부금영수증 발급내역 갯수 세기 - 기간별 검색 시 
	@Override
	public int selectSearchReceiptListCount(SqlSessionTemplate sqlSession, Member m) throws ReceiptException {
		int listCount = sqlSession.selectOne("Point.selectSearchReceiptListCount", m);
		
		System.out.println("기부금 영수증 수 : "+ listCount);
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
		
		System.out.println("Dao Donate 객체 size : "+ drList.size());
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
		
		System.out.println("Dao Donate 객체 size : "+ drList.size());
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
		System.out.println("Dao result : "+ result);
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
		
		if(result == null) {
			throw new DirectFundException("정기후원 내역을 조회할 수 없습니다.");
		}
		System.out.println("result : " + result);
	
		return result;
	}
	
	
	
	
	

	

}
