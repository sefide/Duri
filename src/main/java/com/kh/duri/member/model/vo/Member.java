package com.kh.duri.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int mno;
	private String mName;
	private String mNickName;
	private String mGender;
	private String mPhone;
	private String mid;
	private String mpwd;
	private String email;
	private Date mEnrollDate;
	private int mPoint;
	private String mtype;
	private String mFundtype;
	private String mpr;
	private String mprNew;
	private String mBirthDay;
	private String mAddress;
	private Date mAcceptDate;
	private int mGoalNum;
	private String mStatus;
	private String mTakeStatus;
	
	public Member() {}

	public Member(int mno, String mName, String mNickName, String mGender, String mPhone, String mid, String mpwd,
			String email, Date mEnrollDate, int mPoint, String mtype, String mFundtype, String mpr, String mprNew,
			String mBirthDay, String mAddress, Date mAcceptDate, int mGoalNum, String mStatus, String mTakeStatus) {
		super();
		this.mno = mno;
		this.mName = mName;
		this.mNickName = mNickName;
		this.mGender = mGender;
		this.mPhone = mPhone;
		this.mid = mid;
		this.mpwd = mpwd;
		this.email = email;
		this.mEnrollDate = mEnrollDate;
		this.mPoint = mPoint;
		this.mtype = mtype;
		this.mFundtype = mFundtype;
		this.mpr = mpr;
		this.mprNew = mprNew;
		this.mBirthDay = mBirthDay;
		this.mAddress = mAddress;
		this.mAcceptDate = mAcceptDate;
		this.mGoalNum = mGoalNum;
		this.mStatus = mStatus;
		this.mTakeStatus = mTakeStatus;
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

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getmEnrollDate() {
		return mEnrollDate;
	}

	public void setmEnrollDate(Date mEnrollDate) {
		this.mEnrollDate = mEnrollDate;
	}

	public int getmPoint() {
		return mPoint;
	}

	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
	}

	public String getMtype() {
		return mtype;
	}

	public void setMtype(String mtype) {
		this.mtype = mtype;
	}

	public String getmFundtype() {
		return mFundtype;
	}

	public void setmFundtype(String mFundtype) {
		this.mFundtype = mFundtype;
	}

	public String getMpr() {
		return mpr;
	}

	public void setMpr(String mpr) {
		this.mpr = mpr;
	}

	public String getMprNew() {
		return mprNew;
	}

	public void setMprNew(String mprNew) {
		this.mprNew = mprNew;
	}

	public String getmBirthDay() {
		return mBirthDay;
	}

	public void setmBirthDay(String mBirthDay) {
		this.mBirthDay = mBirthDay;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public Date getmAcceptDate() {
		return mAcceptDate;
	}

	public void setmAcceptDate(Date mAcceptDate) {
		this.mAcceptDate = mAcceptDate;
	}

	public int getmGoalNum() {
		return mGoalNum;
	}

	public void setmGoalNum(int mGoalNum) {
		this.mGoalNum = mGoalNum;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	public String getmTakeStatus() {
		return mTakeStatus;
	}

	public void setmTakeStatus(String mTakeStatus) {
		this.mTakeStatus = mTakeStatus;
	}

	@Override
	public String toString() {
		return "Member [mno=" + mno + ", mName=" + mName + ", mNickName=" + mNickName + ", mGender=" + mGender
				+ ", mPhone=" + mPhone + ", mid=" + mid + ", mpwd=" + mpwd + ", email=" + email + ", mEnrollDate="
				+ mEnrollDate + ", mPoint=" + mPoint + ", mtype=" + mtype + ", mFundtype=" + mFundtype + ", mpr=" + mpr
				+ ", mprNew=" + mprNew + ", mBirthDay=" + mBirthDay + ", mAddress=" + mAddress + ", mAcceptDate="
				+ mAcceptDate + ", mGoalNum=" + mGoalNum + ", mStatus=" + mStatus + ", mTakeStatus=" + mTakeStatus
				+ "]";
	}
	
	
	
}







