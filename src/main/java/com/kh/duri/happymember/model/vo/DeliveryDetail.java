package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class DeliveryDetail {
	int ddno;
	int ddvalue;
	int dd_dno;
	int dd_ino;
	String dd_name;
	int rnum;
	String dlink;
	Date dd_date;
	
	public DeliveryDetail() {}

	public DeliveryDetail(int ddno, int ddvalue, int dd_dno, int dd_ino, String dd_name, int rnum, String dlink,
			Date dd_date) {
		super();
		this.ddno = ddno;
		this.ddvalue = ddvalue;
		this.dd_dno = dd_dno;
		this.dd_ino = dd_ino;
		this.dd_name = dd_name;
		this.rnum = rnum;
		this.dlink = dlink;
		this.dd_date = dd_date;
	}

	public int getDdno() {
		return ddno;
	}

	public void setDdno(int ddno) {
		this.ddno = ddno;
	}

	public int getDdvalue() {
		return ddvalue;
	}

	public void setDdvalue(int ddvalue) {
		this.ddvalue = ddvalue;
	}

	public int getDd_dno() {
		return dd_dno;
	}

	public void setDd_dno(int dd_dno) {
		this.dd_dno = dd_dno;
	}

	public int getDd_ino() {
		return dd_ino;
	}

	public void setDd_ino(int dd_ino) {
		this.dd_ino = dd_ino;
	}

	public String getDd_name() {
		return dd_name;
	}

	public void setDd_name(String dd_name) {
		this.dd_name = dd_name;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getDlink() {
		return dlink;
	}

	public void setDlink(String dlink) {
		this.dlink = dlink;
	}

	public Date getDd_date() {
		return dd_date;
	}

	public void setDd_date(Date dd_date) {
		this.dd_date = dd_date;
	}

	@Override
	public String toString() {
		return "DeliveryDetail [ddno=" + ddno + ", ddvalue=" + ddvalue + ", dd_dno=" + dd_dno + ", dd_ino=" + dd_ino
				+ ", dd_name=" + dd_name + ", rnum=" + rnum + ", dlink=" + dlink + ", dd_date=" + dd_date + "]";
	}
	
	

	
	
}
