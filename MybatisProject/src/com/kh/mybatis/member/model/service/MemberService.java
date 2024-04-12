package com.kh.mybatis.member.model.service;

import com.kh.mybatis.member.model.vo.Member;

public interface MemberService {
	
	// 회원가입
	int insertMember(Member member);
	
	// 로그인
	Member login(Member member);
	
}
