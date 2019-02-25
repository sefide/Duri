package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class Attachment implements java.io.Serializable{
	int ano;
	String originname;
	String achangename;
	Date adate;
	String afilepath;
	int a_mno;
	String adoctype;
	String astatus;
	String changestart;
	String finishdate;
	Date dday;
	
	public Attachment() {}

	public Attachment(int ano, String originname, String achangename, Date adate, String afilepath, int a_mno,
			String adoctype, String astatus, String changestart, String finishdate, Date dday) {
		super();
		this.ano = ano;
		this.originname = originname;
		this.achangename = achangename;
		this.adate = adate;
		this.afilepath = afilepath;
		this.a_mno = a_mno;
		this.adoctype = adoctype;
		this.astatus = astatus;
		this.changestart = changestart;
		this.finishdate = finishdate;
		this.dday = dday;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getOriginname() {
		return originname;
	}

	public void setOriginname(String originname) {
		this.originname = originname;
	}

	public String getAchangename() {
		return achangename;
	}

	public void setAchangename(String achangename) {
		this.achangename = achangename;
	}

	public Date getAdate() {
		return adate;
	}

	public void setAdate(Date adate) {
		this.adate = adate;
	}

	public String getAfilepath() {
		return afilepath;
	}

	public void setAfilepath(String afilepath) {
		this.afilepath = afilepath;
	}

	public int getA_mno() {
		return a_mno;
	}

	public void setA_mno(int a_mno) {
		this.a_mno = a_mno;
	}

	public String getAdoctype() {
		return adoctype;
	}

	public void setAdoctype(String adoctype) {
		this.adoctype = adoctype;
	}

	public String getAstatus() {
		return astatus;
	}

	public void setAstatus(String astatus) {
		this.astatus = astatus;
	}

	public String getChangestart() {
		return changestart;
	}

	public void setChangestart(String changestart) {
		this.changestart = changestart;
	}

	public String getFinishdate() {
		return finishdate;
	}

	public void setFinishdate(String finishdate) {
		this.finishdate = finishdate;
	}

	public Date getDday() {
		return dday;
	}

	public void setDday(Date dday) {
		this.dday = dday;
	}

	@Override
	public String toString() {
		return "Attachment [ano=" + ano + ", originname=" + originname + ", achangename=" + achangename + ", adate="
				+ adate + ", afilepath=" + afilepath + ", a_mno=" + a_mno + ", adoctype=" + adoctype + ", astatus="
				+ astatus + ", changestart=" + changestart + ", finishdate=" + finishdate + ", dday=" + dday + "]";
	}

	
	
	
}
