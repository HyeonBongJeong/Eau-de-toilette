package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.ReviewDao;
import com.kkkj.eaude.domain.Review;

@Service("rService")
public class ReviewServiceImpl {

	
	
	@Autowired
	private ReviewDao rDao;

	public void reviewWrite(Review vo) {
		
		rDao.reviewWrite(vo);
		
	}

	public List<Review> selectreviewlist(int page, int limit,int r_ref) {
		return rDao.selectreviewlist(page,limit,r_ref);
	}

	public int selectreviewcount(int r_ref) {
		return rDao.selectreviewcount(r_ref);
	}

	public Review selectReviewDetail(int r_id) {
		return rDao.selectReviewDetail(r_id);
	}

	public int commentWrite(Review rvo) {
		rDao.commentWrite(rvo);
		return rDao.selectCommentId();
	}

	public List<Review> selectCommentList(int r_id) {
		return rDao.selectCommentList(r_id);
	}
	public void deletecomment(int r_id) {
		 rDao.deletecomment(r_id);
	}
	
}
