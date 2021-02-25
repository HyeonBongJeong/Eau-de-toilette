package com.kkkj.eaude.domain;



public class Purchasehistory {

	
	private int ph_id;
	private int ph_count;
	private String ph_date;
	private String m_id;
	private int p_id;
	private String ph_status;
	private String ph_allpoint;
	private int ph_ordernum;
	
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
	public String getPh_date() {
		return ph_date;
	}
	public void setPh_date(String ph_date) {
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
	public String getPh_status() {
		return ph_status;
	}
	public void setPh_status(String ph_status) {
		this.ph_status = ph_status;
	}
	public String getPh_allpoint() {
		return ph_allpoint;
	}
	public void setPh_allpoint(String ph_allpoint) {
		this.ph_allpoint = ph_allpoint;
	}
	
	public int getPh_ordernum() {
		return ph_ordernum;
	}
	public void setPh_ordernum(int ph_ordernum) {
		this.ph_ordernum = ph_ordernum;
	}
	@Override
	public String toString() {
		return "Purchasehistory [ph_id=" + ph_id + ", ph_count=" + ph_count + ", ph_date=" + ph_date + ", m_id=" + m_id
				+ ", p_id=" + p_id + ", ph_status=" + ph_status + ", ph_allpoint=" + ph_allpoint + ", ph_ordernum="
				+ ph_ordernum + "]";
	}
	
	
	

	
	
}
