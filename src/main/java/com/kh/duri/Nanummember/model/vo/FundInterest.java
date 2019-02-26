package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class FundInterest implements java.io.Serializable{
	private int flNo; //관심번호
	private Date flDate; //관심 일시
	private String flStatus; //상태
	private String flType; // 후원구분
	private int flMno; // 후원자 번호
	private int flFno; //펀딩글 번호
	private int flMnoTake; // 회원번호(후원 대상자)
	private String mNick; //후원대상자 닉네임
	private String mpr; // 후원 대상자 자기소개
	private String fTitle; //후원 제목
	private int fNo;
	private int mNo;
	
	
	
	public FundInterest(){}



	public FundInterest(int flNo, Date flDate, String flStatus, String flType, int flMno, int flFno, int flMnoTake,
			String mNick, String mpr, String fTitle, int fNo, int mNo) {
		super();
		this.flNo = flNo;
		this.flDate = flDate;
		this.flStatus = flStatus;
		this.flType = flType;
		this.flMno = flMno;
		this.flFno = flFno;
		this.flMnoTake = flMnoTake;
		this.mNick = mNick;
		this.mpr = mpr;
		this.fTitle = fTitle;
		this.fNo = fNo;
		this.mNo = mNo;
	}



	@Override
	public String toString() {
		return "FundInterest [flNo=" + flNo + ", flDate=" + flDate + ", flStatus=" + flStatus + ", flType=" + flType
				+ ", flMno=" + flMno + ", flFno=" + flFno + ", flMnoTake=" + flMnoTake + ", mNick=" + mNick + ", mpr="
				+ mpr + ", fTitle=" + fTitle + ", fNo=" + fNo + ", mNo=" + mNo + "]";
	}



	public int getFlNo() {
		return flNo;
	}



	public void setFlNo(int flNo) {
		this.flNo = flNo;
	}



	public Date getFlDate() {
		return flDate;
	}



	public void setFlDate(Date flDate) {
		this.flDate = flDate;
	}



	public String getFlStatus() {
		return flStatus;
	}



	public void setFlStatus(String flStatus) {
		this.flStatus = flStatus;
	}



	public String getFlType() {
		return flType;
	}



	public void setFlType(String flType) {
		this.flType = flType;
	}



	public int getFlMno() {
		return flMno;
	}



	public void setFlMno(int flMno) {
		this.flMno = flMno;
	}



	public int getFlFno() {
		return flFno;
	}



	public void setFlFno(int flFno) {
		this.flFno = flFno;
	}



	public int getFlMnoTake() {
		return flMnoTake;
	}



	public void setFlMnoTake(int flMnoTake) {
		this.flMnoTake = flMnoTake;
	}



	public String getmNick() {
		return mNick;
	}



	public void setmNick(String mNick) {
		this.mNick = mNick;
	}



	public String getMpr() {
		return mpr;
	}



	public void setMpr(String mpr) {
		this.mpr = mpr;
	}



	public String getfTitle() {
		return fTitle;
	}



	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}



	public int getfNo() {
		return fNo;
	}



	public void setfNo(int fNo) {
		this.fNo = fNo;
	}



	public int getmNo() {
		return mNo;
	}



	public void setmNo(int mNo) {
		this.mNo = mNo;
	}


	
	
	
	
	
	
	
}
