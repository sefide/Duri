package com.kh.duri.payment.model.vo;

public class BoardItemValue {
	private int rnum;
	private int fno;
	private int fdno;
	private String fTitle;
	private String fStatus;
	private int fWriter;
	private String mNick;
	private String iNo;
	private String iName;
	private String iPrice;
	private String fdValue; // 목표수량 FDVALUE
	private String sumItemValue;  // 후원받은 수량 SUM(FHDITEMVALUE) AS SUMVALUE
	
	public BoardItemValue() {}

	public BoardItemValue(int rnum, int fno, int fdno, String fTitle, String fStatus, int fWriter, String mNick, String iNo,
			String iName, String iPrice, String fdValue, String sumItemValue) {
		super();
		this.rnum = rnum;
		this.fno = fno;
		this.fdno = fdno;
		this.fTitle = fTitle;
		this.fStatus = fStatus;
		this.fWriter = fWriter;
		this.mNick = mNick;
		this.iNo = iNo;
		this.iName = iName;
		this.iPrice = iPrice;
		this.fdValue = fdValue;
		this.sumItemValue = sumItemValue;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public int getFdno() {
		return fdno;
	}

	public void setFdno(int fdno) {
		this.fdno = fdno;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfStatus() {
		return fStatus;
	}

	public void setfStatus(String fStatus) {
		this.fStatus = fStatus;
	}

	public int getfWriter() {
		return fWriter;
	}

	public void setfWriter(int fWriter) {
		this.fWriter = fWriter;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	public String getiNo() {
		return iNo;
	}

	public void setiNo(String iNo) {
		this.iNo = iNo;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public String getiPrice() {
		return iPrice;
	}

	public void setiPrice(String iPrice) {
		this.iPrice = iPrice;
	}

	public String getFdValue() {
		return fdValue;
	}

	public void setFdValue(String fdValue) {
		this.fdValue = fdValue;
	}

	public String getSumItemValue() {
		return sumItemValue;
	}

	public void setSumItemValue(String sumItemValue) {
		this.sumItemValue = sumItemValue;
	}

	@Override
	public String toString() {
		return "BoardItem [rnum=" + rnum + ", fno=" + fno + ", fdno=" + fdno + ", fTitle=" + fTitle + ", fStatus="
				+ fStatus + ", fWriter=" + fWriter + ", mNick=" + mNick + ", iNo=" + iNo + ", iName=" + iName
				+ ", iPrice=" + iPrice + ", fdValue=" + fdValue + ", sumItemValue=" + sumItemValue + "]";
	}


	
}
