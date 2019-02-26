package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class SelectDirectFund implements java.io.Serializable{
	private String mNickName; //닉네임 
	private int value; //후원금액 
	private int cnt; //후원회차
	private int sum; //후원 총 금액
	private Date dhdDate; //후원일자
	private int mNo;
	
	public SelectDirectFund() {}

	public SelectDirectFund(String mNickName, int value, int cnt, int sum, Date dhdDate, int mNo) {
		super();
		this.mNickName = mNickName;
		this.value = value;
		this.cnt = cnt;
		this.sum = sum;
		this.dhdDate = dhdDate;
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "SelectDirectFund [mNickName=" + mNickName + ", value=" + value + ", cnt=" + cnt + ", sum=" + sum
				+ ", dhdDate=" + dhdDate + ", mNo=" + mNo + "]";
	}

	public String getmNickName() {
		return mNickName;
	}

	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
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

	public Date getDhdDate() {
		return dhdDate;
	}

	public void setDhdDate(Date dhdDate) {
		this.dhdDate = dhdDate;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	
	






	
	
}
