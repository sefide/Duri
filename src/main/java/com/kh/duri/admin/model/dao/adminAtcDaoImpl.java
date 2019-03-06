package com.kh.duri.admin.model.dao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.admin.model.exception.ListException;
import com.kh.duri.admin.model.vo.Notice;
import com.kh.duri.admin.model.vo.RefundList;
import com.kh.duri.admin.model.vo.adminFundingList;
import com.kh.duri.admin.model.vo.adminMember;
import com.kh.duri.admin.model.vo.adminQnA;
import com.kh.duri.happymember.model.exception.MypageException;

@Repository
public class adminAtcDaoImpl implements adminAtcDao{

	//크라우드 금액 펀딩 승인목록
	@Override
	public List<adminFundingList> adminMoneyCrowdList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminMoneyCrowdList");
	}
	//크라우드 물품 펀딩 승인목록
	@Override
	public List<adminFundingList> adminGoodsFundingList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminGoodsFundingList");
	}
	//크라우드 펀딩 상세페이지 -회원정보
	@Override
	public adminMember CrowdMemInfoDetail(SqlSessionTemplate sqlsession, adminMember m) throws ListException {
		return sqlsession.selectOne("Admin.CrowdMemInfoDetail",m);
	}
	//크라우드 펀딩 상세페이지 -펀딩정보(금액)
	@Override
	public adminFundingList CrowdFundInfoDetail(SqlSessionTemplate sqlsession, adminFundingList f) throws ListException {
		return sqlsession.selectOne("Admin.CrowdFundInfoDetail",f);
	}
	//크라우드 펀딩 상세페이지 -펀딩정보(물품)
	@Override
	public List<adminFundingList> CrowdFundGoodsInfo(SqlSessionTemplate sqlsession, adminFundingList f) throws ListException {
		return sqlsession.selectList("Admin.CrowdFundGoodsInfo",f);
	}
	//관리자 행복두리 Q&A 목록
	@Override
	public List<adminQnA> adminQnAList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminQnAList");
	}
	//관리자 행복두리 Q&A 상세보기
	@Override
	public adminQnA adminQnADetail(SqlSessionTemplate sqlsession, adminQnA q) throws ListException {
		return sqlsession.selectOne("Admin.adminQnADetail",q);
	}

	//관리자 나눔두리 Q&A 목록
	@Override
	public List<adminQnA> adminNanumQnAList(SqlSessionTemplate sqlsession) throws ListException {
		return sqlsession.selectList("Admin.adminNanumQnAList");
	}
	//관리자 나눔두리 Q&A 상세보기
	@Override
	public adminQnA adminNanumQnADetail(SqlSessionTemplate sqlsession, adminQnA q) throws ListException {
		return sqlsession.selectOne("Admin.adminNanumQnADetail",q);
	}
	//관리자 나눔두리 Q&A 댓글달기
	@Override
	public int insertReply(SqlSessionTemplate sqlsession, adminQnA q) throws ListException {
		return sqlsession.insert("Admin.adminNanumReply", q);
	}

	//Q&A 답변하기 버튼
	@Override
	public int adminAnswer(SqlSessionTemplate sqlsession, adminQnA q)  {
		int result = sqlsession.update("Admin.adminAnswer",q);
		return result;
	}
	//크라우드 펀딩 반려 버튼
	@Override
	public int adminCrowdDeny(SqlSessionTemplate sqlsession, adminFundingList af) {
		int result = sqlsession.update("Admin.adminCrowdDeny",af);
		return result;
		
	}
	//크라우드 펀딩 승인 버튼
	@Override
	public int adminCrowdApprove(SqlSessionTemplate sqlsession, adminFundingList af) {
		int result = sqlsession.update("Admin.adminCrowdApprove",af);
		return result;

	}
	//관리자 환급하기 목록
	@Override
	public List<RefundList> adminRefundList(SqlSessionTemplate sqlsession,RefundList r, PageInfo pi) throws ListException {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		return sqlsession.selectList("Admin.adminRefundList",r,rowBounds);
	}
	
	//환급하기 갯수 조회
	@Override
	public int selectRefundPageCount(SqlSessionTemplate sqlsession, RefundList r) {
		
		int listCount = sqlsession.selectOne("Admin.adminRefundListCount", r);
		
		return listCount;
	}
	//환불하기 버튼 ajax
	@Override
	public int adminRefundButton(SqlSessionTemplate sqlsession, RefundList rfL) {
		int result = sqlsession.update("Admin.adminRefundButton",rfL);
		return result;
	}
	//행복두리 알림보내기 ajax
	@Override
	public List<Notice> adminAlarm(SqlSessionTemplate sqlsession, Notice n) {
		return sqlsession.selectList("Admin.adminAlarm",n);
	}
	//행복두리 알림확인완료 ajax
	@Override
	public int adminAlarmBtn(SqlSessionTemplate sqlsession, Notice n) {
		int result = sqlsession.update("Admin.adminAlarmBtn",n);
		return result;
	}
	
	
	
	
	//통계 페이지 - bar chart 데이터
	@Override
	public List<HashMap<String, String>> getBarChartList(SqlSessionTemplate sqlsession) {
		return sqlsession.selectList("Admin.getBarChartList");
	}
	
	
	
	
	//Today
	@Override
	public int TodayNewNanum(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewNanum");
		return result;
	}
	@Override
	public int TodayNewHappy(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewHappy");
		return result;
	}
	@Override
	public int TodayNewDirect(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewDirect");
		return 0;
	}
	@Override
	public int TodayNewFund(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewFund");
		return result;
	}
	@Override
	public int TodayNewDirectMoney(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewDirectMoney");
		return result;
	}
	@Override
	public int TodayNewItem(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewItem");
		return result;
	}
	@Override
	public int TodayNewFundMoney(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewFundMoney");
		return result;
	}
	@Override
	public int TodayNewPoint(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTodayNewPoint");
		return result;
	}
	
	
	
	
	
	
	//Total
	@Override
	public int TotalNanum(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalNanum");
		return result;
	}
	@Override
	public int TotalHappy(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalHappy");
		return result;
	}
	@Override
	public int TotalDirect(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalDirect");
		return result;
	}
	@Override
	public int Totalitem(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalitem");
		return result;
	}
	@Override
	public int Totalfund(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalfund");
		return result;
	}
	@Override
	public int TotalitemMoney(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalitemMoney");
		return result;
	}
	@Override
	public int TotalDirectConn(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalDirectConn");
		return result;
	}
	@Override
	public int TotalFundUpload(SqlSessionTemplate sqlsession) {
		int result = sqlsession.selectOne("Admin.adminTotalFundUpload");
		return result;
	}
	
	
	
	
	
	
	
	
	
}
