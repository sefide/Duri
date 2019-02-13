package com.kh.duri.board.model.vo;

import java.sql.Date;

public class board {

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
	
	public board() {}

	public board(int fno, String ftype, String fTitle, String fContent, Date fWriterDate, Date fStartDate,
			Date fEndDate, String fStatus, int fValue, String fValueType, int fWriter) {
		super();
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

	@Override
	public String toString() {
		return "board [fno=" + fno + ", ftype=" + ftype + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fWriterDate=" + fWriterDate + ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate
				+ ", fStatus=" + fStatus + ", fValue=" + fValue + ", fValueType=" + fValueType + ", fWriter=" + fWriter
				+ "]";
	}
	
	
	
}
