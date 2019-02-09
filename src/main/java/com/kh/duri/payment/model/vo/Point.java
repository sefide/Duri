package com.kh.duri.payment.model.vo;

import java.sql.Date;

public class Point {
	private int pNo;
	private String pType;
	private long pValue;
	private Date pDate;
	private String pReason;
	private String p_mNo;
	private int p_pyNo;
	private int p_dhdNo;
	private int p_rNo;
	private int p_fhNo;
	private String p_f_m; // 크라우드 펀딩 대상자명
	private String p_f_title; // 크라우드 펀딩글 제목
	private String p_d_m; // 정기후원 대상자명
	private int p_d_c;  // 정기후원 회차 
	private int rnum;
	
	public Point() {}

	public Point(int pNo, String pType, long pValue, Date pDate, String pReason, String p_mNo, int p_pyNo, int p_dhdNo,
			int p_rNo, int p_fhNo, String p_f_m, String p_f_title, String p_d_m, int p_d_c, int rnum) {
		super();
		this.pNo = pNo;
		this.pType = pType;
		this.pValue = pValue;
		this.pDate = pDate;
		this.pReason = pReason;
		this.p_mNo = p_mNo;
		this.p_pyNo = p_pyNo;
		this.p_dhdNo = p_dhdNo;
		this.p_rNo = p_rNo;
		this.p_fhNo = p_fhNo;
		this.p_f_m = p_f_m;
		this.p_f_title = p_f_title;
		this.p_d_m = p_d_m;
		this.p_d_c = p_d_c;
		this.rnum = rnum;
	}


	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
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

	public String getP_f_m() {
		return p_f_m;
	}

	public void setP_f_m(String p_f_m) {
		this.p_f_m = p_f_m;
	}

	public String getP_f_title() {
		return p_f_title;
	}

	public void setP_f_title(String p_f_title) {
		this.p_f_title = p_f_title;
	}

	public String getP_d_m() {
		return p_d_m;
	}

	public void setP_d_m(String p_d_m) {
		this.p_d_m = p_d_m;
	}

	public int getP_d_c() {
		return p_d_c;
	}

	public void setP_d_c(int p_d_c) {
		this.p_d_c = p_d_c;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "Point [pNo=" + pNo + ", pType=" + pType + ", pValue=" + pValue + ", pDate=" + pDate + ", pReason="
				+ pReason + ", p_mNo=" + p_mNo + ", p_pyNo=" + p_pyNo + ", p_dhdNo=" + p_dhdNo + ", p_rNo=" + p_rNo
				+ ", p_fhNo=" + p_fhNo + ", p_f_m=" + p_f_m + ", p_f_title=" + p_f_title + ", p_d_m=" + p_d_m
				+ ", p_d_c=" + p_d_c + ", rnum=" + rnum + "]";
	}

	
}
