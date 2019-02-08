package com.kh.duri.payment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.exception.PointHistoryException;
import com.kh.duri.payment.model.exception.ReceiptException;
import com.kh.duri.payment.model.exception.RefundException;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

@Repository
public class PaymentDaoImpl implements PaymentDao {

	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public List<Point> selectPointHistory(SqlSessionTemplate sqlSession, Member m) throws PointHistoryException {
		//HashMap<String,Object> ph = sqlSession.selectMap("Point.getPointHistory", m, );
		List<Point> ph = sqlSession.selectList("Point.selectPointHistory", m);
		
		if(ph == null){
			throw new PointHistoryException("포인트 발급내역 정보가 존재하지 않습니다.");
		}
		
		System.out.println("Dao Point 객체 : "+ ph.size());
		return ph;
	}

	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> selectDonateReceiptHistory(SqlSessionTemplate sqlSession, Member m) throws ReceiptException {
		List<DonateReceipt> drList = sqlSession.selectList("Point.donateReceiptHistory", m);
		
		if(drList == null){
			throw new ReceiptException("기부금 발급내역 정보가 존재하지 않습니다.");
		}
		
		System.out.println("Dao Donate 객체 size : "+ drList.size());
		return drList;
	}

	// 행복두리 - 환급목록 가져오기
	@Override
	public List<Refund> selectRefundList(SqlSessionTemplate sqlSession, Member m) throws RefundException {
		List<Refund> rfList = sqlSession.selectList("Point.selectRefundList", m);
		
		if(rfList == null){
			throw new RefundException("환급 내역이 존재하지 않습니다.");
		}
		System.out.println("Dao Refund 객체 size : "+ rfList.size());
		
		return rfList;
	}
	
	// 행복두리 - 포인트 환급 요청하기
	@Override
	public int insertRefund(SqlSessionTemplate sqlSession, Refund r) throws RefundException {
		int result = sqlSession.insert("Point.insertRefund", r);
		
		if(result == 0){
			throw new RefundException("환급 신청을 실패했습니다.");
		}
		System.out.println("Dao result : "+ result);
		
		return result;
	}

}
