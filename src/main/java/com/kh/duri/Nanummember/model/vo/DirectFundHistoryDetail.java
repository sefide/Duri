package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class DirectFundHistoryDetail implements java.io.Serializable{
	private int dhdNo; //상세구분 번호
	private Date dhdDate; //후원날짜
	private int dhdValue; //후원금액
	private int dhdCount; //후원회차
	private int dhdDhno; //정기후원내역
	
	public DirectFundHistoryDetail() {}

	public DirectFundHistoryDetail(int dhdNo, Date dhdDate, int dhdValue, int dhdCount, int dhdDhno) {
		super();
		this.dhdNo = dhdNo;
		this.dhdDate = dhdDate;
		this.dhdValue = dhdValue;
		this.dhdCount = dhdCount;
		this.dhdDhno = dhdDhno;
	}

	@Override
	public String toString() {
		return "DirectFundHistoryDetail [dhdNo=" + dhdNo + ", dhdDate=" + dhdDate + ", dhdValue=" + dhdValue
				+ ", dhdCount=" + dhdCount + ", dhdDhno=" + dhdDhno + "]";
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

	public int getDhdDhno() {
		return dhdDhno;
	}

	public void setDhdDhno(int dhdDhno) {
		this.dhdDhno = dhdDhno;
	}
	
	
}
