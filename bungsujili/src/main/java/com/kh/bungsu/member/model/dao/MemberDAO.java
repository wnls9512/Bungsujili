package com.kh.bungsu.member.model.dao;

import com.kh.bungsu.member.model.vo.Auth;
import com.kh.bungsu.member.model.vo.Member;

public interface MemberDAO {

	String selectOneMember(String memberId);

	int joinMember(Member member);

	int joinMemberAuth(Auth auth);

}
