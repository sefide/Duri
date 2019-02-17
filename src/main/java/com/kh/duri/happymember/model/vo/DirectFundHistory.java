package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class DirectFundHistory implements java.io.Serializable {
	private int dhno; //정기후원내역번호
	private int dhvalue; //후원금액
	private Date dhstartdate; //시작날짜
	private String dhstatus; //상태
	private int dh_mno_take; //후원대상자 번호
	private int dh_mno_give; //후원자번호
	private String dh_name_give; //후원자 이름
	private int rnum;
	
	public DirectFundHistory() {}

	public DirectFundHistory(int dhno, int dhvalue, Date dhstartdate, String dhstatus, int dh_mno_take, int dh_mno_give,
			String dh_name_give, int rnum) {
		super();
		this.dhno = dhno;
		this.dhvalue = dhvalue;
		this.dhstartdate = dhstartdate;
		this.dhstatus = dhstatus;
		this.dh_mno_take = dh_mno_take;
		this.dh_mno_give = dh_mno_give;
		this.dh_name_give = dh_name_give;
		this.rnum = rnum;
	}

	public int getDhno() {
		return dhno;
	}

	public void setDhno(int dhno) {
		this.dhno = dhno;
	}

	public int getDhvalue() {
		return dhvalue;
	}

	public void setDhvalue(int dhvalue) {
		this.dhvalue = dhvalue;
	}

	public Date getDhstartdate() {
		return dhstartdate;
	}

	public void setDhstartdate(Date dhstartdate) {
		this.dhstartdate = dhstartdate;
	}

	public String getDhstatus() {
		return dhstatus;
	}

	public void setDhstatus(String dhstatus) {
		this.dhstatus = dhstatus;
	}

	public int getDh_mno_take() {
		return dh_mno_take;
	}

	public void setDh_mno_take(int dh_mno_take) {
		this.dh_mno_take = dh_mno_take;
	}

	public int getDh_mno_give() {
		return dh_mno_give;
	}

	public void setDh_mno_give(int dh_mno_give) {
		this.dh_mno_give = dh_mno_give;
	}

	public String getDh_name_give() {
		return dh_name_give;
	}

	public void setDh_name_give(String dh_name_give) {
		this.dh_name_give = dh_name_give;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "DirectFundHistory [dhno=" + dhno + ", dhvalue=" + dhvalue + ", dhstartdate=" + dhstartdate
				+ ", dhstatus=" + dhstatus + ", dh_mno_take=" + dh_mno_take + ", dh_mno_give=" + dh_mno_give
				+ ", dh_name_give=" + dh_name_give + ", rnum=" + rnum + "]";
	}

	
	}