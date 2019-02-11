package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class FundHistory implements java.io.Serializable{
	private int fhNo;
	private Date fhDate;
	private int fhValue;
	private int fhFno;
	private int fhMnoGive;
	
	public FundHistory() {}

	public FundHistory(int fhNo, Date fhDate, int fhValue, int fhFno, int fhMnoGive) {
		super();
		this.fhNo = fhNo;
		this.fhDate = fhDate;
		this.fhValue = fhValue;
		this.fhFno = fhFno;
		this.fhMnoGive = fhMnoGive;
	}

	@Override
	public String toString() {
		return "FundHistory [fhNo=" + fhNo + ", fhDate=" + fhDate + ", fhValue=" + fhValue + ", fhFno=" + fhFno
				+ ", fhMnoGive=" + fhMnoGive + "]";
	}

	public int getFhNo() {
		return fhNo;
	}

	public void setFhNo(int fhNo) {
		this.fhNo = fhNo;
	}

	public Date getFhDate() {
		return fhDate;
	}

	public void setFhDate(Date fhDate) {
		this.fhDate = fhDate;
	}

	public int getFhValue() {
		return fhValue;
	}

	public void setFhValue(int fhValue) {
		this.fhValue = fhValue;
	}

	public int getFhFno() {
		return fhFno;
	}

	public void setFhFno(int fhFno) {
		this.fhFno = fhFno;
	}

	public int getFhMnoGive() {
		return fhMnoGive;
	}

	public void setFhMnoGive(int fhMnoGive) {
		this.fhMnoGive = fhMnoGive;
	}
	
	
	
	
}
