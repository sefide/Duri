package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class DirectFundHist {
	private int dhNo;
	private int dh_mNo_take;
	private int dh_mNo_give;
	private String dhValue;
	private String dhType;
	private String dhBilling;
	private String dhImpUid;
	private Date dhStartDate;
	
	public DirectFundHist() {}


	public DirectFundHist(int dhNo, int dh_mNo_take, int dh_mNo_give, String dhValue, String dhType, String dhBilling,
			String dhImpUid, Date dhStartDate) {
		super();
		this.dhNo = dhNo;
		this.dh_mNo_take = dh_mNo_take;
		this.dh_mNo_give = dh_mNo_give;
		this.dhValue = dhValue;
		this.dhType = dhType;
		this.dhBilling = dhBilling;
		this.dhImpUid = dhImpUid;
		this.dhStartDate = dhStartDate;
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

	public String getDhValue() {
		return dhValue;
	}

	public void setDhValue(String dhValue) {
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


	@Override
	public String toString() {
		return "DirectFundHist [dhNo=" + dhNo + ", dh_mNo_take=" + dh_mNo_take + ", dh_mNo_give=" + dh_mNo_give
				+ ", dhValue=" + dhValue + ", dhType=" + dhType + ", dhBilling=" + dhBilling + ", dhImpUid="
				+ dhImpUid + ", dhStartDate=" + dhStartDate + "]";
	}

	
}
