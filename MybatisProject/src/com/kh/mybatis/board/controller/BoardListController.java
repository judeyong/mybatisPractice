package com.kh.mybatis.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.common.template.Pagination;

/**
 * Servlet implementation class BoardListController
 */
@WebServlet("/list.board")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// -- 페이징 처리 --
		int listCount = new BoardServiceImpl().selectListCount();
		int currentPage = Integer.parseInt(request.getParameter("page"));
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pageInfo =
		Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		List<Board> boardList = new BoardServiceImpl().selectAll(pageInfo);
		
		// System.out.println(boardList);
		
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("boardList", boardList);
		
		request.getRequestDispatcher("WEB-INF/views/board/boardList.jsp")
		.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
