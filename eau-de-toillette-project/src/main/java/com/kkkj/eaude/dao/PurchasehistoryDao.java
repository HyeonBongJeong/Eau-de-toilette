package com.kkkj.eaude.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Purchasehistory;

@Repository("phDao")
public class PurchasehistoryDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void insertPurchasehistory(Purchasehistory vo) {
		
		sqlSession.insert("Purchasehistory.insertPurchasehistory",vo);
	}

}
