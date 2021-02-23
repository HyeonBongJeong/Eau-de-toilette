package com.kkkj.eaude.controller;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kkkj.eaude.domain.Board;
import com.kkkj.eaude.service.BoardServiceImpl;

@Controller
public class BoardController {

	private static final int LIMIT = 9;
	@Autowired
	private BoardServiceImpl boService;

	@RequestMapping(value = "insertboard.do")
	public ModelAndView insertBoard(ModelAndView mv, @RequestParam(name = "b_title") String b_title,
			@RequestParam(name = "b_type") char b_type, @RequestParam(name = "b_cont") String b_cont,
			@RequestParam(name = "b_sec") char b_sec, @RequestParam(name = "b_sec_pas") int b_sec_pas,
			MultipartHttpServletRequest request, HttpSession session) {
		Board vo = new Board();
		vo.setB_title(b_title);
		vo.setB_type(b_type);
		vo.setB_cont(b_cont);
		vo.setB_sec(b_sec);
		vo.setB_sec_pas(b_sec_pas);

		boService.insertBoard(vo);
		mv.setViewName("redirect:boardlist.do");
		return mv;
	}

	@RequestMapping(value = "boardlist.do")
	public ModelAndView boardlist(ModelAndView mv, @RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "b_type", required = false, defaultValue = "G") char b_type,
			@RequestParam(name = "keyword", required = false, defaultValue = "null") String keyword) {
		int listCount = 0;
		int startPage = 0;
		int endPage = 0;
		int currentPage = page;
		List<Board> list = new ArrayList<Board>();
		if (page % 5 == 0) {
			startPage = (page / 5 - 1) * 5 + 1;
			endPage = (page / 5) * 5;
		} else if (page % 5 != 0) {
			startPage = (page / 5) * 5 + 1;
			endPage = (page / 5 + 1) * 5;
		}
		try {
			String type = String.valueOf(b_type);
			if(type!="S") {
				listCount = boService.totalCount(type);
			}
			if (keyword != null && !keyword.equals("")) {
				listCount = boService.totalSearchCount(keyword);
				type ="S";
			}
			int maxPage = (int) ((double) listCount / LIMIT + 0.9);
			if (keyword != null && !keyword.equals("")) {
				mv.addObject("list", boService.selectSearchList(LIMIT,currentPage,keyword));
			}
			else {
				mv.addObject("list", boService.selectSearchList(currentPage, LIMIT, type));
			}
			// 한 페이지당 출력할 목록 갯수
			mv.addObject("Viewlist", boService.selectViewListBoard());
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("maxPage", maxPage);
			mv.addObject("listCount", listCount);
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		mv.setViewName("boardlist");
		return mv;
	}
}
