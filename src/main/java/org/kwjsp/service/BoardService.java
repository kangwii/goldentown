package org.kwjsp.service;

import java.util.ArrayList;

import org.kwjsp.model.BoardDTO;
import org.kwjsp.model.Criteria;

public interface BoardService {
	//게시판글쓰기
	
	public void BoardWrite(BoardDTO bdto);
	//게시판 목록리스트
	public ArrayList<BoardDTO> BoardList(Criteria cri);
	//게시판 목록 리스트에서 제목 클릭시 상세내용
	public BoardDTO BoardDetail(int bno);
	//게시판 수정
	public void BoardModify(BoardDTO bdto);
	//게시판 삭제. 
	public void BoardRemove(int bno);
	
	public int getTotalCount(Criteria cri);
}