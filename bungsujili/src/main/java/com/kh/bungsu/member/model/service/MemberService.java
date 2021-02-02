package com.kh.bungsu.member.model.service;

import com.kh.bungsu.member.model.vo.Member;

public interface MemberService {

	Member selectOneMember(String memberId);

	int joinMember(Member member);


}
