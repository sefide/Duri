package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class Donatelist {

	private int drNo;
	private Date drApplyDate;
	private Date drDonateDate;
	private long drValue;
	private String dr_mNo;
	private String dr_mid;
	private String dr_mPhone;
	
	public Donatelist() {

	}

	@Override
	public String toString() {
		return "Donatelist [drNo=" + drNo + ", drRegistNum=" + ", drApplyDate=" + drApplyDate
				+ ", drDonateDate=" + drDonateDate + ", drValue=" + drValue + ", dr_mNo=" + dr_mNo + ", dr_mid="
				+ dr_mid + ", dr_mPhone=" + dr_mPhone + "]";
	}

	public Donatelist(int drNo, Date drApplyDate, Date drDonateDate, long drValue, String dr_mNo,
			String dr_mid, String dr_mPhone) {
		super();
		this.drNo = drNo;
		this.drApplyDate = drApplyDate;
		this.drDonateDate = drDonateDate;
		this.drValue = drValue;
		this.dr_mNo = dr_mNo;
		this.dr_mid = dr_mid;
		this.dr_mPhone = dr_mPhone;
	}

	public int getDrNo() {
		return drNo;
	}

	public void setDrNo(int drNo) {
		this.drNo = drNo;
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

	public String getDr_mNo() {
		return dr_mNo;
	}

	public void setDr_mNo(String dr_mNo) {
		this.dr_mNo = dr_mNo;
	}

	public String getDr_mid() {
		return dr_mid;
	}

	public void setDr_mid(String dr_mid) {
		this.dr_mid = dr_mid;
	}

	public String getDr_mPhone() {
		return dr_mPhone;
	}

	public void setDr_mPhone(String dr_mPhone) {
		this.dr_mPhone = dr_mPhone;
	}

	
	
}
