package com.kh.duri.Nanummember.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.duri.Nanummember.model.dao.NanumMemberDao;
import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.DirectFundHistory;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.FundItem;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.QnA;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

@Service
public class NanumMemberServiceImpl implements NanumMemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NanumMemberDao nd;

	//크라우드 펀딩 수 가져오기
	@Override
	public HashMap<String, Integer> getCloudCont(Member m) throws NanumException {
		HashMap<String, Integer> cloudCount = nd.getCloudCont(sqlSession, m);
		return cloudCount;
	}
	//크라우드 펀딩 가져오기
	@Override
	public HashMap<String, List> selectCloudList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List> cloudList = nd.selectCloudList(sqlSession,m,paging);
		return cloudList;
	}
	//정기후원 수 가져오기
	@Override
	public HashMap<String, Integer> getFundCount(Member m) throws NanumException {
		HashMap<String, Integer>  fundCount = nd.getFundCount(sqlSession, m);
		return fundCount;
	}
	//정기후원  가져오기
	@Override
	public HashMap<String, List<SelectDirectFund>> selectFundList(Member m, HashMap<String, PageInfo> paging)throws NanumException {
		HashMap<String, List<SelectDirectFund>> fundList = nd.selectFundList(sqlSession,m,paging);
		return fundList ;		
	}
	//감사편지 수 가져오기
	@Override
	public HashMap<String, Integer> getletterCount(Member m) throws NanumException {
		HashMap<String, Integer>  letterCount = nd.getletterCount(sqlSession, m);
		return letterCount;
	}
	//감사편지  가져오기
	@Override
	public HashMap<String, List<Letter>> selectLetterList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List<Letter>> letterList = nd.selectLetterList(sqlSession,m,paging);
		return letterList;
	}
	//감사편지 상세 가져오기
	@Override
	public List<Letter> selectLetterDetailList(int leNo) throws NanumException {
		 List<Letter> letterDetailList = nd.selectLetterDetailList(sqlSession,leNo);
		return letterDetailList;
	}	
	//찜한 후원  수 가져오기
	@Override
	public HashMap<String, Integer> getLikeListCount(Member m) throws NanumException {
		 HashMap<String, Integer> LikeListCount = nd.getLikeListCount(sqlSession,m);
		return LikeListCount;
	}
	//찜한 후원 가져오기
	@Override
	public HashMap<String, List<FundInterest>> selectLikeFundList(Member m, HashMap<String, PageInfo> paging) throws NanumException {
		HashMap<String, List<FundInterest>> likeFundList = nd.selectLikeFundList(sqlSession,m,paging);
		return likeFundList;
	}
	//종료된 물품 크라우드 펀딩 - 물품 가져오기
	@Override
	public HashMap<String, FundItem> selectEndItem(Member m, int fno) throws NanumException {
		 HashMap<String, FundItem> endItem = nd.selectEndItem(sqlSession,m,fno);
		return endItem;
	}
	//QnA 개수 가져오기
	@Override
	public int getQnAListCount(Member m) throws NanumException {
		int QnAListCount = nd.getQnAListCount(sqlSession,m);
		return QnAListCount;
	}
	//QnA 목록 가져오기
	@Override
	public List<QnA> selectQnAList(Member m, PageInfo pi) throws NanumException {
		List<QnA> QnAList = nd.selectQnAList(sqlSession,pi,m);
		return QnAList;
	}
	//QnA 상세 가져오기
	@Override
	public List<QnA> selectQnADetail(int qNo) throws NanumException {
		List<QnA> QnADetail = nd.selectQnADetail(sqlSession,qNo);
		return QnADetail;
	}
	//QnA 작성
	@Override
	public int insertQnA(QnA q) throws NanumException {
		int result = nd.insertQnA(sqlSession,q);
		return result;
	}
	//QnA 삭제
	@Override
	public int deleteQnA(int qNo) throws NanumException {
		int result = nd.deleteQnA(sqlSession,qNo);
		return result;
	}
	//회원정보 수정
	@Override
	public int updateMember(Member m2) throws NanumException {
		int result = nd.updateMember(sqlSession, m2);
		return result;
	}
	
	
	
	
	
	
	


}
