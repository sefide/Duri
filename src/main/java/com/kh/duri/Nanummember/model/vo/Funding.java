package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class Funding implements java.io.Serializable{
	private int fNo;
	private String fType;
	private String fTitle;
	private String fContent;
	private Date fWriteDate;
	private Date fStartDate;
	private Date fEndDate;
	private String fStatus;
	private int fValue;
	private int fWriter;
	private int fhValue;
	private Date fhDate;
	private String iName;
	private int sum;
	private int total;
	
	public Funding() {}

	@Override
	public String toString() {
		return "Funding [fNo=" + fNo + ", fType=" + fType + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fWriteDate=" + fWriteDate + ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate + ", fStatus="
				+ fStatus + ", fValue=" + fValue + ", fWriter=" + fWriter + ", fhValue=" + fhValue + ", fhDate="
				+ fhDate + ", iName=" + iName + ", sum=" + sum + ", total=" + total + "]";
	}

	public Funding(int fNo, String fType, String fTitle, String fContent, Date fWriteDate, Date fStartDate,
			Date fEndDate, String fStatus, int fValue, int fWriter, int fhValue, Date fhDate, String iName, int sum,
			int total) {
		super();
		this.fNo = fNo;
		this.fType = fType;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fWriteDate = fWriteDate;
		this.fStartDate = fStartDate;
		this.fEndDate = fEndDate;
		this.fStatus = fStatus;
		this.fValue = fValue;
		this.fWriter = fWriter;
		this.fhValue = fhValue;
		this.fhDate = fhDate;
		this.iName = iName;
		this.sum = sum;
		this.total = total;
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

	public int getFhValue() {
		return fhValue;
	}

	public void setFhValue(int fhValue) {
		this.fhValue = fhValue;
	}

	public Date getFhDate() {
		return fhDate;
	}

	public void setFhDate(Date fhDate) {
		this.fhDate = fhDate;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	
	
	

	

	
		
		
	}




	
	
	
	
