package org.kwjsp.controller;

import javax.servlet.http.HttpSession;

import org.kwjsp.dao.MemberDao;
import org.kwjsp.model.MemberDTO;
import org.kwjsp.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@Autowired
	//MemberDao mdad= new MemberDao;
	MemberService mservice;
	//localhost:8080/member/member주소로
	//member폴더안에 있는 member.jsp를 실행
	@RequestMapping(value="member",  method = RequestMethod.GET)
	public String memberGet() {
		return "member/member";
	}		
		
		//member.jsp에서 사용자가 입력한 아이디, 비밀번호,이름을 
		//데이터를 수집. 
	
	@RequestMapping(value="member/memberWrite", method = RequestMethod.POST)
	public String memberPost(MemberDTO mdto) {
		mservice.MemberInsert(mdto);
		return "redirect:../member/login";
	}
	//localhost:8080/member/login주소로
	//member폴더안에 있는 login.jsp를 실행
	@RequestMapping(value="member/login", method = RequestMethod.GET)
	public void loginGet() {}
	
	
	@RequestMapping(value="member/login", method = RequestMethod.POST)
										//세션 사용하겠다. 
	public String loginPost(MemberDTO mdto, HttpSession session) {
		String result="";
		MemberDTO log=mservice.Login(mdto);
		//select(mservice.Login(mdto))된 결과가있으면(null)아니면
		if(log!=null) {
			//session영역에 select(mservice.Login(mdto)된 결과 member변수에저장
			session.setAttribute("session",mservice.Login(mdto));
			//메인페이지(index.jsp)이동.else쪽에도 return이 있어야함.  
			//return "redirect:/";
			result="redirect:/index";

		}else {
			result="redirect:/member/login";	
		}		
		return result;
		
		//그렇지 않으면 (select(mservice.Login(mdto))된 결과가 없으면-null아니면)
		}
	@RequestMapping(value="member/logout", method = RequestMethod.GET)
	public String logot(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
	}
}
