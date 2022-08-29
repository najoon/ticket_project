package com.ticket.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.ticket.dao.TicketDAO;
import com.ticket.model.TicketVO;
import com.ticket.model.Criteria;

@Service
public class TicketServiceImpl implements TicketService {
	
	@Inject
	private TicketDAO dao;
	
	// write a post
	@Override
	public void write(TicketVO boardVO) throws Exception {
		dao.write(boardVO);
	}
	
	// Post list lookup
	@Override
	public List<TicketVO> list(Criteria cri) throws Exception{
		return dao.list(cri);
	}
	
	// Post list_Toys lookup
	@Override
	public List<TicketVO> list_Cgv(Criteria cri) throws Exception{
		return dao.list_Cgv(cri);
	}
	
	// Post list_Clothes lookup
	@Override
	public List<TicketVO> list_Lot(Criteria cri) throws Exception{
		return dao.list_Lot(cri);
	}
	
	// Post list_Fruits lookup
	@Override
	public List<TicketVO> list_Fruits(Criteria cri) throws Exception{
		return dao.list_Fruits(cri);
	}
	
	// Post list_Electronics lookup
	@Override
	public List<TicketVO> list_Mega(Criteria cri) throws Exception{
		return dao.list_Mega(cri);
	}
	
	// Count Total number of bulletin boards
	@Override
	public int listCount() throws Exception{
		return dao.listCount();
	}
	
	// Count number of posts in the category
	@Override
	public int listCount2(String category) throws Exception{
		return dao.listCount2(category);
	}
	
	// View Posts
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public TicketVO read(int id) throws Exception{
		dao.boardClick(id);
		return dao.read(id);
	}
	
	// Post Edit
	@Override
	public void update(TicketVO boardVO) throws Exception{
		dao.update(boardVO);
	}
			
	// Delete a post
	@Override
	public void delete(int id) throws Exception{
		dao.delete(id);
	}

}