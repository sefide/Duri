package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class Refund {
	private int rNo;
	private String rBank;  // 은행
	private String rName;  // 예금주
	private String rAccount;  // 계좌번호
	private int r_mNo;  // 회원번호
	private String rValue;   // 요청금액
	private Date rDate;   // 요청 일시
	private String rStatus;   // 요청 상태
	
	public Refund() {}
	
	public Refund(int rNo, String rBank, String rName, String rAccount, int r_mNo, String rValue, Date rDate,
			String rStatus) {
		super();
		this.rNo = rNo;
		this.rBank = rBank;
		this.rName = rName;
		this.rAccount = rAccount;
		this.r_mNo = r_mNo;
		this.rValue = rValue;
		this.rDate = rDate;
		this.rStatus = rStatus;
	}
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getrBank() {
		return rBank;
	}
	public void setrBank(String rBank) {
		this.rBank = rBank;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrAccount() {
		return rAccount;
	}
	public void setrAccount(String rAccount) {
		this.rAccount = rAccount;
	}
	public int getR_mNo() {
		return r_mNo;
	}
	public void setR_mNo(int r_mNo) {
		this.r_mNo = r_mNo;
	}
	public String getrValue() {
		return rValue;
	}
	public void setrValue(String rValue) {
		this.rValue = rValue;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public String getrStatus() {
		return rStatus;
	}
	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}
	
	@Override
	public String toString() {
		return "Refund [rNo=" + rNo + ", rBank=" + rBank + ", rName=" + rName + ", rAccount=" + rAccount + ", r_mNo="
				+ r_mNo + ", rValue=" + rValue + ", rDate=" + rDate + ", rStatus=" + rStatus + "]";
	}
	
}
