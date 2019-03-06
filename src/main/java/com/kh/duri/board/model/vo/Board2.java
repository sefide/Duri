package com.kh.duri.board.model.vo;


public class Board2 {
	private int fno;
	private int mno;
	private int mno2;
	private String mNick;
	private int sum;
	private int sumValue;
	private int sumValue2;
	private int sumFhValue;
	private int dhValue;
	private String dh_valueType;
	private int dh_mno;
	private String fValueType;
	
	public Board2() {}

	public Board2(int fno, int mno, int mno2, String mNick, int sum, int sumValue, int sumValue2, int sumFhValue,
			int dhValue, String dh_valueType, int dh_mno, String fValueType) {
		super();
		this.fno = fno;
		this.mno = mno;
		this.mno2 = mno2;
		this.mNick = mNick;
		this.sum = sum;
		this.sumValue = sumValue;
		this.sumValue2 = sumValue2;
		this.sumFhValue = sumFhValue;
		this.dhValue = dhValue;
		this.dh_valueType = dh_valueType;
		this.dh_mno = dh_mno;
		this.fValueType = fValueType;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getMno2() {
		return mno2;
	}

	public void setMno2(int mno2) {
		this.mno2 = mno2;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public int getSumValue() {
		return sumValue;
	}

	public void setSumValue(int sumValue) {
		this.sumValue = sumValue;
	}

	public int getSumValue2() {
		return sumValue2;
	}

	public void setSumValue2(int sumValue2) {
		this.sumValue2 = sumValue2;
	}

	public int getSumFhValue() {
		return sumFhValue;
	}

	public void setSumFhValue(int sumFhValue) {
		this.sumFhValue = sumFhValue;
	}

	public int getDhValue() {
		return dhValue;
	}

	public void setDhValue(int dhValue) {
		this.dhValue = dhValue;
	}

	public String getDh_valueType() {
		return dh_valueType;
	}

	public void setDh_valueType(String dh_valueType) {
		this.dh_valueType = dh_valueType;
	}

	public int getDh_mno() {
		return dh_mno;
	}

	public void setDh_mno(int dh_mno) {
		this.dh_mno = dh_mno;
	}

	public String getfValueType() {
		return fValueType;
	}

	public void setfValueType(String fValueType) {
		this.fValueType = fValueType;
	}

	@Override
	public String toString() {
		return "Board2 [fno=" + fno + ", mno=" + mno + ", mno2=" + mno2 + ", mNick=" + mNick + ", sum=" + sum
				+ ", sumValue=" + sumValue + ", sumValue2=" + sumValue2 + ", sumFhValue=" + sumFhValue + ", dhValue="
				+ dhValue + ", dh_valueType=" + dh_valueType + ", dh_mno=" + dh_mno + ", fValueType=" + fValueType
				+ "]";
	}

	

	
}
