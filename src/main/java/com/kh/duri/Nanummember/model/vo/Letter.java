package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class Letter implements java.io.Serializable{
	private int leNo; //편지구분번호
	private int leMnoTake; // 편지작성자번호 (후원대상자)
	private int leMnoGive; //후원자번호
	private String leTitle; //제목
	private String leContent; //내용
	private Date leWriteDate; // 편지 작성일
	private String leType; //후원타입
	private String leStatus; // 상태
	private String mNick; //닉네임
	
	public Letter() {}

	public Letter(int leNo, int leMnoTake, int leMnoGive, String leTitle, String leContent, Date leWriteDate,
			String leType, String leStatus, String mNick) {
		super();
		this.leNo = leNo;
		this.leMnoTake = leMnoTake;
		this.leMnoGive = leMnoGive;
		this.leTitle = leTitle;
		this.leContent = leContent;
		this.leWriteDate = leWriteDate;
		this.leType = leType;
		this.leStatus = leStatus;
		this.mNick = mNick;
	}

	@Override
	public String toString() {
		return "Letter [leNo=" + leNo + ", leMnoTake=" + leMnoTake + ", leMnoGive=" + leMnoGive + ", leTitle=" + leTitle
				+ ", leContent=" + leContent + ", leWriteDate=" + leWriteDate + ", leType=" + leType + ", leStatus="
				+ leStatus + ", mNick=" + mNick + "]";
	}

	public int getLeNo() {
		return leNo;
	}

	public void setLeNo(int leNo) {
		this.leNo = leNo;
	}

	public int getLeMnoTake() {
		return leMnoTake;
	}

	public void setLeMnoTake(int leMnoTake) {
		this.leMnoTake = leMnoTake;
	}

	public int getLeMnoGive() {
		return leMnoGive;
	}

	public void setLeMnoGive(int leMnoGive) {
		this.leMnoGive = leMnoGive;
	}

	public String getLeTitle() {
		return leTitle;
	}

	public void setLeTitle(String leTitle) {
		this.leTitle = leTitle;
	}

	public String getLeContent() {
		return leContent;
	}

	public void setLeContent(String leContent) {
		this.leContent = leContent;
	}

	public Date getLeWriteDate() {
		return leWriteDate;
	}

	public void setLeWriteDate(Date leWriteDate) {
		this.leWriteDate = leWriteDate;
	}

	public String getLeType() {
		return leType;
	}

	public void setLeType(String leType) {
		this.leType = leType;
	}

	public String getLeStatus() {
		return leStatus;
	}

	public void setLeStatus(String leStatus) {
		this.leStatus = leStatus;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
}
