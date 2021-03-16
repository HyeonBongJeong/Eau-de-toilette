package com.kkkj.eaude.domain;

import org.springframework.stereotype.Component;



@Component
public class Event {

	private String event_id;
	private String event_img;
	private String event_content;
	private String event_title;
	private String event_end;
	
	public String getEvent_end() {
		return event_end;
	}
	public void setEvent_end(String event_end) {
		this.event_end = event_end;
	}
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	@Override
	public String toString() {
		return "Event [event_id=" + event_id + ", event_img=" + event_img + ", event_content=" + event_content
				+ ", event_title=" + event_title + ",  event_end=" + event_end + "]";
	}
	
	
	
	
}
