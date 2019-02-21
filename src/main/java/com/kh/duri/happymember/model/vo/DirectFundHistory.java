package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class DirectFundHistory implements java.io.Serializable {
	private int dhno; //정기후원내역번호
	private int dhvalue; //후원금액
	private Date dhstartdate; //시작날짜
	private String dhstatus;	//후원 상태
	private String dhbillingkey;
	private String dhvaluetype;
	private String dh_mno_take;//후원대상자 번호
	private int dh_mno_give;//후원자번호
	private int rnum;
	private String dh_nick_give;
	private int sum;
	private int cnt;
	
	public DirectFundHistory() {}

	public DirectFundHistory(int dhno, int dhvalue, Date dhstartdate, String dhstatus, String dhbillingkey,
			String dhvaluetype, String dh_mno_take, int dh_mno_give, int rnum, String dh_nick_give, int sum, int cnt) {
		super();
		this.dhno = dhno;
		this.dhvalue = dhvalue;
		this.dhstartdate = dhstartdate;
		this.dhstatus = dhstatus;
		this.dhbillingkey = dhbillingkey;
		this.dhvaluetype = dhvaluetype;
		this.dh_mno_take = dh_mno_take;
		this.dh_mno_give = dh_mno_give;
		this.rnum = rnum;
		this.dh_nick_give = dh_nick_give;
		this.sum = sum;
		this.cnt = cnt;
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

	public String getDhbillingkey() {
		return dhbillingkey;
	}

	public void setDhbillingkey(String dhbillingkey) {
		this.dhbillingkey = dhbillingkey;
	}

	public String getDhvaluetype() {
		return dhvaluetype;
	}

	public void setDhvaluetype(String dhvaluetype) {
		this.dhvaluetype = dhvaluetype;
	}

	public String getDh_mno_take() {
		return dh_mno_take;
	}

	public void setDh_mno_take(String dh_mno_take) {
		this.dh_mno_take = dh_mno_take;
	}

	public int getDh_mno_give() {
		return dh_mno_give;
	}

	public void setDh_mno_give(int dh_mno_give) {
		this.dh_mno_give = dh_mno_give;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getDh_nick_give() {
		return dh_nick_give;
	}

	public void setDh_nick_give(String dh_nick_give) {
		this.dh_nick_give = dh_nick_give;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "DirectFundHistory [dhno=" + dhno + ", dhvalue=" + dhvalue + ", dhstartdate=" + dhstartdate
				+ ", dhstatus=" + dhstatus + ", dhbillingkey=" + dhbillingkey + ", dhvaluetype=" + dhvaluetype
				+ ", dh_mno_take=" + dh_mno_take + ", dh_mno_give=" + dh_mno_give + ", rnum=" + rnum + ", dh_nick_give="
				+ dh_nick_give + ", sum=" + sum + ", cnt=" + cnt + "]";
	}

	
	}