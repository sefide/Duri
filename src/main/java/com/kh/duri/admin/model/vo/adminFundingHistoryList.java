package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class adminFundingHistoryList {

	//FUNDHISTORY
	
	private int fhNo;//펀딩내역번호
	private Date fhDate;//후원일시
	private int fhValue;//후원금액
	private int fh_fNo;//펀딩글번호
	private int fh_Mno_Give;//후원자번호

	
	//FUNDHISTORYDETAIL
	
	private int fhdNo;//상세구분번호
	private int fhdItemValue;//물품수량
	private int fhd_fhNo;//펀딩내역번호
	private int fhd_iNo;//물품번호
	
	
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
	
	
	//MEMBER
		private int Mno;//회원번호
		private String Mid;//아이디
		private String MType;//회원구분
		private String MFundType;//대상타입
		private String MTakeStatus;//후원대상자상태

		
		
		//FUNDITEM
		private int iNo;//물품번호
		private String iName;//물품명
		private int iPrice;//물품가격
		
		public adminFundingHistoryList() {

		}

		public adminFundingHistoryList(int fhNo, Date fhDate, int fhValue, int fh_fNo, int fh_Mno_Give, int fhdNo,
				int fhdItemValue, int fhd_fhNo, int fhd_iNo, int fNo, String fType, String fTitle, String fContent,
				Date fWriteDate, Date fStartDate, Date fEndDate, String fStatus, int fValue, String fValueType,
				int fWriter, int mno, String mid, String mType, String mFundType, String mTakeStatus, int iNo,
				String iName, int iPrice) {
			super();
			this.fhNo = fhNo;
			this.fhDate = fhDate;
			this.fhValue = fhValue;
			this.fh_fNo = fh_fNo;
			this.fh_Mno_Give = fh_Mno_Give;
			this.fhdNo = fhdNo;
			this.fhdItemValue = fhdItemValue;
			this.fhd_fhNo = fhd_fhNo;
			this.fhd_iNo = fhd_iNo;
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
			Mno = mno;
			Mid = mid;
			MType = mType;
			MFundType = mFundType;
			MTakeStatus = mTakeStatus;
			this.iNo = iNo;
			this.iName = iName;
			this.iPrice = iPrice;
		}

		@Override
		public String toString() {
			return "adminFundingHistoryList [fhNo=" + fhNo + ", fhDate=" + fhDate + ", fhValue=" + fhValue + ", fh_fNo="
					+ fh_fNo + ", fh_Mno_Give=" + fh_Mno_Give + ", fhdNo=" + fhdNo + ", fhdItemValue=" + fhdItemValue
					+ ", fhd_fhNo=" + fhd_fhNo + ", fhd_iNo=" + fhd_iNo + ", fNo=" + fNo + ", fType=" + fType
					+ ", fTitle=" + fTitle + ", fContent=" + fContent + ", fWriteDate=" + fWriteDate + ", fStartDate="
					+ fStartDate + ", fEndDate=" + fEndDate + ", fStatus=" + fStatus + ", fValue=" + fValue
					+ ", fValueType=" + fValueType + ", fWriter=" + fWriter + ", Mno=" + Mno + ", Mid=" + Mid
					+ ", MType=" + MType + ", MFundType=" + MFundType + ", MTakeStatus=" + MTakeStatus + ", iNo=" + iNo
					+ ", iName=" + iName + ", iPrice=" + iPrice + "]";
		}

		public int getFhNo() {
			return fhNo;
		}

		public void setFhNo(int fhNo) {
			this.fhNo = fhNo;
		}

		public Date getFhDate() {
			return fhDate;
		}

		public void setFhDate(Date fhDate) {
			this.fhDate = fhDate;
		}

		public int getFhValue() {
			return fhValue;
		}

		public void setFhValue(int fhValue) {
			this.fhValue = fhValue;
		}

		public int getFh_fNo() {
			return fh_fNo;
		}

		public void setFh_fNo(int fh_fNo) {
			this.fh_fNo = fh_fNo;
		}

		public int getFh_Mno_Give() {
			return fh_Mno_Give;
		}

		public void setFh_Mno_Give(int fh_Mno_Give) {
			this.fh_Mno_Give = fh_Mno_Give;
		}

		public int getFhdNo() {
			return fhdNo;
		}

		public void setFhdNo(int fhdNo) {
			this.fhdNo = fhdNo;
		}

		public int getFhdItemValue() {
			return fhdItemValue;
		}

		public void setFhdItemValue(int fhdItemValue) {
			this.fhdItemValue = fhdItemValue;
		}

		public int getFhd_fhNo() {
			return fhd_fhNo;
		}

		public void setFhd_fhNo(int fhd_fhNo) {
			this.fhd_fhNo = fhd_fhNo;
		}

		public int getFhd_iNo() {
			return fhd_iNo;
		}

		public void setFhd_iNo(int fhd_iNo) {
			this.fhd_iNo = fhd_iNo;
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

		public int getMno() {
			return Mno;
		}

		public void setMno(int mno) {
			Mno = mno;
		}

		public String getMid() {
			return Mid;
		}

		public void setMid(String mid) {
			Mid = mid;
		}

		public String getMType() {
			return MType;
		}

		public void setMType(String mType) {
			MType = mType;
		}

		public String getMFundType() {
			return MFundType;
		}

		public void setMFundType(String mFundType) {
			MFundType = mFundType;
		}

		public String getMTakeStatus() {
			return MTakeStatus;
		}

		public void setMTakeStatus(String mTakeStatus) {
			MTakeStatus = mTakeStatus;
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

		
		

}
