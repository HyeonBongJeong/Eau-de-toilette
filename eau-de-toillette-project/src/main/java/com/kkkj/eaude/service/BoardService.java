package com.kkkj.eaude.service;

import java.util.List;

import com.kkkj.eaude.domain.Board;

public interface BoardService {

	void insertBoard(Board vo);
	List<Board>selectAllListBoard(int startPage,int LIMIT);
	int selectTotalCountBoard();
	List<Board>selectViewListBoard();
	int totalCount(String type);
	int totalSearchCount(String keyword);
	
}
