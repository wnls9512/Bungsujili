package com.kh.bungsu.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bungsu.member.model.vo.Auth;
import com.kh.bungsu.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String selectOneMember(String memberId) {
		return sqlSession.selectOne("member.selectOneMember", memberId);
	}

	@Override
	public int joinMember(Member member) {
		return sqlSession.insert("member.joinMember", member);
	}

	@Override
	public int joinMemberAuth(Auth auth) {
		return sqlSession.insert("member.joinMemberAuth", auth);
	}
	
	
	
}
