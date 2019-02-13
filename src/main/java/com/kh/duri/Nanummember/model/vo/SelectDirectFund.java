package com.kh.duri.Nanummember.model.vo;

public class SelectDirectFund implements java.io.Serializable{
	private String mNickName; //닉네임 
	private int value; //후원금액 
	private int cnt; //후원회차
	private int sum; //후원 총 금액
	
	public SelectDirectFund() {}

	public SelectDirectFund(String mNickName, int value, int cnt, int sum) {
		super();
		this.mNickName = mNickName;
		this.value = value;
		this.cnt = cnt;
		this.sum = sum;
	}

	@Override
	public String toString() {
		return "SelectDirectFund [mNickName=" + mNickName + ", value=" + value + ", cnt=" + cnt + ", sum=" + sum + "]";
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




	
	
}
