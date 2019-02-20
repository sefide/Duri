package com.kh.duri.happymember.model.vo;

import java.sql.Date;

public class Qna {
	int qno;
	Date qdate;
	String qtitle;
	String qcontent;
	String qanswer;
	String qwriter;
	int q_mno;
	int rnum;
	
	public Qna() {}

	public Qna(int qno, Date qdate, String qtitle, String qcontent, String qanswer, String qwriter, int q_mno,
			int rnum) {
		super();
		this.qno = qno;
		this.qdate = qdate;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qanswer = qanswer;
		this.qwriter = qwriter;
		this.q_mno = q_mno;
		this.rnum = rnum;
	}

	public int getQno() {
		return qno;
	}

	public void setQno(int qno) {
		this.qno = qno;
	}

	public Date getQdate() {
		return qdate;
	}

	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQanswer() {
		return qanswer;
	}

	public void setQanswer(String qanswer) {
		this.qanswer = qanswer;
	}

	public String getQwriter() {
		return qwriter;
	}

	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}

	public int getQ_mno() {
		return q_mno;
	}

	public void setQ_mno(int q_mno) {
		this.q_mno = q_mno;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "Qna [qno=" + qno + ", qdate=" + qdate + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qanswer="
				+ qanswer + ", qwriter=" + qwriter + ", q_mno=" + q_mno + ", rnum=" + rnum + "]";
	}
	
	
	
	
}
