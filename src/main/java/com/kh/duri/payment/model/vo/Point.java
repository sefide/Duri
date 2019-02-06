package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class Point {
	private int pNo;
	private String nType;
	private long pValue;
	private Date pDate;
	private String pReason;
	private String p_mNo;
	private int p_pyNo;
	private int p_dhdNo;
	private int p_rNo;
	private int p_fhNo;
	
	public Point() {}
	
	public Point(int pNo, String nType, long pValue, Date pDate, String pReason, String p_mNo, int p_pyNo, int p_dhdNo,
			int p_rNo, int p_fhNo) {
		super();
		this.pNo = pNo;
		this.nType = nType;
		this.pValue = pValue;
		this.pDate = pDate;
		this.pReason = pReason;
		this.p_mNo = p_mNo;
		this.p_pyNo = p_pyNo;
		this.p_dhdNo = p_dhdNo;
		this.p_rNo = p_rNo;
		this.p_fhNo = p_fhNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getnType() {
		return nType;
	}

	public void setnType(String nType) {
		this.nType = nType;
	}

	public long getpValue() {
		return pValue;
	}

	public void setpValue(long pValue) {
		this.pValue = pValue;
	}

	public Date getpDate() {
		return pDate;
	}

	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public String getpReason() {
		return pReason;
	}

	public void setpReason(String pReason) {
		this.pReason = pReason;
	}

	public String getP_mNo() {
		return p_mNo;
	}

	public void setP_mNo(String p_mNo) {
		this.p_mNo = p_mNo;
	}

	public int getP_pyNo() {
		return p_pyNo;
	}

	public void setP_pyNo(int p_pyNo) {
		this.p_pyNo = p_pyNo;
	}

	public int getP_dhdNo() {
		return p_dhdNo;
	}

	public void setP_dhdNo(int p_dhdNo) {
		this.p_dhdNo = p_dhdNo;
	}

	public int getP_rNo() {
		return p_rNo;
	}

	public void setP_rNo(int p_rNo) {
		this.p_rNo = p_rNo;
	}

	public int getP_fhNo() {
		return p_fhNo;
	}

	public void setP_fhNo(int p_fhNo) {
		this.p_fhNo = p_fhNo;
	}

	@Override
	public String toString() {
		return "Point [pNo=" + pNo + ", nType=" + nType + ", pValue=" + pValue + ", pDate=" + pDate + ", pReason="
				+ pReason + ", p_mNo=" + p_mNo + ", p_pyNo=" + p_pyNo + ", p_dhdNo=" + p_dhdNo + ", p_rNo=" + p_rNo
				+ ", p_fhNo=" + p_fhNo + "]";
	}
	
	
}
