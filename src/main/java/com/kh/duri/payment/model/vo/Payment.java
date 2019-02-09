package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class Payment {
	private int pyNo;
	private String pyCardNum;
	private String pyPrice;
	private Date pyDate;
	private int py_mNo;
	
	public Payment() {}

	public Payment(int pyNo, String pyCardNum, String pyPrice, Date pyDate, int py_mNo) {
		super();
		this.pyNo = pyNo;
		this.pyCardNum = pyCardNum;
		this.pyPrice = pyPrice;
		this.pyDate = pyDate;
		this.py_mNo = py_mNo;
	}

	public int getPyNo() {
		return pyNo;
	}

	public void setPyNo(int pyNo) {
		this.pyNo = pyNo;
	}

	public String getPyCardNum() {
		return pyCardNum;
	}

	public void setPyCardNum(String pyCardNum) {
		this.pyCardNum = pyCardNum;
	}

	public String getPyPrice() {
		return pyPrice;
	}

	public void setPyPrice(String pyPrice) {
		this.pyPrice = pyPrice;
	}

	public Date getPyDate() {
		return pyDate;
	}

	public void setPyDate(Date pyDate) {
		this.pyDate = pyDate;
	}

	public int getPy_mNo() {
		return py_mNo;
	}

	public void setPy_mNo(int py_mNo) {
		this.py_mNo = py_mNo;
	}

	@Override
	public String toString() {
		return "Payment [pyNo=" + pyNo + ", pyCardNum=" + pyCardNum + ", pyPrice=" + pyPrice + ", pyDate=" + pyDate
				+ ", py_mNo=" + py_mNo + "]";
	}
	
	
}
