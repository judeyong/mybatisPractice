package com.kh.mybatis.board.model.service;

import java.util.List;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;

public interface BoardService {
	
	// 게시글 관련 서비스
	
	// 1. 목록조회 (페이징처리)
	int selectListCount();
	
	List<Board> selectAll(PageInfo pageInfo);
	
	
	// 2. 상세조회
	
	// 3. 게시글 검색
	
	
	
	
}
