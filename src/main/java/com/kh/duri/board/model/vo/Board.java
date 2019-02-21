package com.kh.duri.board.model.vo;

import java.sql.Date;

public class Board {
	private int rnum;
	private int fno;
	private String ftype;
	private String fTitle;
	private String fContent;
	private Date fWriterDate;
	private Date fStartDate;
	private Date fEndDate;
	private String fStatus;
	private int fValue;
	private String fValueType;
	private int fWriter;
	private String mNick;
	private String mAddress;
	private String mFundType;
	
	private int fdValue;
	private int fd_ino;
	
	private int fdValue2;
	private int fd_ino2;
	
	private int fdValue3;
	private int fd_ino3;
	
	
	private int fd_fno;

	
	public Board() {}


	public Board(int rnum, int fno, String ftype, String fTitle, String fContent, Date fWriterDate, Date fStartDate,
			Date fEndDate, String fStatus, int fValue, String fValueType, int fWriter, String mNick, String mAddress,
			String mFundType, int fdValue, int fd_ino, int fdValue2, int fd_ino2, int fdValue3, int fd_ino3,
			int fd_fno) {
		super();
		this.rnum = rnum;
		this.fno = fno;
		this.ftype = ftype;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fWriterDate = fWriterDate;
		this.fStartDate = fStartDate;
		this.fEndDate = fEndDate;
		this.fStatus = fStatus;
		this.fValue = fValue;
		this.fValueType = fValueType;
		this.fWriter = fWriter;
		this.mNick = mNick;
		this.mAddress = mAddress;
		this.mFundType = mFundType;
		this.fdValue = fdValue;
		this.fd_ino = fd_ino;
		this.fdValue2 = fdValue2;
		this.fd_ino2 = fd_ino2;
		this.fdValue3 = fdValue3;
		this.fd_ino3 = fd_ino3;
		this.fd_fno = fd_fno;
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


	public String getFtype() {
		return ftype;
	}


	public void setFtype(String ftype) {
		this.ftype = ftype;
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


	public int getfValue() {
		return fValue;
	}


	public void setfValue(int fValue) {
		this.fValue = fValue;
	}


	public String getfValueType() {
		return fValueType;
	}


	public void setfValueType(String fValueType) {
		this.fValueType = fValueType;
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


	public int getFdValue() {
		return fdValue;
	}


	public void setFdValue(int fdValue) {
		this.fdValue = fdValue;
	}


	public int getFd_ino() {
		return fd_ino;
	}


	public void setFd_ino(int fd_ino) {
		this.fd_ino = fd_ino;
	}


	public int getFdValue2() {
		return fdValue2;
	}


	public void setFdValue2(int fdValue2) {
		this.fdValue2 = fdValue2;
	}


	public int getFd_ino2() {
		return fd_ino2;
	}


	public void setFd_ino2(int fd_ino2) {
		this.fd_ino2 = fd_ino2;
	}


	public int getFdValue3() {
		return fdValue3;
	}


	public void setFdValue3(int fdValue3) {
		this.fdValue3 = fdValue3;
	}


	public int getFd_ino3() {
		return fd_ino3;
	}


	public void setFd_ino3(int fd_ino3) {
		this.fd_ino3 = fd_ino3;
	}


	public int getFd_fno() {
		return fd_fno;
	}


	public void setFd_fno(int fd_fno) {
		this.fd_fno = fd_fno;
	}


	@Override
	public String toString() {
		return "Board [rnum=" + rnum + ", fno=" + fno + ", ftype=" + ftype + ", fTitle=" + fTitle + ", fContent="
				+ fContent + ", fWriterDate=" + fWriterDate + ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate
				+ ", fStatus=" + fStatus + ", fValue=" + fValue + ", fValueType=" + fValueType + ", fWriter=" + fWriter
				+ ", mNick=" + mNick + ", mAddress=" + mAddress + ", mFundType=" + mFundType + ", fdValue=" + fdValue
				+ ", fd_ino=" + fd_ino + ", fdValue2=" + fdValue2 + ", fd_ino2=" + fd_ino2 + ", fdValue3=" + fdValue3
				+ ", fd_ino3=" + fd_ino3 + ", fd_fno=" + fd_fno + "]";
	}


	
	
}
