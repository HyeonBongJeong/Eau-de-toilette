package com.kkkj.eaude.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Product;

@Repository("pDao")
public class ProductDao {
	@Autowired
	private SqlSession sqlSession;
	
	
	public void insertProduct(Product vo) {
		
		sqlSession.insert("Product.insertProduct",vo);
		
	}
	
	public List<Product>selectAllProductList(int startPage,int limit){
		 int startRow = (startPage-1)*limit;
		 RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Product.selectAllProductList",null,row);
	}

	public int selectProductTotalCount() {
		return sqlSession.selectOne("Product.selectProductTotalCount");
	}

	public List<Product> selectHotProductList() {
		return sqlSession.selectList("Product.selectHotProductList");
	}

	public int selectProductSearchCount(String keyword) {
		return sqlSession.selectOne("Product.selectProductSearchCount",keyword);
	}
	public int selectProductTagCount(String p_tag) {
		return sqlSession.selectOne("Product.selectProductTagCount",p_tag);
	}

	public List<Product> selectSearchList(int startPage, int limit, String keyword) {
		 int startRow = (startPage-1)*limit;
		 RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Product.selectProductSearchList",keyword,row);
	}

	public List<Product> selectTagProductList(int startPage, int limit, String p_tag) {
		 int startRow = (startPage-1)*limit;
		 RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Product.selectProductTagList",p_tag,row);
	}

	public Product selectProductDetail(int p_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Product.selectProductDetail",p_id);
	}

	public void updateProduct(Product vo) {
		sqlSession.update("Product.updateProduct",vo);
	}

	public void deleteProduct(int p_id) {
		sqlSession.update("Product.deleteProduct",p_id);

	}
}
