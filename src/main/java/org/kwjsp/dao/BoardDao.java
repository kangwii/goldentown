package org.kwjsp.dao;

import java.util.ArrayList;

import org.kwjsp.model.BoardDTO;
import org.kwjsp.model.Criteria;

public interface BoardDao {
	//게시판 글쓰기를 위한 추상 메서드
	public void BoardWrite(BoardDTO bdto);
	//게시판 목록 리스트를 불러오기위한 추상 메서드
	public ArrayList<BoardDTO> BoardList(Criteria cri);
	//게시판 상세내용. 
	public BoardDTO BoardDetail(int bno);
	//게시판 상세내용.+조회수 update
	public void BoardCntup(int bno);
	//게시판 수정내용
	public void BoardModify(BoardDTO bdto);
	//게시판 글 삭제
	public void BoardRemove(int bdto);
	
	public int getTotalCount(Criteria cri);
}
