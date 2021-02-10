package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kkkj.eaude.domain.Product;

public interface ProductService {

	
	
	void insertProduct(Product vo);
	List<Product>selectAllProductList(int startPage,int LIMIT);
	int selectProductTotalCount();
	List<Product>selectHotProductList();

}
