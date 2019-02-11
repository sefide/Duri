package com.kh.duri.happymember.model.vo;

public class MyDonateItems implements java.io.Serializable{
	private int ono;	//물품연관번호
	private int o_ino;	//물품번호
	private int ovalue;	//수량
	private int o_mno;	//회원번호
	
	public MyDonateItems() {}

	public MyDonateItems(int ono, int o_ino, int ovalue, int o_mno) {
		super();
		this.ono = ono;
		this.o_ino = o_ino;
		this.ovalue = ovalue;
		this.o_mno = o_mno;
	}

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public int getO_ino() {
		return o_ino;
	}

	public void setO_ino(int o_ino) {
		this.o_ino = o_ino;
	}

	public int getOvalue() {
		return ovalue;
	}

	public void setOvalue(int ovalue) {
		this.ovalue = ovalue;
	}

	public int getO_mno() {
		return o_mno;
	}

	public void setO_mno(int o_mno) {
		this.o_mno = o_mno;
	}

	@Override
	public String toString() {
		return "MyDonateItems [ono=" + ono + ", o_ino=" + o_ino + ", ovalue=" + ovalue + ", o_mno=" + o_mno + "]";
	}
	
	
	
}
