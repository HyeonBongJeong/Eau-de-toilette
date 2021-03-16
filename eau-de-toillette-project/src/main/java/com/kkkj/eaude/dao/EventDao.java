package com.kkkj.eaude.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Basket;
import com.kkkj.eaude.domain.Event;

@Repository("eDao")
public class EventDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertEvent(Event e) {
		sqlSession.insert("Event.insertEvent",e);
		
	}

	public List<Event> getEventList() {
		return sqlSession.selectList("Event.getEventList");
	}

	public int eventDelete(Event e) {
		// TODO Auto-generated method stub
		return sqlSession.delete("Event.eventDelete",e);
	}

	public List<Event> getEventLists(int currentPage, int limit) {
		int startRow = (currentPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Event.getEventLists", null, row);
	}

	public int totalEventCount() {
		return sqlSession.selectOne("Event.totalEventCount");
	}

	public List<Event> eventDetailList(String page) {
		return sqlSession.selectList("Event.eventDetailList",page);
	}

	public void eventUpdate(Event e) {
		sqlSession.update("Event.eventUpdate",e);
		
	}
	
	
	

	
	
	
}
