package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class Funding implements java.io.Serializable{
	private int fNo;
	private String fType;
	private String fContent;
	private Date fWriteDate;
	private Date fStartDate;
	private Date fEndDate;
	private String fStatus;
	private int fValue;
	private int fWriter;
	
	public Funding() {}

	public Funding(int fNo, String fType, String fContent, Date fWriteDate, Date fStartDate, Date fEndDate,
			String fStatus, int fValue, int fWriter) {
		super();
		this.fNo = fNo;
		this.fType = fType;
		this.fContent = fContent;
		this.fWriteDate = fWriteDate;
		this.fStartDate = fStartDate;
		this.fEndDate = fEndDate;
		this.fStatus = fStatus;
		this.fValue = fValue;
		this.fWriter = fWriter;
	}

	@Override
	public String toString() {
		return "Funding [fNo=" + fNo + ", fType=" + fType + ", fContent=" + fContent + ", fWriteDate=" + fWriteDate
				+ ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate + ", fStatus=" + fStatus + ", fValue="
				+ fValue + ", fWriter=" + fWriter + "]";
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Date getfWriteDate() {
		return fWriteDate;
	}

	public void setfWriteDate(Date fWriteDate) {
		this.fWriteDate = fWriteDate;
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

	public int getfWriter() {
		return fWriter;
	}

	public void setfWriter(int fWriter) {
		this.fWriter = fWriter;
	}

	
	
	
	
}
