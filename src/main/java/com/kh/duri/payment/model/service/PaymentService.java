package com.kh.duri.payment.model.service;

import java.util.List;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

public interface PaymentService {

	// 나눔두리 - 포인트 히스토리 가져오기 
	List<Point> selectPointHistory(Member m) throws PointHistoryException;
	
	// 나눔두리 - 기부금영수증 발급내역 보기
	List<DonateReceipt> selectDonateReceiptHistory(Member m) throws ReceiptException;

	// 행복두리 - 환급목록 가져오기 
	List<Refund> selectRefundList(Member m) throws RefundException;

	// 행복두리 - 포인트 환급 요청하기
	int insertRefund(Refund r) throws RefundException;

	

}
