package com.kh.duri.payment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.member.model.vo.Member;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.Point;

@Repository
public class PaymentDaoImpl implements PaymentDao {

	// 나눔두리 - 포인트 히스토리 가져오기 
	@Override
	public Point getPointHistory(SqlSessionTemplate sqlSession, Member m) {
		//HashMap<String,Object> ph = sqlSession.selectMap("Point.getPointHistory", m, );
		
		//System.out.println("Dao Point 객체 : "+ ph);
		return null;
	}

	// 나눔두리 - 기부금영수증 발급내역 보기
	@Override
	public List<DonateReceipt> getDonateReceiptHistory(SqlSessionTemplate sqlSession, Member m) {
		List<DonateReceipt> drList = sqlSession.selectList("Point.donateReceiptHistory", m);
		System.out.println("Dao Donate 객체 size : "+ drList.size());
		
		return drList;
	}

}
