package com.kkkj.eaude.domain;

import java.util.Date;

import org.springframework.stereotype.Repository;
@Repository("Purchasehistory")
public class Purchasehistory {

	
	private int ph_id;
	private int ph_count;
	private String ph_date;
	private String m_id;
	private int p_id;
	private String ph_status;
	private String ph_allprice;
	private int ph_ordernum;
	private String p_title;
	private String p_intro;
	private String p_content;
	private int p_price;
	private String p_img;
	private Date p_adddate;
	private String p_type;
	private int p_view;
	private int p_like;
	private int p_size;
	private int ph_allcount;
	
	
	public int getPh_allcount() {
		return ph_allcount;
	}
	public void setPh_allcount(int ph_allcount) {
		this.ph_allcount = ph_allcount;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_intro() {
		return p_intro;
	}
	public void setP_intro(String p_intro) {
		this.p_intro = p_intro;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public Date getP_adddate() {
		return p_adddate;
	}
	public void setP_adddate(Date p_adddate) {
		this.p_adddate = p_adddate;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public int getP_view() {
		return p_view;
	}
	public void setP_view(int p_view) {
		this.p_view = p_view;
	}
	public int getP_like() {
		return p_like;
	}
	public void setP_like(int p_like) {
		this.p_like = p_like;
	}
	public int getP_size() {
		return p_size;
	}
	public void setP_size(int p_size) {
		this.p_size = p_size;
	}
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
	public String getPh_allprice() {
		return ph_allprice;
	}
	public void setPh_allprice(String ph_allprice) {
		this.ph_allprice = ph_allprice;
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
				+ ", p_id=" + p_id + ", ph_status=" + ph_status + ", ph_allprice=" + ph_allprice + ", ph_ordernum="
				+ ph_ordernum + ", p_title=" + p_title + ", p_intro=" + p_intro + ", p_content=" + p_content
				+ ", p_price=" + p_price + ", p_img=" + p_img + ", p_adddate=" + p_adddate + ", p_type=" + p_type
				+ ", p_view=" + p_view + ", p_like=" + p_like + ", p_size=" + p_size + ", ph_allcount=" + ph_allcount
				+ "]";
	}
	
	
	

	
	
}
