package com.kh.duri.Nanummember.model.vo;

public class FundItem implements java.io.Serializable{
	
	private int iNo;
	private String iName;
	private int iPrice;
	private int fNo;
	
	public FundItem() {}

	public FundItem(int iNo, String iName, int iPrice, int fNo) {
		super();
		this.iNo = iNo;
		this.iName = iName;
		this.iPrice = iPrice;
		this.fNo = fNo;
	}

	@Override
	public String toString() {
		return "FundItem [iNo=" + iNo + ", iName=" + iName + ", iPrice=" + iPrice + ", fNo=" + fNo + "]";
	}

	public int getiNo() {
		return iNo;
	}

	public void setiNo(int iNo) {
		this.iNo = iNo;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public int getiPrice() {
		return iPrice;
	}

	public void setiPrice(int iPrice) {
		this.iPrice = iPrice;
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	
	
	
	
	
}
