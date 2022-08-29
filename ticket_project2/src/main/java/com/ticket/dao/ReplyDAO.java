package com.ticket.dao;

import java.util.List;

import com.ticket.model.ReplyVO;

public interface ReplyDAO {
	
	// View comments
	public List<ReplyVO> readReply(int id) throws Exception;
	
	// Write comments
	public void writeReply(ReplyVO vo) throws Exception;
	
	// Count comments
	public int countReply(int id) throws Exception;

}
