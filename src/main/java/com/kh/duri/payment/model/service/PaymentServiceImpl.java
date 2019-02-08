package com.kh.duri.payment.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.dao.PaymentDao;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

@Component
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private PaymentDao pd;
	
	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public List<Point> selectPointHistory(Member m) throws PointHistoryException {
		List<Point> phList = pd.selectPointHistory(sqlSession, m);	//DAO로 Member 정보와 sqlSession 전송
		
		return phList;
	}

	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> selectDonateReceiptHistory(Member m) throws ReceiptException {
		List<DonateReceipt> drList = pd.selectDonateReceiptHistory(sqlSession, m);
		
		return drList;
	}

	// 행복두리 - 환급목록 가져오기 
	@Override
	public List<Refund> selectRefundList(Member m) throws RefundException {
		List<Refund> rfList = pd.selectRefundList(sqlSession, m);
		
		return rfList;
	}

	
	

}
