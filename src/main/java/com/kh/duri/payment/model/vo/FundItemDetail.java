package com.kh.duri.payment.model.vo;

public class FundItemDetail {
	private int fhdNo;
	private String fhdItemValue;
	private int fhd_fhNo;
	private int fhd_iNo;
	private int fno;
	private int fhd_mNo_take;
	
	public FundItemDetail() {}

	public FundItemDetail(int fhdNo, String fhdItemValue, int fhd_fhNo, int fhd_iNo, int fno, int fhd_mNo_take) {
		super();
		this.fhdNo = fhdNo;
		this.fhdItemValue = fhdItemValue;
		this.fhd_fhNo = fhd_fhNo;
		this.fhd_iNo = fhd_iNo;
		this.fno = fno;
		this.fhd_mNo_take = fhd_mNo_take;
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

	public int getFhd_mNo_take() {
		return fhd_mNo_take;
	}

	public void setFhd_mNo_take(int fhd_mNo_take) {
		this.fhd_mNo_take = fhd_mNo_take;
	}

	@Override
	public String toString() {
		return "FundItemDetail [fhdNo=" + fhdNo + ", fhdItemValue=" + fhdItemValue + ", fhd_fhNo=" + fhd_fhNo
				+ ", fhd_iNo=" + fhd_iNo + ", fno=" + fno + ", fhd_mNo_take=" + fhd_mNo_take + "]";
	}
	
	
	
}
