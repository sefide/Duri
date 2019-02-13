package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class Delivery {
	int dno;
	String daddress;
	Date ddate;
	String dlink;
	int d_mno;
	
	public Delivery() {}

	public Delivery(int dno, String daddress, Date ddate, String dlink, int d_mno) {
		super();
		this.dno = dno;
		this.daddress = daddress;
		this.ddate = ddate;
		this.dlink = dlink;
		this.d_mno = d_mno;
	}

	public int getDno() {
		return dno;
	}

	public void setDno(int dno) {
		this.dno = dno;
	}

	public String getDaddress() {
		return daddress;
	}

	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	public Date getDdate() {
		return ddate;
	}

	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}

	public String getDlink() {
		return dlink;
	}

	public void setDlink(String dlink) {
		this.dlink = dlink;
	}

	public int getD_mno() {
		return d_mno;
	}

	public void setD_mno(int d_mno) {
		this.d_mno = d_mno;
	}

	@Override
	public String toString() {
		return "Delivery [dno=" + dno + ", daddress=" + daddress + ", ddate=" + ddate + ", dlink=" + dlink + ", d_mno="
				+ d_mno + "]";
	}
	
	

}
