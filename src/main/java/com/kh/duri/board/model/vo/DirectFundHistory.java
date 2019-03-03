package com.kh.duri.board.model.vo;

import java.sql.Date;

public class DirectFundHistory {
	private int dhNo;
	private int dh_mNo_take;
	private int dh_mNo_give;
	private int dhValue;
	private String dhType;
	private String dhBilling;
	private String dhImpUid;
	private Date dhStartDate;
	private String dhDay;
	
	public DirectFundHistory() {}


	public DirectFundHistory(int dhNo, int dh_mNo_take, int dh_mNo_give, int dhValue, String dhType, String dhBilling,
			String dhImpUid, Date dhStartDate, String dhDay) {
		super();
		this.dhNo = dhNo;
		this.dh_mNo_take = dh_mNo_take;
		this.dh_mNo_give = dh_mNo_give;
		this.dhValue = dhValue;
		this.dhType = dhType;
		this.dhBilling = dhBilling;
		this.dhImpUid = dhImpUid;
		this.dhStartDate = dhStartDate;
		this.dhDay = dhDay;
	}


	public int getDhNo() {
		return dhNo;
	}

	public void setDhNo(int dhNo) {
		this.dhNo = dhNo;
	}

	public int getDh_mNo_take() {
		return dh_mNo_take;
	}

	public void setDh_mNo_take(int dh_mNo_take) {
		this.dh_mNo_take = dh_mNo_take;
	}

	public int getDh_mNo_give() {
		return dh_mNo_give;
	}

	public void setDh_mNo_give(int dh_mNo_give) {
		this.dh_mNo_give = dh_mNo_give;
	}

	public int getDhValue() {
		return dhValue;
	}

	public void setDhValue(int dhValue) {
		this.dhValue = dhValue;
	}


	public String getDhType() {
		return dhType;
	}


	public void setDhType(String dhType) {
		this.dhType = dhType;
	}


	public String getDhBilling() {
		return dhBilling;
	}


	public void setDhBilling(String dhBilling) {
		this.dhBilling = dhBilling;
	}


	public String getDhImpUid() {
		return dhImpUid;
	}


	public void setDhImpUid(String dhImpUid) {
		this.dhImpUid = dhImpUid;
	}


	public Date getDhStartDate() {
		return dhStartDate;
	}


	public void setDhStartDate(Date dhStartDate) {
		this.dhStartDate = dhStartDate;
	}


	public String getDhDay() {
		return dhDay;
	}


	public void setDhDay(String dhDay) {
		this.dhDay = dhDay;
	}


	@Override
	public String toString() {
		return "DirectFundHistory [dhNo=" + dhNo + ", dh_mNo_take=" + dh_mNo_take + ", dh_mNo_give=" + dh_mNo_give
				+ ", dhValue=" + dhValue + ", dhType=" + dhType + ", dhBilling=" + dhBilling + ", dhImpUid=" + dhImpUid
				+ ", dhStartDate=" + dhStartDate + ", dhDay=" + dhDay + "]";
	}


}
