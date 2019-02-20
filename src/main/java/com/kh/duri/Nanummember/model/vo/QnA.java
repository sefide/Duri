package com.kh.duri.Nanummember.model.vo;

import java.sql.Date;

public class QnA implements java.io.Serializable{

	private int qNo;
	private Date qDate;
	private String qTitle;
	private String qContent;
	private String qAnswer;
	private String qWriter;
	private int q_mNo;
	private String mNick;
	private int rnum;
	
	public QnA () {}

	public QnA(int qNo, Date qDate, String qTitle, String qContent, String qAnswer, String qWriter, int q_mNo,
			String mNick, int rnum) {
		super();
		this.qNo = qNo;
		this.qDate = qDate;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qAnswer = qAnswer;
		this.qWriter = qWriter;
		this.q_mNo = q_mNo;
		this.mNick = mNick;
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "QnA [qNo=" + qNo + ", qDate=" + qDate + ", qTitle=" + qTitle + ", qContent=" + qContent + ", qAnswer="
				+ qAnswer + ", qWriter=" + qWriter + ", q_mNo=" + q_mNo + ", mNick=" + mNick + ", rnum=" + rnum + "]";
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getqAnswer() {
		return qAnswer;
	}

	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}

	public String getqWriter() {
		return qWriter;
	}

	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}

	public int getQ_mNo() {
		return q_mNo;
	}

	public void setQ_mNo(int q_mNo) {
		this.q_mNo = q_mNo;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	

	







}
