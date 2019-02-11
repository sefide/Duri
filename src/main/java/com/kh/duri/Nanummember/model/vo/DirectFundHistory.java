package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class DirectFundHistory implements java.io.Serializable {
	private int dhNo; //정기후원내역번호
	private int dhValue; //후원금액
	private Date dhStartDate; //시작날짜
	private String dhStatus; //상태
	private int dhMnoTake; //후원대상자 번호
	private int dhMnoGive; //후원자번호
	
	public DirectFundHistory() {}

	public DirectFundHistory(int dhNo, int dhValue, Date dhStartDate, String dhStatus, int dhMnoTake, int dhMnoGive) {
		super();
		this.dhNo = dhNo;
		this.dhValue = dhValue;
		this.dhStartDate = dhStartDate;
		this.dhStatus = dhStatus;
		this.dhMnoTake = dhMnoTake;
		this.dhMnoGive = dhMnoGive;
	}

	@Override
	public String toString() {
		return "DirectFundHistory [dhNo=" + dhNo + ", dhValue=" + dhValue + ", dhStartDate=" + dhStartDate
				+ ", dhStatus=" + dhStatus + ", dhMnoTake=" + dhMnoTake + ", dhMnoGive=" + dhMnoGive + "]";
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

	public int getDhMnoTake() {
		return dhMnoTake;
	}

	public void setDhMnoTake(int dhMnoTake) {
		this.dhMnoTake = dhMnoTake;
	}

	public int getDhMnoGive() {
		return dhMnoGive;
	}

	public void setDhMnoGive(int dhMnoGive) {
		this.dhMnoGive = dhMnoGive;
	}
	
	
}
