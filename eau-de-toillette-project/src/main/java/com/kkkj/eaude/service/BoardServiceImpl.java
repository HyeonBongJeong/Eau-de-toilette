package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.BoardDao;
import com.kkkj.eaude.domain.Board;

@Service("boService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao boDao;
	
	@Override
	public void insertBoard(Board vo) {
		boDao.insertBoard(vo);
	}

	@Override
	public List<Board> selectAllListBoard(int startPage,int LIMIT) {
		return boDao.selectAllListBoard(startPage,LIMIT);
	}

	@Override
	public int selectTotalCountBoard() {
		// TODO Auto-generated method stub
		return boDao.selectTotalCountBoard();
	}

	@Override
	public List<Board> selectViewListBoard() {
		return boDao.selectViewListBoard();
	}

	public int selectSearchCountBoard(String keyword) {
		// TODO Auto-generated method stub
		return boDao.selectSearchCountBoard(keyword);
	}
	public int selectTagCountBoard(String p_tag) {
		// TODO Auto-generated method stub
		return boDao.selectTagCountBoard(p_tag);
	}

	public List<Board>  selectSearchList(int currentPage, int limit, String keyword) {
		return boDao.selectSearchList(currentPage,limit,keyword);
	}

	public List<Board>  selectTagListBoard(int currentPage, int limit, String p_tag) {
		// TODO Auto-generated method stub
		return boDao.selectTagListBoard(currentPage,limit,p_tag);
	}

	public Board selectDetailBoard(int p_id) {
		return boDao.selectDetailBoard(p_id);
	}
	@Override
	public int totalCount(String type) {
		return boDao.listCount(type);
	}
	@Override
	public int totalSearchCount(String keyword) {
		return boDao.totalSearchCount(keyword);
	}
}
