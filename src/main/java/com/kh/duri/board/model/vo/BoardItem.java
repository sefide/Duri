package com.kh.duri.board.model.vo;

import java.sql.Date;

public class BoardItem {
	private int rnum;
	private int fno;
	private String fTitle;
	private String fContent;
	private Date fWriterDate;
	private Date fStartDate;
	private Date fEndDate;
	private String fStatus;
	private int fWriter;
	private String mNick;
	private String mAddress;
	private String mFundType;
	private String iName;
	private String fdValue;
	private String fd_ino;
	
	public BoardItem() {}

	public BoardItem(int rnum, int fno, String fTitle, String fContent, Date fWriterDate, Date fStartDate,
			Date fEndDate, String fStatus, int fWriter, String mNick, String mAddress, String mFundType, String iName,
			String fdValue, String fd_ino) {
		super();
		this.rnum = rnum;
		this.fno = fno;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fWriterDate = fWriterDate;
		this.fStartDate = fStartDate;
		this.fEndDate = fEndDate;
		this.fStatus = fStatus;
		this.fWriter = fWriter;
		this.mNick = mNick;
		this.mAddress = mAddress;
		this.mFundType = mFundType;
		this.iName = iName;
		this.fdValue = fdValue;
		this.fd_ino = fd_ino;
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

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Date getfWriterDate() {
		return fWriterDate;
	}

	public void setfWriterDate(Date fWriterDate) {
		this.fWriterDate = fWriterDate;
	}

	public Date getfStartDate() {
		return fStartDate;
	}

	public void setfStartDate(Date fStartDate) {
		this.fStartDate = fStartDate;
	}

	public Date getfEndDate() {
		return fEndDate;
	}

	public void setfEndDate(Date fEndDate) {
		this.fEndDate = fEndDate;
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

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public String getmFundType() {
		return mFundType;
	}

	public void setmFundType(String mFundType) {
		this.mFundType = mFundType;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public String getFdValue() {
		return fdValue;
	}

	public void setFdValue(String fdValue) {
		this.fdValue = fdValue;
	}

	public String getFd_ino() {
		return fd_ino;
	}

	public void setFd_ino(String fd_ino) {
		this.fd_ino = fd_ino;
	}

	@Override
	public String toString() {
		return "BoardItem [rnum=" + rnum + ", fno=" + fno + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fWriterDate=" + fWriterDate + ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate
				+ ", fStatus=" + fStatus + ", fWriter=" + fWriter + ", mNick=" + mNick + ", mAddress=" + mAddress
				+ ", mFundType=" + mFundType + ", iName=" + iName + ", fdValue=" + fdValue + ", fd_ino=" + fd_ino + "]";
	}

	
}
