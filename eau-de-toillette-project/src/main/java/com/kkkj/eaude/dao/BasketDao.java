package com.kkkj.eaude.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Basket;

@Repository("bDao")
public class BasketDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public void insertBasket(Basket vo) {
		sqlSession.insert("Basket.insertBasket",vo);
		
	}

	
	
	
}
