package com.kh.duri.payment.model.service;

import java.util.List;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;

public interface PaymentService {

	// 나눔두리 - 포인트 히스토리 가져오기 
	List<Point> getPointHistory(Member m) throws PointHistoryException;
	
	// 나눔두리 - 기부금영수증 발급내역 보기
	List<DonateReceipt> getDonateReceiptHistory(Member m) throws ReceiptException;

	

}
