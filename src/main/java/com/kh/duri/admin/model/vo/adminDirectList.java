package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class adminDirectList {
	
	//DIRECTFUNDHISTORY
	private int dhNo;//정기후원내역번호
	private int dhValue;//후원금액
	private Date dhStartDate;//후원시작날짜
	private String dhStatus;//상태
	private String dhBillngKey;//정기결제 번호
	private String dhValueType;//후원유형
	private int dh_Mno_take;//후원대상자번호
	private int dh_Mno_give;//후원자번호
	
	
	//DIRECTFUNDHISTORYDETAIL
	private int dhdNo;//상세구분번호
	private Date dhdDate;//후원날짜
	private int dhdValue;//후원금액
	private int dhdCount;//후원회차
	private int dhd_dhNo;//정기후원내역번호
	
	//MEMBER
	private int Mno;//회원번호
	private String Mid;//아이디
	private String MType;//회원구분
	private String MFundType;//대상타입
	private String MTakeStatus;//후원대상자상태
	
	
	private int cnt;
	private int sum; 
	
	public adminDirectList() {

	}

	public adminDirectList(int dhNo, int dhValue, Date dhStartDate, String dhStatus, String dhBillngKey,
			String dhValueType, int dh_Mno_take, int dh_Mno_give, int dhdNo, Date dhdDate, int dhdValue, int dhdCount,
			int dhd_dhNo, int mno, String mid, String mType, String mFundType, String mTakeStatus, int cnt, int sum) {
		super();
		this.dhNo = dhNo;
		this.dhValue = dhValue;
		this.dhStartDate = dhStartDate;
		this.dhStatus = dhStatus;
		this.dhBillngKey = dhBillngKey;
		this.dhValueType = dhValueType;
		this.dh_Mno_take = dh_Mno_take;
		this.dh_Mno_give = dh_Mno_give;
		this.dhdNo = dhdNo;
		this.dhdDate = dhdDate;
		this.dhdValue = dhdValue;
		this.dhdCount = dhdCount;
		this.dhd_dhNo = dhd_dhNo;
		Mno = mno;
		Mid = mid;
		MType = mType;
		MFundType = mFundType;
		MTakeStatus = mTakeStatus;
		this.cnt = cnt;
		this.sum = sum;
	}

	@Override
	public String toString() {
		return "adminDirectList [dhNo=" + dhNo + ", dhValue=" + dhValue + ", dhStartDate=" + dhStartDate + ", dhStatus="
				+ dhStatus + ", dhBillngKey=" + dhBillngKey + ", dhValueType=" + dhValueType + ", dh_Mno_take="
				+ dh_Mno_take + ", dh_Mno_give=" + dh_Mno_give + ", dhdNo=" + dhdNo + ", dhdDate=" + dhdDate
				+ ", dhdValue=" + dhdValue + ", dhdCount=" + dhdCount + ", dhd_dhNo=" + dhd_dhNo + ", Mno=" + Mno
				+ ", Mid=" + Mid + ", MType=" + MType + ", MFundType=" + MFundType + ", MTakeStatus=" + MTakeStatus
				+ ", cnt=" + cnt + ", sum=" + sum + "]";
	}

	public int getDhNo() {
		return dhNo;
	}

	public void setDhNo(int dhNo) {
		this.dhNo = dhNo;
	}

	public int getDhValue() {
		return dhValue;
	}

	public void setDhValue(int dhValue) {
		this.dhValue = dhValue;
	}

	public Date getDhStartDate() {
		return dhStartDate;
	}

	public void setDhStartDate(Date dhStartDate) {
		this.dhStartDate = dhStartDate;
	}

	public String getDhStatus() {
		return dhStatus;
	}

	public void setDhStatus(String dhStatus) {
		this.dhStatus = dhStatus;
	}

	public String getDhBillngKey() {
		return dhBillngKey;
	}

	public void setDhBillngKey(String dhBillngKey) {
		this.dhBillngKey = dhBillngKey;
	}

	public String getDhValueType() {
		return dhValueType;
	}

	public void setDhValueType(String dhValueType) {
		this.dhValueType = dhValueType;
	}

	public int getDh_Mno_take() {
		return dh_Mno_take;
	}

	public void setDh_Mno_take(int dh_Mno_take) {
		this.dh_Mno_take = dh_Mno_take;
	}

	public int getDh_Mno_give() {
		return dh_Mno_give;
	}

	public void setDh_Mno_give(int dh_Mno_give) {
		this.dh_Mno_give = dh_Mno_give;
	}

	public int getDhdNo() {
		return dhdNo;
	}

	public void setDhdNo(int dhdNo) {
		this.dhdNo = dhdNo;
	}

	public Date getDhdDate() {
		return dhdDate;
	}

	public void setDhdDate(Date dhdDate) {
		this.dhdDate = dhdDate;
	}

	public int getDhdValue() {
		return dhdValue;
	}

	public void setDhdValue(int dhdValue) {
		this.dhdValue = dhdValue;
	}

	public int getDhdCount() {
		return dhdCount;
	}

	public void setDhdCount(int dhdCount) {
		this.dhdCount = dhdCount;
	}

	public int getDhd_dhNo() {
		return dhd_dhNo;
	}

	public void setDhd_dhNo(int dhd_dhNo) {
		this.dhd_dhNo = dhd_dhNo;
	}

	public int getMno() {
		return Mno;
	}

	public void setMno(int mno) {
		Mno = mno;
	}

	public String getMid() {
		return Mid;
	}

	public void setMid(String mid) {
		Mid = mid;
	}

	public String getMType() {
		return MType;
	}

	public void setMType(String mType) {
		MType = mType;
	}

	public String getMFundType() {
		return MFundType;
	}

	public void setMFundType(String mFundType) {
		MFundType = mFundType;
	}

	public String getMTakeStatus() {
		return MTakeStatus;
	}

	public void setMTakeStatus(String mTakeStatus) {
		MTakeStatus = mTakeStatus;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	
}
