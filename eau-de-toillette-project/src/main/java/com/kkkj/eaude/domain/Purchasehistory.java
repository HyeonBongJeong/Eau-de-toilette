package com.kkkj.eaude.domain;

import java.sql.Date;

public class Purchasehistory {

	
	private int ph_id;
	private int ph_count;
	private Date ph_date;
	private String m_id;
	private int p_id;
	public int getPh_id() {
		return ph_id;
	}
	public void setPh_id(int ph_id) {
		this.ph_id = ph_id;
	}
	public int getPh_count() {
		return ph_count;
	}
	public void setPh_count(int ph_count) {
		this.ph_count = ph_count;
	}
	public Date getPh_date() {
		return ph_date;
	}
	public void setPh_date(Date ph_date) {
		this.ph_date = ph_date;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	
}
