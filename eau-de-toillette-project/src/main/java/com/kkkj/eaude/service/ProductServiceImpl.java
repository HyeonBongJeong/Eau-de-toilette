package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.common.dao.ProductDao;
import com.kkkj.eaude.domain.Product;

@Service("pService")
public class ProductServiceImpl implements ProductService{

	
	@Autowired
	private ProductDao cDao;

	@Override
	public void insertProduct(Product vo) {

		
		cDao.insertProduct(vo);
	}

	@Override
	public List<Product> selectAllProductList(int startPage,int LIMIT) {

		
		return cDao.selectAllProductList(startPage,LIMIT);
	}

	@Override
	public int selectProductTotalCount() {
		// TODO Auto-generated method stub
		return cDao.selectProductTotalCount();
	}

	@Override
	public List<Product> selectHotProductList() {
		return cDao.selectHotProductList();
	}

	public int selectProductSearchCount(String keyword) {
		// TODO Auto-generated method stub
		return cDao.selectProductSearchCount(keyword);
	}
	public int selectProductTagCount(String p_tag) {
		// TODO Auto-generated method stub
		return cDao.selectProductTagCount(p_tag);
	}

	public List<Product>  selectSearchList(int currentPage, int limit, String keyword) {
		return cDao.selectSearchList(currentPage,limit,keyword);
	}

	public List<Product>  selectTagProductList(int currentPage, int limit, String p_tag) {
		// TODO Auto-generated method stub
		return cDao.selectTagProductList(currentPage,limit,p_tag);
	}

	public Product selectProductDetail(int p_id) {
		return cDao.selectProductDetail(p_id);
	}



}
