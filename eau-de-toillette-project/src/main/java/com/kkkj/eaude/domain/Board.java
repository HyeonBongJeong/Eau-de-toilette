package com.kkkj.eaude.domain;

import java.sql.Timestamp;

import org.springframework.stereotype.Repository;

@Repository("Board")
public class Board {
	private static final long serialVersionUID = 20001L;
	
	private String b_id;
	private char b_type;
	private String b_title;
	private Timestamp b_time;
	private String b_cont;
	private char b_sec;
	private int b_sec_pas;
	private int b_view;
	private String m_it;
	
//	B_ID	VARCHAR2(2000 BYTE)
//	B_TYPE	CHAR(1 BYTE)
//	B_TITLE	VARCHAR2(2000 BYTE)
//	B_TIME	TIMESTAMP(6)
//	B_CONT	CLOB
//	B_SEC	CHAR(1 BYTE)
//	B_SEC_PAS	NUMBER(4,0)
//	B_VIEW	NUMBER
//	M_ID	VARCHAR2(2000 BYTE)
	
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public char getB_type() {
		return b_type;
	}
	public void setB_type(char b_type) {
		this.b_type = b_type;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public Timestamp getB_time() {
		return b_time;
	}
	public void setB_time(Timestamp b_time) {
		this.b_time = b_time;
	}
	public String getB_cont() {
		return b_cont;
	}
	public void setB_cont(String b_cont) {
		this.b_cont = b_cont;
	}
	public char getB_sec() {
		return b_sec;
	}
	public void setB_sec(char b_sec) {
		this.b_sec = b_sec;
	}
	public int getB_sec_pas() {
		return b_sec_pas;
	}
	public void setB_sec_pas(int b_sec_pas) {
		this.b_sec_pas = b_sec_pas;
	}
	public int getB_view() {
		return b_view;
	}
	public void setB_view(int b_view) {
		this.b_view = b_view;
	}
	public String getM_it() {
		return m_it;
	}
	public void setM_it(String m_it) {
		this.m_it = m_it;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Board [b_id=" + b_id + ", b_type=" + b_type + ", b_title=" + b_title + ", b_time=" + b_time
				+ ", b_cont=" + b_cont + ", b_sec=" + b_sec + ", b_sec_pas=" + b_sec_pas + ", b_view=" + b_view
				+ ", m_it=" + m_it + "]";
	}
	
}
