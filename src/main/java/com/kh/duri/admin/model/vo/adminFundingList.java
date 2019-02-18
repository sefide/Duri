package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class adminFundingList {

	//FUNDING
	private int fNo; //펀딩글 번호
	private String fType; //펀딩구분
	private String fTitle;//제목
	private String fContent;//내용
	private Date fWriteDate;//작성일
	private Date fStartDate;//시작일
	private Date fEndDate;//종료일
	private String fStatus;//상태
	private int fValue;//목표금액
	private String fValueType;//후원유형
	private int fWriter;//후원대상자번호
	
	//FUNDINGDETAIL
	private int fdNo;//상세구분번호
	private int fdValue;//물품수량
	private int fd_Fno;//펀딩글번호
	private int fd_Ino;//물품번호
	
	//FUNDITEM
	private int iNo;//물품번호
	private String iName;//물품명
	private int iPrice;//물품가격
	
	
	private String goodsName;
	private int totalCount;
	
	//Member
	private int mno;
	private String mid;
	private String mFundtype;
	private String mStatus;
	
	
	public adminFundingList() {

	}


	@Override
	public String toString() {
		return "adminFundingList [fNo=" + fNo + ", fType=" + fType + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fWriteDate=" + fWriteDate + ", fStartDate=" + fStartDate + ", fEndDate=" + fEndDate + ", fStatus="
				+ fStatus + ", fValue=" + fValue + ", fValueType=" + fValueType + ", fWriter=" + fWriter + ", fdNo="
				+ fdNo + ", fdValue=" + fdValue + ", fd_Fno=" + fd_Fno + ", fd_Ino=" + fd_Ino + ", iNo=" + iNo
				+ ", iName=" + iName + ", iPrice=" + iPrice + ", goodsName=" + goodsName + ", totalCount=" + totalCount
				+ ", mno=" + mno + ", mid=" + mid + ", mFundtype=" + mFundtype + ", mStatus=" + mStatus + "]";
	}


	public adminFundingList(int fNo, String fType, String fTitle, String fContent, Date fWriteDate, Date fStartDate,
			Date fEndDate, String fStatus, int fValue, String fValueType, int fWriter, int fdNo, int fdValue,
			int fd_Fno, int fd_Ino, int iNo, String iName, int iPrice, String goodsName, int totalCount, int mno,
			String mid, String mFundtype, String mStatus) {
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
		this.fValueType = fValueType;
		this.fWriter = fWriter;
		this.fdNo = fdNo;
		this.fdValue = fdValue;
		this.fd_Fno = fd_Fno;
		this.fd_Ino = fd_Ino;
		this.iNo = iNo;
		this.iName = iName;
		this.iPrice = iPrice;
		this.goodsName = goodsName;
		this.totalCount = totalCount;
		this.mno = mno;
		this.mid = mid;
		this.mFundtype = mFundtype;
		this.mStatus = mStatus;
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


	public int getFdNo() {
		return fdNo;
	}


	public void setFdNo(int fdNo) {
		this.fdNo = fdNo;
	}


	public int getFdValue() {
		return fdValue;
	}


	public void setFdValue(int fdValue) {
		this.fdValue = fdValue;
	}


	public int getFd_Fno() {
		return fd_Fno;
	}


	public void setFd_Fno(int fd_Fno) {
		this.fd_Fno = fd_Fno;
	}


	public int getFd_Ino() {
		return fd_Ino;
	}


	public void setFd_Ino(int fd_Ino) {
		this.fd_Ino = fd_Ino;
	}


	public int getiNo() {
		return iNo;
	}


	public void setiNo(int iNo) {
		this.iNo = iNo;
	}


	public String getiName() {
		return iName;
	}


	public void setiName(String iName) {
		this.iName = iName;
	}


	public int getiPrice() {
		return iPrice;
	}


	public void setiPrice(int iPrice) {
		this.iPrice = iPrice;
	}


	public String getGoodsName() {
		return goodsName;
	}


	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getmFundtype() {
		return mFundtype;
	}


	public void setmFundtype(String mFundtype) {
		this.mFundtype = mFundtype;
	}


	public String getmStatus() {
		return mStatus;
	}


	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}


	

	
	
	

}


