package com.kh.duri.payment.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.kh.duri.payment.model.vo.DirectFundHist;
import com.kh.duri.payment.model.vo.DonateReceipt;
import com.kh.duri.payment.model.vo.FundItemDetail;
import com.kh.duri.payment.model.vo.PageInfo;
import com.kh.duri.payment.model.vo.Payment;
import com.kh.duri.payment.model.vo.Point;
import com.kh.duri.payment.model.vo.Refund;

public interface PaymentService {

	// 나눔두리 - 포인트 히스토리 갯수 세기
	int selectPointListCount(Member m) throws PointHistoryException;
	int selectSearchPointListCount(Member m) throws PointHistoryException;
	
	// 나눔두리 - 포인트 히스토리 가져오기 
	List<Point> selectPointHistory(Member m, PageInfo pi) throws PointHistoryException;
	
	// 나눔두리 - 기간별 포인트 히스토리 검색 
	List<Point> searchPointHistory(Member m, PageInfo pi) throws PointHistoryException;

	// 나눔두리 - 기부금영수증 발급내역 갯수 세기
	int selectReceiptListCount(Member m) throws ReceiptException;
	int selectSearchReceiptListCount(Member m) throws ReceiptException;
	
	// 나눔두리 - 기부금영수증 발급내역 보기
	List<DonateReceipt> selectDonateReceiptHistory(Member m, PageInfo pi) throws ReceiptException;
	
	// 나눔두리 - 기간별 기부금영수증 발급내역 검색
	List<DonateReceipt> searchDonateReceipt(Member m, PageInfo pi) throws ReceiptException;

	// 나눔,행복두리 - 환급목록 갯수 세기
	int selectListCount(Member m) throws RefundException;
	
	// 나눔,행복두리 - 환급목록 가져오기 
	List<Refund> selectRefundList(Member m, PageInfo pi) throws RefundException;

	// 나눔,행복두리 - 포인트 환급 요청하기
	Member insertRefund(Refund r, Member m) throws RefundException;
	
	// 나눔두리 - 후원포인트 충전하기
	Member insertPayment(Member m, Payment py) throws PaymentException;
	
	// 나눔두리 - 정기후원 내역 입력하기 (1차)
	int insertDirectFundHist(DirectFundHist dh) throws DirectFundException;
	
	// 나눔두리 - 다음 정기결제를 위한 merchant_id 값 가져오기
	DirectFundHist selectDirectFundId(DirectFundHist dh) throws DirectFundException;
	
	// 금액 후원 결제페이지 - 펀딩정보 select
	Board selectFundMoney(Board b) throws FundingException;
	
	// 금액 후원 진행 - 펀딩내역 insert
	Member insertFundMoneyHistory(FundHistory fh, String check, String fWriter, int isGoal) throws FundingException;
	
	// 물품 후원 결제페이지 - 펀딩정보 select
	HashMap<String, Object> selectFundItem(BoardItem bi) throws FundingException;
	
	// 물품 후원 진행 - 펀딩내역 insert
	Member insertFundItemHistory(FundHistory fh, ArrayList<FundItemDetail> fhdList, String check, String fWriter, int isGoal) throws FundingException;
	
	// 스케줄러 사용하여 정기후원 내역 insert
	int insertDirectFundDetailSchedule(String day) throws DirectFundException;

	
		

	

	

}
