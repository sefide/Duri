package com.kh.duri.happymember.model.vo;

public class DeliveryDetail {
	int ddno;
	int ddvalue;
	int dd_dno;
	int dd_ino;
	
	public DeliveryDetail() {}

	public DeliveryDetail(int ddno, int ddvalue, int dd_dno, int dd_ino) {
		super();
		this.ddno = ddno;
		this.ddvalue = ddvalue;
		this.dd_dno = dd_dno;
		this.dd_ino = dd_ino;
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

	@Override
	public String toString() {
		return "DeliveryDetail [ddno=" + ddno + ", ddvalue=" + ddvalue + ", dd_dno=" + dd_dno + ", dd_ino=" + dd_ino
				+ "]";
	}
	
	


}
