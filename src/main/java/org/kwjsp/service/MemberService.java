package org.kwjsp.service;

import org.kwjsp.model.MemberDTO;

public interface MemberService {
	//회원가입 화면에서 회원가입 버튼을 클릭했을때 tbl_member테이블 insert
	public void MemberInsert(MemberDTO mdto);
	//login화면에서 로그인 버튼을 클릭했을때 tbl_member테이블에 select
	public MemberDTO Login(MemberDTO mdto);
}
