package com.kkkj.eaude.domain;

import java.util.Date;

import org.springframework.stereotype.Repository;
@Repository("Product")
public class Product {


	private int p_id;
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
	
	public String getP_intro() {
		return p_intro;
	}
	public void setP_intro(String p_intro) {
		this.p_intro = p_intro;
	}
	public Date getP_adddate() {
		return p_adddate;
	}
	public void setP_adddate(Date p_adddate) {
		this.p_adddate = p_adddate;
	}
	public int getP_view() {
		return p_view;
	}
	public void setP_view(int p_view) {
		this.p_view = p_view;
	}
	public int getP_size() {
		return p_size;
	}
	public void setP_size(int p_size) {
		this.p_size = p_size;
	}
	private String afterPirce;
	public String getAfterPirce() {
		return afterPirce;
	}
	public void setAfterPirce(String afterPirce) {
		this.afterPirce = afterPirce;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
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

	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public int getP_like() {
		return p_like;
	}
	public void setP_like(int p_like) {
		this.p_like = p_like;
	}

	
}
