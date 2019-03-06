package com.kh.duri.admin.model.vo;

import java.sql.Date;

public class Notice {
	
	private int nno;
	private int n_mno;
	private String ntype;
	private String ncontents;
	private Date ndate;
	private String nndate;
	private String nstatus;
	
	public Notice() {
		
	}

	public Notice(int nno, int n_mno, String ntype, String ncontents, Date ndate, String nndate, String nstatus) {
		super();
		this.nno = nno;
		this.n_mno = n_mno;
		this.ntype = ntype;
		this.ncontents = ncontents;
		this.ndate = ndate;
		this.nndate = nndate;
		this.nstatus = nstatus;
	}

	@Override
	public String toString() {
		return "Notice [nno=" + nno + ", n_mno=" + n_mno + ", ntype=" + ntype + ", ncontents=" + ncontents + ", ndate="
				+ ndate + ", nndate=" + nndate + ", nstatus=" + nstatus + "]";
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public int getN_mno() {
		return n_mno;
	}

	public void setN_mno(int n_mno) {
		this.n_mno = n_mno;
	}

	public String getNtype() {
		return ntype;
	}

	public void setNtype(String ntype) {
		this.ntype = ntype;
	}

	public String getNcontents() {
		return ncontents;
	}

	public void setNcontents(String ncontents) {
		this.ncontents = ncontents;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public String getNndate() {
		return nndate;
	}

	public void setNndate(String nndate) {
		this.nndate = nndate;
	}

	public String getNstatus() {
		return nstatus;
	}

	public void setNstatus(String nstatus) {
		this.nstatus = nstatus;
	}

	

}
