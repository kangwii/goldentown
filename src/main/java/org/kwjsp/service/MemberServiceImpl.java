package org.kwjsp.service;

import org.kwjsp.dao.MemberDao;
import org.kwjsp.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao mdao;
	
	//회원가입 화면에서 회원가입 버튼을 클릭했을때 tbl_member테이블 insert
		public void MemberInsert(MemberDTO mdto) {
			//해당 dao연결
			mdao.MemberInsert(mdto);
		};
		//login화면에서 로그인 버튼을 클릭했을때 tbl_member테이블에 select
		public MemberDTO Login(MemberDTO mdto) {
			//해당dao연결
			return mdao.Login(mdto);
		};
}
