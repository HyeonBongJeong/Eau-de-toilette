package com.kkkj.eaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.BasketDao;
import com.kkkj.eaude.domain.Basket;


@Service("bService")
public class BasketServiceImpl implements BasketService {

	@Autowired
	private BasketDao bDao;
	
	@Override
	public void insertBasket(Basket vo) {

	bDao.insertBasket(vo);	
		
	}

}
