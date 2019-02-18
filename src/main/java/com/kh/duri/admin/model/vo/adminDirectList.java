package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class adminDirectList {
	
	private int dhNo;//정기후원내역번호
	private int dhValue;//후원금액
	private Date dhStartDate;//후원시작날짜
	private String dhStatus;//상태
	private String dhBillngKey;//정기결제 번호
	private String dhValueType;//후원유형
	private int dh_Mno_take;//후원대상자번호
	private int dh_Mno_give;//후원자번호
	
	
	private int dhdNo;//상세구분번호
	private Date dhdDate;//후원날짜
	private int dhdValue;//후원금액
	private int dhdCount;//후원회차
	private int dhd_dhNo;//정기후원내역번호
	
	private int Mno;//회원번호
	private String Mid;//아이디
	private String MType;//회원구분
	private String MFundType;//대상타입
	private String MTakeStatus;//후원대상자상태
	
	
	
}
