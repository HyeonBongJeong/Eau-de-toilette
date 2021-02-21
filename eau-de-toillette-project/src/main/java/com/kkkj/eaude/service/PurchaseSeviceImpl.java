package com.kkkj.eaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.PurchasehistoryDao;
import com.kkkj.eaude.domain.Purchasehistory;

@Service("phSerivce")
public class PurchaseSeviceImpl implements PurchaseService {

	@Autowired
	private PurchasehistoryDao phDao;
	
	@Override
	public void insertPurchasehistory(Purchasehistory vo) {

		phDao.insertPurchasehistory(vo);
		
	}

	
	
}
