package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class DonateReceipt {
	private int drNo;
	private String drRegistNum;
	private Date drApplyDate;
	private Date drDonateDate;
	private long drValue;
	private int dr_mNo;
	
	public DonateReceipt() {}

	public DonateReceipt(int drNo, String drRegistNum, Date drApplyDate, Date drDonateDate, long drValue, int dr_mNo) {
		super();
		this.drNo = drNo;
		this.drRegistNum = drRegistNum;
		this.drApplyDate = drApplyDate;
		this.drDonateDate = drDonateDate;
		this.drValue = drValue;
		this.dr_mNo = dr_mNo;
	}

	public int getDrNo() {
		return drNo;
	}

	public void setDrNo(int drNo) {
		this.drNo = drNo;
	}

	public String getDrRegistNum() {
		return drRegistNum;
	}

	public void setDrRegistNum(String drRegistNum) {
		this.drRegistNum = drRegistNum;
	}

	public Date getDrApplyDate() {
		return drApplyDate;
	}

	public void setDrApplyDate(Date drApplyDate) {
		this.drApplyDate = drApplyDate;
	}

	public Date getDrDonateDate() {
		return drDonateDate;
	}

	public void setDrDonateDate(Date drDonateDate) {
		this.drDonateDate = drDonateDate;
	}

	public long getDrValue() {
		return drValue;
	}

	public void setDrValue(long drValue) {
		this.drValue = drValue;
	}

	public int getDr_mNo() {
		return dr_mNo;
	}

	public void setDr_mNo(int dr_mNo) {
		this.dr_mNo = dr_mNo;
	}

	@Override
	public String toString() {
		return "DonateReceipt [drNo=" + drNo + ", drRegistNum=" + drRegistNum + ", drApplyDate=" + drApplyDate
				+ ", drDonateDate=" + drDonateDate + ", drValue=" + drValue + ", dr_mNo=" + dr_mNo + "]";
	}

	
	
}
