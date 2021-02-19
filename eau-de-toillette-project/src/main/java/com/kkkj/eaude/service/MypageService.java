package com.kkkj.eaude.service;

import java.util.List;

import com.kkkj.eaude.domain.Member;

public interface MypageService {

	List<Member> mypage_update(Member m);

	int myPageEmailChk(Member m);

	int myPageUpdateInfo(Member m);

	int myPagePassChk(Member m);

	List<Member> myPageTop(Member m);

}
