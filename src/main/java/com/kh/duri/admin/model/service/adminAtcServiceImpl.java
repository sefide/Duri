package com.kh.duri.admin.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.admin.model.dao.adminAtcDao;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Notice;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;

@Service
public class adminAtcServiceImpl implements adminAtcService{
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	@Autowired
	private adminAtcDao aad;

	//크라우드 금액 펀딩 승인목록
	@Override
	public List<adminFundingList> adminMoneyCrowdList() throws ListException {
		List<adminFundingList>list = aad.adminMoneyCrowdList(sqlsession);
		return list;
	}
	//크라우드 물품 펀딩 승인목록
	@Override
	public List<adminFundingList> adminGoodsFundingList() throws ListException {
		List<adminFundingList>list = aad.adminGoodsFundingList(sqlsession);
		return list;
	}
	
	//크라우드 펀딩 상세페이지 -회원정보
	@Override
	public adminMember CrowdMemInfoDetail(adminMember m) throws ListException {
		adminMember CrowdMemInfoDetail = aad.CrowdMemInfoDetail(sqlsession,m);
		return CrowdMemInfoDetail;
	}
	
	//크라우드 펀딩 상세페이지 -펀딩정보(금액)
	@Override
	public adminFundingList CrowdFundInfoDetail(adminFundingList f) throws ListException {
		adminFundingList CrowdFundInfoDetail = aad.CrowdFundInfoDetail(sqlsession,f);
		return CrowdFundInfoDetail;
	}
	//크라우드 펀딩 상세페이지 -펀딩정보(물품)
	@Override
	public List<adminFundingList> CrowdFundGoodsInfo(adminFundingList f) throws ListException {
		List<adminFundingList> CrowdFundGoodsInfo = aad.CrowdFundGoodsInfo(sqlsession,f);
		return CrowdFundGoodsInfo;
	}
	//관리자 행복두리 Q&A 목록
	@Override
	public List<adminQnA> adminQnAList() throws ListException {
		List<adminQnA>list = aad.adminQnAList(sqlsession);
		return list;
	}
	//관리자 행복두리 Q&A 상세보기
	@Override
	public adminQnA adminQnADetail(adminQnA q) throws ListException {
		adminQnA adminQnADetail = aad.adminQnADetail(sqlsession,q);
		return adminQnADetail;
	}

	//관리자 나눔두리 Q&A 목록
	@Override
	public List<adminQnA> adminNanumQnAList() throws ListException {
		List<adminQnA>list = aad.adminNanumQnAList(sqlsession);
		return list;
	}
	//관리자 나눔두리 Q&A 상세보기
	@Override
	public adminQnA adminNanumQnADetail(adminQnA q) throws ListException {
		adminQnA adminNanumQnADetail = aad.adminNanumQnADetail(sqlsession,q);
		return adminNanumQnADetail;
	}
	//관리자 나눔두리 Q&A 댓글달기
	@Override
	public int insertReply(adminQnA q) throws ListException {
		int result = aad.insertReply(sqlsession,q);
		return result;
	}
	//Q&A 답변하기 버튼
	@Override
	public int adminAnswer(adminQnA q) {
		int result = aad.adminAnswer(sqlsession,q);
		return result;
	}
	//크라우드 펀딩 반려 버튼
	@Override
	public int adminCrowdDeny(adminFundingList af) {
		int result = aad.adminCrowdDeny(sqlsession,af);
		return result;
	}
	//크라우드 펀딩 승인 버튼
	@Override
	public int adminCrowdApprove(adminFundingList af) {
		int result = aad.adminCrowdApprove(sqlsession,af);

		return result;
	}
	//관리자 환급하기 목록
	@Override
	public List<RefundList> adminRefundList(RefundList r,PageInfo pi) throws ListException {
		List<RefundList>list = aad.adminRefundList(sqlsession,r,pi);
		return list;
	}

	//관리자 환급하기 목록 갯수 조회
	@Override
	public int selectRefundPageCount(RefundList r) {
		
		int listCount = aad.selectRefundPageCount(sqlsession, r);
		
		return listCount;
	}
	//환불하기 버튼 ajax
	@Override
	public int adminRefundButton(RefundList rfL) {
		
		int result = aad.adminRefundButton(sqlsession,rfL);
		
		return result;
	}
	//행복두리 알림보내기 ajax
	@Override
	public List<Notice> adminAlarm(Notice n){
		List<Notice>list = aad.adminAlarm(sqlsession,n);
		return list;
	}
	//행복두리 알림확인완료 ajax
	@Override
	public int adminAlarmBtn(Notice n) {
		
		int result = aad.adminAlarmBtn(sqlsession,n);
				
		return result;
	}
	
	
	
	
	
	
	//통계 페이지 - bar chart 데이터
	@Override
	public List<HashMap<String, String>> getBarChartList() {
		return aad.getBarChartList(sqlsession);
	}
	
	
	
	//today
	@Override
	public int TodayNewNanum() {
		int result =aad.TodayNewNanum(sqlsession);
		return result;
	}
	@Override
	public int TodayNewHappy() {
		int result =aad.TodayNewHappy(sqlsession);
		return result;
	}
	@Override
	public int TodayNewDirect() {
		int result =aad.TodayNewDirect(sqlsession);
		return result;
	}
	@Override
	public int TodayNewFund() {
		int result =aad.TodayNewFund(sqlsession);
		return result;
	}
	@Override
	public int TodayNewDirectMoney() {
		int result =aad.TodayNewDirectMoney(sqlsession);
		return result;
	}
	@Override
	public int TodayNewItem() {
		int result =aad.TodayNewItem(sqlsession);
		return result;
	}
	@Override
	public int TodayNewFundMoney() {
		int result =aad.TodayNewFundMoney(sqlsession);
		return result;
	}
	@Override
	public int TodayNewPoint() {
		int result =aad.TodayNewPoint(sqlsession);
		return result;
	}
	
	
	
	
	//Total
	@Override
	public int TotalNanum() {
		int result =aad.TotalNanum(sqlsession);
		return result;
	}
	@Override
	public int TotalHappy() {
		int result =aad.TotalHappy(sqlsession);
		return result;
	}
	@Override
	public int TotalDirect() {
		int result =aad.TotalDirect(sqlsession);
		return result;
	}
	@Override
	public int Totalfund() {
		int result =aad.Totalfund(sqlsession);
		return result;
	}
	@Override
	public int Totalitem() {
		int result =aad.Totalitem(sqlsession);
		return result;
	}
	@Override
	public int TotalitemMoney() {
		int result =aad.TotalitemMoney(sqlsession);
		return result;
	}
	@Override
	public int TotalDirectConn() {
		int result =aad.TotalDirectConn(sqlsession);
		return result;
	}
	@Override
	public int TotalFundUpload() {
		int result =aad.TotalFundUpload(sqlsession);
		return result;
	}
	

	
}
