package com.ticket.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ticket.model.TicketVO;
import com.ticket.model.Criteria;

@Repository
public class TicketDAOImpl implements TicketDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	//Write a post
	@Override
	public void write(TicketVO ticketVO) throws Exception {
		sqlSession.insert("ticketMapper.insert", ticketVO);
	}
	// Post list lookup
	@Override
	public List<TicketVO> list(Criteria cri) throws Exception{
		
		return sqlSession.selectList("ticketMapper.listPage", cri);
	}
	
	// Post list_Toys lookup
	@Override
	public List<TicketVO> list_Cgv(Criteria cri) throws Exception{
		return sqlSession.selectList("ticketMapper.listPage_Cgv", cri);
	}
		
	// Post list_Clothes lookup
	@Override
	public List<TicketVO> list_Lot(Criteria cri) throws Exception{
		return sqlSession.selectList("ticketMapper.listPage_Lot", cri);
	}
	
	
	// Post list_Fruits lookup
	@Override
	public List<TicketVO> list_Fruits(Criteria cri) throws Exception{
		return sqlSession.selectList("ticketMapper.listPage_Fruits", cri);
	}
		
	// Post list_Electronics lookup
	@Override
	public List<TicketVO> list_Mega(Criteria cri) throws Exception{
		return sqlSession.selectList("ticketMapper.listPage_Mega", cri);
	}
	
	// Count Total number of bulletin boards
	public int listCount() throws Exception{
		return sqlSession.selectOne("ticketMapper.listCount");
	}
	
	// Count Total number of bulletin boards
	public int listCount2(String category) throws Exception{
		return sqlSession.selectOne("ticketMapper.listCount2", category);
	}
	
	// View Posts
	@Override
	public TicketVO read(int id) throws Exception{
		return sqlSession.selectOne("ticketMapper.read", id);
	}
	
	// Post Edit
	@Override
	public void update(TicketVO ticketVO) throws Exception{
		sqlSession.update("ticketMapper.update", ticketVO);
	}
		
	// Delete a post
	@Override
	public void delete(int id) throws Exception{
		sqlSession.delete("ticketMapper.delete", id);
	}
	
	// Bulletin Board Views
	public void boardClick(int id) throws Exception{
		sqlSession.update("ticketMapper.boardClick", id);
	}
}