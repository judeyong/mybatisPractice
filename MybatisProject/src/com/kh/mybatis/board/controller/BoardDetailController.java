package com.kh.mybatis.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.Board;

/**
 * Servlet implementation class BoardDetailController
 */
@WebServlet("/detail.board")
public class BoardDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// a & b
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		Board board = new BoardServiceImpl().boardAndReply(boardNo);
		
		System.out.println(board);
		
		// 1. 조회수 증가 (UPDATE)
		if(new BoardServiceImpl().increaseCount(boardNo) > 0) {

			// 2. 해당 게시글을 조회(SELECT)
			request.setAttribute("board", 
					new BoardServiceImpl().findById(boardNo));
			
			request.setAttribute("replyList", 
					new BoardServiceImpl().selectReplyList(boardNo));
		}
		
		request.getRequestDispatcher("WEB-INF/views/board/boardDetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
