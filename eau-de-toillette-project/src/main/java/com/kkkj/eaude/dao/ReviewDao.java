package com.kkkj.eaude.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Review;

@Repository("rDao")
public class ReviewDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public void reviewWrite(Review vo) {
	
		sqlSession.insert("Review.reviewWrite",vo);
		
	}


	public List<Review> selectreviewlist(int page, int limit,int r_ref) {
		 int startRow = (page-1)*limit;
		 RowBounds row = new RowBounds(startRow, limit);
		 return sqlSession.selectList("Review.selectreviewlist",r_ref,row);
	}


	public int selectreviewcount(int r_ref) {
		return sqlSession.selectOne("Review.selectreviewcount",r_ref);
	}

}
