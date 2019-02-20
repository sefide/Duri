package com.kh.duri.Nanummember.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.duri.Nanummember.model.exception.NanumException;
import com.kh.duri.Nanummember.model.vo.FundInterest;
import com.kh.duri.Nanummember.model.vo.FundItem;
import com.kh.duri.Nanummember.model.vo.Funding;
import com.kh.duri.Nanummember.model.vo.Letter;
import com.kh.duri.Nanummember.model.vo.PageInfo;
import com.kh.duri.Nanummember.model.vo.SelectDirectFund;
import com.kh.duri.member.model.vo.Member;

@Repository
public class NanumMemberDaoImpl implements NanumMemberDao {
	
	//크라우드 펀딩 개수 가져오기
	@Override
	public HashMap<String, Integer> getCloudCont(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		HashMap<String, Integer> cloudCount = new HashMap<>();		
		int moneyCount = sqlSession.selectOne("Nanum.selectMoneyCloundListCount", m);
		int endMoneyCount = sqlSession.selectOne("Nanum.selectEndMoneyCloundListCount", m);
		int itemCount = sqlSession.selectOne("Nanum.selectItemCloundListCount", m);
		int endItemCount = sqlSession.selectOne("Nanum.selectEndItemCloundListCount", m);	
		cloudCount.put("moneyCount", moneyCount);
		cloudCount.put("endMoneyCount", endMoneyCount);
		cloudCount.put("itemCount", itemCount);
		cloudCount.put("endItemCount", endItemCount);	
		return cloudCount;
	}
	//크라우드 펀딩 가져오기
	@Override
	public HashMap<String, List<Funding>> selectCloudList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException {		
		PageInfo pi = paging.get("pi");
		PageInfo pi2 = paging.get("pi2");
		PageInfo pi3 = paging.get("pi3");
		PageInfo pi4 = paging.get("pi4");		
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<Funding> moneyList = sqlSession.selectList("Nanum.selectMoneyCloud",m,rowBounds);		
		
		int offset2 = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds2 = new RowBounds(offset2, pi2.getLimit());		
		List<Funding> endMoneyList = sqlSession.selectList("Nanum.selectEndMoneyClound",m,rowBounds2);		
		
		int offset3 = (pi3.getCurrentPage() -1 ) *pi3.getLimit();
		RowBounds rowBounds3 = new RowBounds(offset3, pi3.getLimit());		
		List<Funding> itemList = sqlSession.selectList("Nanum.selectItemCloud",m,rowBounds3);		
		
		int offset4 = (pi4.getCurrentPage() -1 ) *pi4.getLimit();
		RowBounds rowBounds4 = new RowBounds(offset4, pi4.getLimit());		
		List<Funding> endItemList = sqlSession.selectList("Nanum.selectEndItemCloud",m,rowBounds4);		
		
		HashMap<String, List<Funding>> cloudList = new HashMap<>();
		cloudList.put("moneyList", moneyList);
		cloudList.put("endMoneyList", endMoneyList);
		cloudList.put("itemList", itemList);
		cloudList.put("endItemList", endItemList);
		/*if(cloudList == null) {
			throw new NanumException("진행중인 금액 크라우드펀딩 존재 하지 않음");
		}*/
		return cloudList;
	}	
	//정기후원 개수 조회
	@Override
	public HashMap<String, Integer> getFundCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		HashMap<String, Integer> fundCount = new HashMap<>();
		int fundIng  = sqlSession.selectOne("Nanum.selectDirectFundCount", m);
		int fundEnd  = sqlSession.selectOne("Nanum.selectDirectFundCount2", m);
		fundCount.put("fundIng", fundIng);
		fundCount.put("fundEnd", fundEnd);
		return fundCount;
	}
	//정기후원  조회
	@Override
	public HashMap<String, List<SelectDirectFund>> selectFundList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException {
		PageInfo pi = paging.get("pi");
		PageInfo pi2 = paging.get("pi2");
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<SelectDirectFund> fundIngList = sqlSession.selectList("Nanum.selectDirectFund",m,rowBounds);		
		int offset2 = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds2 = new RowBounds(offset2, pi2.getLimit());		
		List<SelectDirectFund> fundEndList = sqlSession.selectList("Nanum.selectDirectFund2",m,rowBounds2);		
		HashMap<String, List<SelectDirectFund>> fundList = new HashMap<>();
		fundList.put("fundIngList",fundIngList );
		fundList.put("fundEndList",fundEndList );
		return fundList;
	}
	//감사편지 개수 조회
	@Override
	public HashMap<String, Integer> getletterCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		HashMap<String, Integer> letterCount = new HashMap<>();
		int fundLetterCount = sqlSession.selectOne("Nanum.selectDirectLetterCount", m); // 진행 정기 감사편지	
		int endFundLetterCount =sqlSession.selectOne("Nanum.selectEndDirectLetterCount",m); //종료 정기 감사편지	
		int moneyCloudLetterCount = sqlSession.selectOne("Nanum.selectMoneyCloudLetterCount", m); //금액 크라우드 감사편지
		int itemCloudLetterCount = sqlSession.selectOne("Nanum.selectItemCloudLetterCount", m); //물품 크라우드 감사편지		
		letterCount.put("fundLetterCount", fundLetterCount);
		letterCount.put("endFundLetterCount", endFundLetterCount);
		letterCount.put("moneyCloudLetterCount", moneyCloudLetterCount);
		letterCount.put("itemCloudLetterCount", itemCloudLetterCount);
		return letterCount;
	}
	//감사편지  조회
	@Override
	public HashMap<String, List<Letter>> selectLetterList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException {
		PageInfo pi = paging.get("pi");
		PageInfo pi2 = paging.get("pi2");	
		PageInfo pi3 = paging.get("pi3");
		PageInfo pi4 = paging.get("pi4");
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<Letter> fundLetter = sqlSession.selectList("Nanum.selectDirectLetter",m,rowBounds);				
		
		int offset2 = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds2 = new RowBounds(offset2, pi2.getLimit());		
		List<Letter> endFundLetter = sqlSession.selectList("Nanum.selectEndDirectLetter",m,rowBounds2);			

		int offset3 = (pi3.getCurrentPage() -1 ) *pi3.getLimit();
		RowBounds rowBounds3 = new RowBounds(offset3, pi3.getLimit());		
		List<Letter> moneyCloudLetter = sqlSession.selectList("Nanum.selectMoneyCloudLetter",m,rowBounds3);	
		
		int offset4 = (pi4.getCurrentPage() -1 ) *pi4.getLimit();
		RowBounds rowBounds4 = new RowBounds(offset4, pi4.getLimit());		
		List<Letter> itemCloudLetter = sqlSession.selectList("Nanum.selectItemCloudLetter",m,rowBounds4);	

		HashMap<String, List<Letter>> letterList = new HashMap<>();
		letterList.put("fundLetter", fundLetter);
		letterList.put("endFundLetter", endFundLetter);
		letterList.put("moneyCloudLetter", moneyCloudLetter);		
		letterList.put("itemCloudLetter", itemCloudLetter);	
		return letterList;
	}
	//감사편지 상세 가져오기
	@Override
	public List<Letter> selectLetterDetailList(SqlSessionTemplate sqlSession, int leNo) throws NanumException {
		 List<Letter> letterDetailList = sqlSession.selectList("Nanum.selectLetterDetail",leNo);
		return letterDetailList;
	}
	
	//찜한 후원 개수 가져오기
	@Override
	public HashMap<String, Integer> getLikeListCount(SqlSessionTemplate sqlSession, Member m) throws NanumException {
		HashMap<String, Integer> getLikeCount = new HashMap<>(); 
		int likeDirectCount=  sqlSession.selectOne("Nanum.selectLikeDirectCount",m); //정기후원 개수
		int likeMoneyCount = sqlSession.selectOne("Nanum.selectLikeMoneyCount", m); //금액후원 개수
		int likeItemCount = sqlSession.selectOne("Nanum.selectLikeItemCount",m); // 물품후원 개수 
		getLikeCount.put("likeDirectCount", likeDirectCount);			
		getLikeCount.put("likeMoneyCount", likeMoneyCount);		
		getLikeCount.put("likeItemCount", likeItemCount);		
		return getLikeCount;
	}
	
	//찜한 후원 가져오기
	@Override
	public HashMap<String, List<FundInterest>> selectLikeFundList(SqlSessionTemplate sqlSession, Member m, HashMap<String, PageInfo> paging) throws NanumException {
		PageInfo pi = paging.get("pi");
		PageInfo pi2 = paging.get("pi2");	
		PageInfo pi3 = paging.get("pi3");
		int offset = (pi.getCurrentPage() -1 ) *pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		List<FundInterest> likeDirectList = sqlSession.selectList("Nanum.selectLikeDirect",m,rowBounds);	
		
		int offset2 = (pi2.getCurrentPage() -1 ) *pi2.getLimit();
		RowBounds rowBounds2 = new RowBounds(offset2, pi2.getLimit());		
		List<FundInterest> likeMoneyList = sqlSession.selectList("Nanum.selectLikeMoneyCloud",m,rowBounds2);		
		
		int offset3 = (pi3.getCurrentPage() -1 ) *pi3.getLimit();
		RowBounds rowBounds3 = new RowBounds(offset3, pi3.getLimit());		
		List<FundInterest> likeItemList = sqlSession.selectList("Nanum.selectLikeItemCloud",m,rowBounds3);			
		HashMap<String, List<FundInterest>> likeFundList = new HashMap<>();
		likeFundList.put("likeDirectList", likeDirectList);
		likeFundList.put("likeMoneyList", likeMoneyList);
		likeFundList.put("likeItemList", likeItemList);	
		return likeFundList;
	}
	//종료된 물품 크라우드 펀딩 - 물품 가져오기
	@Override
	public HashMap<String, FundItem> selectEndItem(SqlSessionTemplate sqlSession, Member m, int fno) throws NanumException {
		FundItem endItem = sqlSession.selectOne("Nanum.selectIngItem",fno);
		return null;
	}
		
		

	
	
	
	
	


	
	
	
	
	

	

	
	

	

}
