package com.kkkj.eaude.domain;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Review {

	private int r_id;
	private String r_img;
	@JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "yyyy-MM-dd",timezone = "Asia/Seoul")
	private Date r_adddate;
	private int r_ref;
	private String r_content;
	private String r_title;
	private String m_id;
	private int p_id;
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getR_title() {
		return r_title;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public Date getR_adddate() {
		return r_adddate;
	}
	public void setR_adddate(Date r_adddate) {
		this.r_adddate = r_adddate;
	}
	public int getR_ref() {
		return r_ref;
	}
	public void setR_ref(int r_ref) {
		this.r_ref = r_ref;
	}
	
	

}
