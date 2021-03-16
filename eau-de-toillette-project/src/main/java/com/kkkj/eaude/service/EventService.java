package com.kkkj.eaude.service;

import java.util.List;

import com.kkkj.eaude.domain.Event;

public interface EventService {

	void insertEvent(Event e);

	List<Event> getEventList();

	int eventDelete(Event e);

	List<Event> getEventLists(int currentPage, int limit);

	int totalEventCount();

	List<Event> eventDetailList(String page);

	void eventUpdate(Event e);


	

}
