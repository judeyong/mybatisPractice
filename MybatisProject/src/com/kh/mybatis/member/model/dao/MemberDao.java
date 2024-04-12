package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, Member member) {
		/*
		 * int result = 0;
		 * PreparedStatement pstmt = null;
		 * String sql = prop.getPropert("");
		 * 
		 * ...
		 * 
		 */
		
		/*
		 * sqlSession이 제공하는 메소드를 통해 sql문을 찾아서 실행하고 결과를 받아 볼 수 있음
		 * 
		 * sqlSession.sql종류에맞는메소드("매퍼파일의namespace값.해당sql문의고유한id값");
		 */
		
		//int result = sqlSession.insert("memberMapper.insertMember", member);
		
		//return result;
		
		return sqlSession.insert("memberMapper.insertMember", member);
	}
	
	public Member login(SqlSession sqlSession, Member member) {
		return sqlSession.selectOne("memberMapper.login", member);
		// selectOne() : 조회결과가 존재하지 않는다면 null을 반환
	}
	
	/*
	 * 오늘 실습겸 숙제
	 * 
	 * 세미프로젝트 결과물
	 * 
	 * 회원가입 및 로그인
	 * 
	 * 두 가지 기능의 DAO단을
	 * 
	 * 오늘 배운 MyBatis활용하여 변경해보기
	 * 
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
