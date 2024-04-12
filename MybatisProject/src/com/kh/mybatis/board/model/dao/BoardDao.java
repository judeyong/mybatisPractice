package com.kh.mybatis.board.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;

public class BoardDao {
		
	
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}
	
	public List<Board> selectAll(SqlSession sqlSession, PageInfo pageInfo) {
		
		// return sqlSession.selectList("boardMapper.selectAll");
		
		// 마이바티스에서는 페이징 처리를 위해 RowBounds라는 클래스를 제공함
		
		// * offset : 몇 개의 게시글을 건너 뛰고 조회할 것인지
		
		/*
		 *  ex) boardLimit이 5일 경우
		 *  
		 *  							건너뛸 숫자(offset)
		 *  currentPage :1 -> 1 ~ 5		0
		 *  currentPage :2 -> 5 ~ 10	5
		 *  currentPage :3 -> 11 ~ 14	10
		 * 
		 */
		
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		
		// RowBounds객체를 넘겨야할 경우
		// selectList()의 오버로딩된 형태 중 매개변수가 3개인 메소드를 반드시 꼭 꼭 꼭 호출해야함
		// --> 여기서 문제 ! 두 번째 자리에 넘길 값이 없음 => null값을 전달
		
		return sqlSession.selectList("boardMapper.selectAll", null, rowBounds);		
	}
	
	public int selectSearchCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.selectSearchCount", map);
	}
	
	public List<Board> selectSearchList(SqlSession sqlSession,
										HashMap<String, String> map,
										RowBounds rowBounds) {
		return sqlSession.selectList("boardMapper.selectSearchList", map, rowBounds);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
