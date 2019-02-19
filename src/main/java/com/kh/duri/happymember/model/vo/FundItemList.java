package com.kh.duri.happymember.model.vo;

public class FundItemList implements java.io.Serializable{
	private int ino;
	private String iname;
	private int iprice;
	
	public FundItemList() {}

	public FundItemList(int ino, String iname, int iprice) {
		super();
		this.ino = ino;
		this.iname = iname;
		this.iprice = iprice;
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public String getIname() {
		return iname;
	}

	public void setIname(String iname) {
		this.iname = iname;
	}

	public int getIprice() {
		return iprice;
	}

	public void setIprice(int iprice) {
		this.iprice = iprice;
	}

	@Override
	public String toString() {
		return "FundItemList [ino=" + ino + ", iname=" + iname + ", iprice=" + iprice + "]";
	}
	
	
}
