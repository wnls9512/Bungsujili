package com.kh.bungsu.member.model.service;

import com.kh.bungsu.member.model.vo.Auth;
import com.kh.bungsu.member.model.vo.Member;

public interface MemberService {

	String selectOneMember(String memberId);

	int joinMember(Member member);

	int joinMemberAuth(Auth auth);

}
