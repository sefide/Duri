package com.kh.duri.payment.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.dao.PaymentDao;
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

	

	
	
	
	

}
