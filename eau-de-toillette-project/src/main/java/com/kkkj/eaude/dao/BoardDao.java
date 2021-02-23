package com.kkkj.eaude.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Board;

@Repository("boDao")
public class BoardDao {
	@Autowired
	private SqlSession sqlSession;

	public void insertBoard(Board vo) {
		sqlSession.insert("Board.insertBoard", vo);

	}

	public List<Board> selectAllListBoard(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Board.selectAllListBoard", null, row);
	}

	public int selectTotalCountBoard() {
		return sqlSession.selectOne("Board.selectTotalCountBoard");
	}

	public List<Board> selectViewListBoard() {
		return sqlSession.selectList("Board.selectViewListBoard");
	}

	public int selectSearchCountBoard(String keyword) {
		return sqlSession.selectOne("Board.selectSearchCountBoard", keyword);
	}

	public int selectTagCountBoard(String p_tag) {
		return sqlSession.selectOne("Board.selectTagCountBoard", p_tag);
	}

	public List<Board> selectSearchList(int startPage, int limit, String keyword) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Board.selectSearchList", keyword, row);
	}

	public List<Board> selectTagListBoard(int startPage, int limit, String p_tag) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Board.selectTagListBoard", p_tag, row);
	}

	public Board selectDetailBoard(int p_id) {
		return sqlSession.selectOne("Board.selectDetailBoard", p_id);
	}

	public int listCount(String type) {
		return sqlSession.selectOne("Board.listCount", type);
	}

	public int totalSearchCount(String keyword) {
		return sqlSession.selectOne("Board.totalSearchCount", keyword);
	}
}
