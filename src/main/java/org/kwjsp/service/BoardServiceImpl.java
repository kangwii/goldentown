package org.kwjsp.service;

import java.util.ArrayList;

import org.kwjsp.dao.BoardDao;
import org.kwjsp.model.BoardDTO;
import org.kwjsp.model.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDao bdao;
	public void BoardWrite(BoardDTO bdto) {
		//로직
		bdao.BoardWrite(bdto);
	}	
	public ArrayList<BoardDTO> BoardList(Criteria cri) {
		//로직
		return bdao.BoardList(cri);		
	}
	@Transactional
	public BoardDTO BoardDetail(int bno) {
		//로직
		//tbl_board 테이블의 count컬럼의 +1 업데이트
		bdao.BoardCntup(bno);
		//제목을 클릭했을때 tbl_board상세 내용을 조회
		return bdao.BoardDetail(bno);		
	}
	
	public void BoardModify(BoardDTO bdto) {
		//로직
		bdao.BoardModify(bdto);
	}

	public void BoardRemove(int bno) {
		//로직
		bdao.BoardRemove(bno);
	}
	
	public int getTotalCount(Criteria cri) {
		
		return bdao.getTotalCount(cri);
	}
}
