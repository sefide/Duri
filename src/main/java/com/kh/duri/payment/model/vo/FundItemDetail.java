package com.kh.duri.payment.model.vo;

public class FundItemDetail {
	private int fhdNo;
	private String fhdItemValue;
	private int fhd_fhNo;
	private int fhd_iNo;
	private int fno;
	
	public FundItemDetail() {}

	public FundItemDetail(int fhdNo, String fhdItemValue, int fhd_fhNo, int fhd_iNo, int fno) {
		super();
		this.fhdNo = fhdNo;
		this.fhdItemValue = fhdItemValue;
		this.fhd_fhNo = fhd_fhNo;
		this.fhd_iNo = fhd_iNo;
		this.fno = fno;
	}

	public int getFhdNo() {
		return fhdNo;
	}

	public void setFhdNo(int fhdNo) {
		this.fhdNo = fhdNo;
	}

	public String getFhdItemValue() {
		return fhdItemValue;
	}

	public void setFhdItemValue(String fhdItemValue) {
		this.fhdItemValue = fhdItemValue;
	}

	public int getFhd_fhNo() {
		return fhd_fhNo;
	}

	public void setFhd_fhNo(int fhd_fhNo) {
		this.fhd_fhNo = fhd_fhNo;
	}

	public int getFhd_iNo() {
		return fhd_iNo;
	}

	public void setFhd_iNo(int fhd_iNo) {
		this.fhd_iNo = fhd_iNo;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	@Override
	public String toString() {
		return "FundItemDetail [fhdNo=" + fhdNo + ", fhdItemValue=" + fhdItemValue + ", fhd_fhNo=" + fhd_fhNo
				+ ", fhd_iNo=" + fhd_iNo + ", fno=" + fno + "]";
	}
	
	
}
