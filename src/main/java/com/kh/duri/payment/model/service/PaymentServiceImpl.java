package com.kh.duri.payment.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.dao.PaymentDao;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;

@Component
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private PaymentDao pd;
	
	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public Point getPointHistory(Member m) {
		Point ph = pd.getPointHistory(sqlSession, m);	//DAO로 Member 정보와 sqlSession 전송
		
		return ph;
	}

	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> getDonateReceiptHistory(Member m) {
		List<DonateReceipt> drList = pd.getDonateReceiptHistory(sqlSession, m);
		
		return drList;
	}

	
	

}
