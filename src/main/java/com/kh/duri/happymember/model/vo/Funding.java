package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class Funding implements java.io.Serializable{
	private int fno;
	private String ftype;
	private String ftitle;
	private String fcontent;
	private Date fwritedate;
	private Date fstartdate;
	private Date fenddate;
	private String fleftday;
	private String fstatus;
	private int fvalue;
	private String fvaluetype;
	private int fwriter;
	private int count;
	private int rnum;
	
	public Funding() {}

	public Funding(int fno, String ftype, String ftitle, String fcontent, Date fwritedate, Date fstartdate,
			Date fenddate, String fleftday, String fstatus, int fvalue, String fvaluetype, int fwriter, int count,
			int rnum) {
		super();
		this.fno = fno;
		this.ftype = ftype;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fwritedate = fwritedate;
		this.fstartdate = fstartdate;
		this.fenddate = fenddate;
		this.fleftday = fleftday;
		this.fstatus = fstatus;
		this.fvalue = fvalue;
		this.fvaluetype = fvaluetype;
		this.fwriter = fwriter;
		this.count = count;
		this.rnum = rnum;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public String getFtype() {
		return ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public String getFtitle() {
		return ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public Date getFwritedate() {
		return fwritedate;
	}

	public void setFwritedate(Date fwritedate) {
		this.fwritedate = fwritedate;
	}

	public Date getFstartdate() {
		return fstartdate;
	}

	public void setFstartdate(Date fstartdate) {
		this.fstartdate = fstartdate;
	}

	public Date getFenddate() {
		return fenddate;
	}

	public void setFenddate(Date fenddate) {
		this.fenddate = fenddate;
	}

	public String getFleftday() {
		return fleftday;
	}

	public void setFleftday(String fleftday) {
		this.fleftday = fleftday;
	}

	public String getFstatus() {
		return fstatus;
	}

	public void setFstatus(String fstatus) {
		this.fstatus = fstatus;
	}

	public int getFvalue() {
		return fvalue;
	}

	public void setFvalue(int fvalue) {
		this.fvalue = fvalue;
	}

	public String getFvaluetype() {
		return fvaluetype;
	}

	public void setFvaluetype(String fvaluetype) {
		this.fvaluetype = fvaluetype;
	}

	public int getFwriter() {
		return fwriter;
	}

	public void setFwriter(int fwriter) {
		this.fwriter = fwriter;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "Funding [fno=" + fno + ", ftype=" + ftype + ", ftitle=" + ftitle + ", fcontent=" + fcontent
				+ ", fwritedate=" + fwritedate + ", fstartdate=" + fstartdate + ", fenddate=" + fenddate + ", fleftday="
				+ fleftday + ", fstatus=" + fstatus + ", fvalue=" + fvalue + ", fvaluetype=" + fvaluetype + ", fwriter="
				+ fwriter + ", count=" + count + ", rnum=" + rnum + "]";
	}

	
}
