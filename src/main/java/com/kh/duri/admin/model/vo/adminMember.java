package com.kh.duri.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class adminMember implements Serializable{

	//MEMBER
	private int mno;
	private String mName;
	private String mNick;
	private String mGender;
	private String mPhone;
	private String mid;
	private String mpwd;
	private String memail;
	private Date mEnrollDate;
	private int mPoint;
	private String mtype;
	private String mFundtype;
	private String mpr;
	private String mprNew;
	private String mBirthDay;
	private String mAddress;
	private Date mAcceptDate;
	private Date mprAcceptDate;
	private int mGoalNum;
	private String mStatus;
	private String mTakeStatus;
	
	//가상컬럼
	private long pValue;
	private String p_mNo;
	private String NumStatus;
	private String AttachName;
	
	//ATTACHMENT
	private int ano;//첨부파일번호
	private String aoriginName;//원래이름
	private String achangeName;//바뀐이름
	private Date adate; //서류승인일
	private String aFilePath;//파일경로
	private String atype;//R이 증빙서류
	private int a_Fno;//펀딩글번호
	private int a_mno; //회원번호
	private String aDocType;//서류구분
	private String aStatus;//상태
	
	
	
	public adminMember() {
	}



	public adminMember(int mno, String mName, String mNick, String mGender, String mPhone, String mid, String mpwd,
			String memail, Date mEnrollDate, int mPoint, String mtype, String mFundtype, String mpr, String mprNew,
			String mBirthDay, String mAddress, Date mAcceptDate, Date mprAcceptDate, int mGoalNum, String mStatus,
			String mTakeStatus, long pValue, String p_mNo, String numStatus, int ano, String aoriginName,
			String achangeName, Date adate, String aFilePath, String atype, int a_Fno, int a_mno, String aDocType,
			String aStatus, String AttachName) {
		super();
		this.mno = mno;
		this.mName = mName;
		this.mNick = mNick;
		this.mGender = mGender;
		this.mPhone = mPhone;
		this.mid = mid;
		this.mpwd = mpwd;
		this.memail = memail;
		this.mEnrollDate = mEnrollDate;
		this.mPoint = mPoint;
		this.mtype = mtype;
		this.mFundtype = mFundtype;
		this.mpr = mpr;
		this.mprNew = mprNew;
		this.mBirthDay = mBirthDay;
		this.mAddress = mAddress;
		this.mAcceptDate = mAcceptDate;
		this.mprAcceptDate = mprAcceptDate;
		this.mGoalNum = mGoalNum;
		this.mStatus = mStatus;
		this.mTakeStatus = mTakeStatus;
		this.pValue = pValue;
		this.p_mNo = p_mNo;
		this.NumStatus = numStatus;
		this.AttachName= AttachName;
		this.ano = ano;
		this.aoriginName = aoriginName;
		this.achangeName = achangeName;
		this.adate = adate;
		this.aFilePath = aFilePath;
		this.atype = atype;
		this.a_Fno = a_Fno;
		this.a_mno = a_mno;
		this.aDocType = aDocType;
		this.aStatus = aStatus;
	}



	@Override
	public String toString() {
		return "adminMember [mno=" + mno + ", mName=" + mName + ", mNick=" + mNick + ", mGender=" + mGender
				+ ", mPhone=" + mPhone + ", mid=" + mid + ", mpwd=" + mpwd + ", memail=" + memail + ", mEnrollDate="
				+ mEnrollDate + ", mPoint=" + mPoint + ", mtype=" + mtype + ", mFundtype=" + mFundtype + ", mpr=" + mpr
				+ ", mprNew=" + mprNew + ", mBirthDay=" + mBirthDay + ", mAddress=" + mAddress + ", mAcceptDate="
				+ mAcceptDate + ", mprAcceptDate=" + mprAcceptDate + ", mGoalNum=" + mGoalNum + ", mStatus=" + mStatus
				+ ", mTakeStatus=" + mTakeStatus + ", pValue=" + pValue + ", p_mNo=" + p_mNo + ", NumStatus="
				+ NumStatus + ", ano=" + ano + ", aoriginName=" + aoriginName + ", achangeName=" + achangeName
				+ ", adate=" + adate + ", aFilePath=" + aFilePath + ", atype=" + atype + ", a_Fno=" + a_Fno + ", a_mno="
				+ a_mno + ", aDocType=" + aDocType + ", aStatus=" + aStatus +",AttachName="+AttachName+ "]";
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



	public String getmGender() {
		return mGender;
	}



	public void setmGender(String mGender) {
		this.mGender = mGender;
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



	public String getMemail() {
		return memail;
	}



	public void setMemail(String memail) {
		this.memail = memail;
	}



	public Date getmEnrollDate() {
		return mEnrollDate;
	}



	public void setmEnrollDate(Date mEnrollDate) {
		this.mEnrollDate = mEnrollDate;
	}



	public int getmPoint() {
		return mPoint;
	}



	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
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



	public String getmBirthDay() {
		return mBirthDay;
	}



	public void setmBirthDay(String mBirthDay) {
		this.mBirthDay = mBirthDay;
	}



	public String getmAddress() {
		return mAddress;
	}



	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}



	public Date getmAcceptDate() {
		return mAcceptDate;
	}



	public void setmAcceptDate(Date mAcceptDate) {
		this.mAcceptDate = mAcceptDate;
	}



	public Date getMprAcceptDate() {
		return mprAcceptDate;
	}



	public void setMprAcceptDate(Date mprAcceptDate) {
		this.mprAcceptDate = mprAcceptDate;
	}



	public int getmGoalNum() {
		return mGoalNum;
	}



	public void setmGoalNum(int mGoalNum) {
		this.mGoalNum = mGoalNum;
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



	public long getpValue() {
		return pValue;
	}



	public void setpValue(long pValue) {
		this.pValue = pValue;
	}



	public String getP_mNo() {
		return p_mNo;
	}



	public void setP_mNo(String p_mNo) {
		this.p_mNo = p_mNo;
	}



	public String getNumStatus() {
		return NumStatus;
	}



	public void setNumStatus(String numStatus) {
		NumStatus = numStatus;
	}



	public int getAno() {
		return ano;
	}



	public void setAno(int ano) {
		this.ano = ano;
	}



	public String getAoriginName() {
		return aoriginName;
	}



	public void setAoriginName(String aoriginName) {
		this.aoriginName = aoriginName;
	}



	public String getAchangeName() {
		return achangeName;
	}



	public void setAchangeName(String achangeName) {
		this.achangeName = achangeName;
	}



	public Date getAdate() {
		return adate;
	}



	public void setAdate(Date adate) {
		this.adate = adate;
	}



	public String getaFilePath() {
		return aFilePath;
	}



	public void setaFilePath(String aFilePath) {
		this.aFilePath = aFilePath;
	}



	public String getAtype() {
		return atype;
	}



	public void setAtype(String atype) {
		this.atype = atype;
	}



	public int getA_Fno() {
		return a_Fno;
	}



	public void setA_Fno(int a_Fno) {
		this.a_Fno = a_Fno;
	}



	public int getA_mno() {
		return a_mno;
	}



	public void setA_mno(int a_mno) {
		this.a_mno = a_mno;
	}



	public String getaDocType() {
		return aDocType;
	}



	public void setaDocType(String aDocType) {
		this.aDocType = aDocType;
	}



	public String getaStatus() {
		return aStatus;
	}



	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
	}



	public String getAttachName() {
		return AttachName;
	}



	public void setAttachName(String attachName) {
		AttachName = attachName;
	}



	
	
}
