package com.kkkj.eaude.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
public class Member {

	private String m_id;
	private String m_password;
	private String m_email;
	private String m_phone;
	private String m_addr;
	private String m_gender;
	private Date m_birth;
	private String m_grade;
	private int m_point;
	private String m_manage;
	private String m_name;
	private String reg_date;
	private int m_allpoint;
	private int reg_count;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public Date getM_birth() {
		return m_birth;
	}
	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_grade() {
		return m_grade;
	}
	public void setM_grade(String m_grade) {
		this.m_grade = m_grade;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public String getM_manage() {
		return m_manage;
	}
	public void setM_manage(String m_manage) {
		this.m_manage = m_manage;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getM_allpoint() {
		return m_allpoint;
	}
	public void setM_allpoint(int m_allpoint) {
		this.m_allpoint = m_allpoint;
	}
	public int getReg_count() {
		return reg_count;
	}
	public void setReg_count(int reg_count) {
		this.reg_count = reg_count;
	}
	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_password=" + m_password + ", m_email=" + m_email + ", m_phone=" + m_phone
				+ ", m_addr=" + m_addr + ", m_gender=" + m_gender + ", m_birth=" + m_birth + ", m_grade=" + m_grade
				+ ", m_point=" + m_point + ", m_manage=" + m_manage + ", m_name=" + m_name + ", reg_date=" + reg_date
				+ ", m_allpoint=" + m_allpoint + ", reg_count=" + reg_count + "]";
	}
	
	
	
	
	
	

}
