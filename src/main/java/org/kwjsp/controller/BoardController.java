package org.kwjsp.controller;


import org.kwjsp.model.BoardDTO;
import org.kwjsp.model.Criteria;
import org.kwjsp.model.PageDTO;
import org.kwjsp.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	@Autowired
//	BoardDao bdao;
	BoardService bservice;
	
	
	// 게시판 글쓰기 화면을 실행하기 위함.
	@RequestMapping(value="board/write", method=RequestMethod.GET)
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	// 게시판 글쓰기 화면에서 실제로 글쓰기가 이루어지는 것
	@RequestMapping(value="board/write", method=RequestMethod.POST)
	public String boardWritePost(BoardDTO bdto) {
		bservice.BoardWrite(bdto);
//		벨류 값이 똑같으면 안됨
		return "redirect:/board/list";
		
//		return "board/boardWrite";
	}
	// 게시판 글 목록 리스트 화면을 실행하기 위한 것
	@RequestMapping(value="board/list", method=RequestMethod.GET)
	// Model : Controller에서 .jsp로 데이터를 전송하는 역활
	public String boardListGet(Model model, Criteria cri) {
		System.out.println(bservice.BoardList(cri));
		// model.addAttribute(jsp로 데이터 보내고자하는 변수명, jsp로 데이터를 보내)
		model.addAttribute("blist", bservice.BoardList(cri));
		
		//boardList.jsp에 페이징 처리를 하기 위한 데이터를 boardList.jsp에 보내고자 함
		model.addAttribute("pageMaker", new PageDTO(cri, bservice.getTotalCount(cri)));
		return "board/boardList";
	}
	
	@RequestMapping(value="board/detail", method=RequestMethod.GET)
	public String boardDetailGet(int bno, Model model) {
		System.out.println(bno);
		model.addAttribute("bdetail", bservice.BoardDetail(bno));
		return "board/boardDetail";
	}
	
	// boardDetail.jsp에서 수정버튼을 클릭했을 때 수정 할 수 있는 화면으로 이동
	@RequestMapping(value="board/modify", method=RequestMethod.GET)
	public String boardModifyGet(int bno, Model model) {
		System.out.println(bno);
		model.addAttribute("modify", bservice.BoardDetail(bno));
		return "board/boardModify";
	}
	
	// boardModify.jsp에서 수정버튼을 누르면 실제 update가 실행되게 하기
	@RequestMapping(value="board/modify", method=RequestMethod.POST)
	public String boardModifyGet(BoardDTO bdto) {
//		return "";
		// update할 수 있게 DAO연결
		bservice.BoardModify(bdto);
		// boardDetail.jsp를 실행
		// detail의 select결과를 실행하고 난 후, boardDetail.jsp를 실행 (redirect)
		return "redirect:/board/detail?bno="+bdto.getBno();
	}
	
	// boardDetail.jsp에서 삭제버튼을 클릭하면 실제 delete가 실행 되게 하기
	@RequestMapping(value="board/remove", method=RequestMethod.GET)
	public String boardRemoveGet(int bno) {
		bservice.BoardRemove(bno);
		// detail의 select결과를 실행하고 난 후, boardList.jsp를 실행 (redirect)
		return "redirect:/board/list";
	}
	
	@RequestMapping({"/get"})
	public void get(@RequestParam("bno") int bno, Model model) {
		//log.info("get");
		System.out.println("get");
		model.addAttribute("board", bservice.BoardDetail(bno));
	}
	
}
