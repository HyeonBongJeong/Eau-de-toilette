package com.kkkj.eaude.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Data 
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
	private int m_allpoint;

}
