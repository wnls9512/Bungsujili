package com.kh.bungsu.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bungsu.member.model.dao.MemberDAO;
import com.kh.bungsu.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public Member selectOneMember(String memberId) {
		return memberDAO.selectOneMember(memberId);
	}

	@Override
	public int joinMember(Member member) {
		return memberDAO.joinMember(member);
	}

	
	
	
}
