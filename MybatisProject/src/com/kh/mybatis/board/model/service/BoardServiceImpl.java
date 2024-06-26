package com.kh.mybatis.board.model.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.dao.BoardDao;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.Reply;
import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.common.template.Template;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDao();
	
	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = boardDao.selectListCount(sqlSession);
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public List<Board> selectAll(PageInfo pageInfo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		List<Board> boardList = boardDao.selectAll(sqlSession, pageInfo);
		
		sqlSession.close();
		
		return boardList;
	}
	
	
	public int selectSearchCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int searchCount = boardDao.selectSearchCount(sqlSession, map);
		
		sqlSession.close();
		
		return searchCount;
	}
	
	public List<Board> selectSearchList(HashMap<String, String> map, PageInfo pageInfo) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		RowBounds rowBounds = new RowBounds(
											((pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit())
											, pageInfo.getBoardLimit()
											);
		
		List<Board> searchList = boardDao.selectSearchList(sqlSession, map, rowBounds);
		
		sqlSession.close();
		
		return searchList;
	}
	
	public int increaseCount(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = boardDao.increaseCount(sqlSession, boardNo);
		
		if(result > 0) sqlSession.commit();
			
		sqlSession.close();
		
		return result;
	}
	
	public Board findById(int boardNo) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		Board board = boardDao.findById(sqlSession, boardNo);
		
		sqlSession.close();
		
		return board;
	}
	
	public List<Reply> selectReplyList(int boardNo){
		SqlSession sqlSession = Template.getSqlSession();
		
		List<Reply> replyList = boardDao.selectReplyList(sqlSession, boardNo);
		
		sqlSession.close();
		
		return replyList;
	}
	
	public Board boardAndReply(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Board board = boardDao.boardAndReply(sqlSession, boardNo);
		
		sqlSession.close();
		
		return board;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
