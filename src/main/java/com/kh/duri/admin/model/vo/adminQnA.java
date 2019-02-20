package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class adminQnA {

	//QNA
	private int qNo;//글번호
	private Date qDate;//작성일시
	private String qTitle;//제목
	private String qContent;//내용
	private String qAnswer;//답변
	private String qWriter;//작성회원구분
	private int q_Mno;//회원번호
	

	
	//MEMBER
	
	private int mno;
	private String mName;
	private String mNick;
	private String mPhone;
	private String mid;
	private String mpwd;
	private String mtype;
	private String mFundtype;
	private String mpr;
	private String mprNew;
	private String mStatus;
	private String mTakeStatus;
	
	
	
	public adminQnA() {

	}



	public adminQnA(int qNo, Date qDate, String qTitle, String qContent, String qAnswer, String qWriter, int q_Mno,
			int mno, String mName, String mNick, String mPhone, String mid, String mpwd, String mtype, String mFundtype,
			String mpr, String mprNew, String mStatus, String mTakeStatus) {
		super();
		this.qNo = qNo;
		this.qDate = qDate;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qAnswer = qAnswer;
		this.qWriter = qWriter;
		this.q_Mno = q_Mno;
		this.mno = mno;
		this.mName = mName;
		this.mNick = mNick;
		this.mPhone = mPhone;
		this.mid = mid;
		this.mpwd = mpwd;
		this.mtype = mtype;
		this.mFundtype = mFundtype;
		this.mpr = mpr;
		this.mprNew = mprNew;
		this.mStatus = mStatus;
		this.mTakeStatus = mTakeStatus;
	}



	@Override
	public String toString() {
		return "adminQnA [qNo=" + qNo + ", qDate=" + qDate + ", qTitle=" + qTitle + ", qContent=" + qContent
				+ ", qAnswer=" + qAnswer + ", qWriter=" + qWriter + ", q_Mno=" + q_Mno + ", mno=" + mno + ", mName=" + mName
				+ ", mNick=" + mNick + ", mPhone=" + mPhone + ", mid=" + mid + ", mpwd=" + mpwd + ", mtype=" + mtype
				+ ", mFundtype=" + mFundtype + ", mpr=" + mpr + ", mprNew=" + mprNew + ", mStatus=" + mStatus
				+ ", mTakeStatus=" + mTakeStatus + "]";
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



	public int getQ_Mno() {
		return q_Mno;
	}



	public void setQ_Mno(int q_Mno) {
		this.q_Mno = q_Mno;
	}



	public int getMno() {
		return mno;
	}



	public void setMno(int mno) {
		this.mno = mno;
	}



	public String getmName() {
		return mName;
	}



	public void setmName(String mName) {
		this.mName = mName;
	}



	public String getmNick() {
		return mNick;
	}



	public void setmNick(String mNick) {
		this.mNick = mNick;
	}



	public String getmPhone() {
		return mPhone;
	}



	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}



	public String getMid() {
		return mid;
	}



	public void setMid(String mid) {
		this.mid = mid;
	}



	public String getMpwd() {
		return mpwd;
	}



	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}



	public String getMtype() {
		return mtype;
	}



	public void setMtype(String mtype) {
		this.mtype = mtype;
	}



	public String getmFundtype() {
		return mFundtype;
	}



	public void setmFundtype(String mFundtype) {
		this.mFundtype = mFundtype;
	}



	public String getMpr() {
		return mpr;
	}



	public void setMpr(String mpr) {
		this.mpr = mpr;
	}



	public String getMprNew() {
		return mprNew;
	}



	public void setMprNew(String mprNew) {
		this.mprNew = mprNew;
	}



	public String getmStatus() {
		return mStatus;
	}



	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}



	public String getmTakeStatus() {
		return mTakeStatus;
	}



	public void setmTakeStatus(String mTakeStatus) {
		this.mTakeStatus = mTakeStatus;
	}
	
	
	
	
}
