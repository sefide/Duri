package com.kh.duri.admin.model.vo;

public class NanumDetailList {

	private int mno;
	private String mName;
	private String mNickName;
	private String mGender;
	private String mPhone;
	private String mid;
	private String email;
	private int mGoalNum;
	private long pValue;
	private String p_mNo;
	
	
	public NanumDetailList() {
	}


	public NanumDetailList(int mno, String mName, String mNickName, String mGender, String mPhone, String mid,
			String email,int mGoalNum, long pValue, String p_mNo) {
		super();
		this.mno = mno;
		this.mName = mName;
		this.mNickName = mNickName;
		this.mGender = mGender;
		this.mPhone = mPhone;
		this.mid = mid;
		this.email = email;
		this.mGoalNum = mGoalNum;
		this.pValue = pValue;
		this.p_mNo = p_mNo;
	}


	@Override
	public String toString() {
		return "NanumDetailList [mno=" + mno + ", mName=" + mName + ", mNickName=" + mNickName + ", mGender=" + mGender
				+ ", mPhone=" + mPhone + ", mid=" + mid + ", email=" + email + ", mGoalNum="
				+ mGoalNum + ", pValue=" + pValue + ", p_mNo=" + p_mNo + "]";
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public String getmNickName() {
		return mNickName;
	}


	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}


	public String getmGender() {
		return mGender;
	}


	public void setmGender(String mGender) {
		this.mGender = mGender;
	}


	public String getmPhone() {
		return mPhone;
	}


	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}




	public int getmGoalNum() {
		return mGoalNum;
	}


	public void setmGoalNum(int mGoalNum) {
		this.mGoalNum = mGoalNum;
	}


	public long getpValue() {
		return pValue;
	}


	public void setpValue(long pValue) {
		this.pValue = pValue;
	}


	public String getP_mNo() {
		return p_mNo;
	}


	public void setP_mNo(String p_mNo) {
		this.p_mNo = p_mNo;
	}
	
	
}
