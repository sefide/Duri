package com.kh.duri.board.model.vo;


public class Board2 {
	private int fno;
	private int mno;
	private int mno2;
	private String mNick;
	private int sum;
	private int sumValue;
	
	
	public Board2() {}


	public Board2(int fno, int mno, int mno2, String mNick, int sum, int sumValue) {
		super();
		this.fno = fno;
		this.mno = mno;
		this.mno2 = mno2;
		this.mNick = mNick;
		this.sum = sum;
		this.sumValue = sumValue;
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


	@Override
	public String toString() {
		return "Board2 [fno=" + fno + ", mno=" + mno + ", mno2=" + mno2 + ", mNick=" + mNick + ", sum=" + sum
				+ ", sumValue=" + sumValue + "]";
	}





	
}
