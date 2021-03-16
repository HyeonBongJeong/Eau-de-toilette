package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.BasketDao;
import com.kkkj.eaude.dao.EventDao;
import com.kkkj.eaude.domain.Basket;
import com.kkkj.eaude.domain.Event;


@Service("eService")
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao eDao;

	@Override
	public void insertEvent(Event e) {
		eDao.insertEvent(e);
	}



	@Override
	public int eventDelete(Event e) {
		return eDao.eventDelete(e);
	}



	@Override
	public List<Event> getEventList() {
		// TODO Auto-generated method stub
		return eDao.getEventList();
	}



	@Override
	public List<Event> getEventLists(int currentPage, int limit) {
		return eDao.getEventLists(currentPage, limit);
	}



	@Override
	public int totalEventCount() {
		return eDao.totalEventCount();
	}



	@Override
	public List<Event> eventDetailList(String page) {
		return eDao.eventDetailList(page);
	}



	@Override
	public void eventUpdate(Event e) {
		eDao.eventUpdate(e);
		
	}



	

	
	
	

}
