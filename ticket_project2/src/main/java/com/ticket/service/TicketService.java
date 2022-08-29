package com.ticket.service;

import java.util.List;

import com.ticket.model.TicketVO;
import com.ticket.model.Criteria;

public interface TicketService {
	//Write a post
	public void write(TicketVO boardVO) throws Exception;
	
	// Post list lookup
	public List<TicketVO> list(Criteria cri) throws Exception;
	
	// Post list_Toys lookup
	public List<TicketVO> list_Cgv(Criteria cri) throws Exception;
	
	// Post list_Clothes lookup
	public List<TicketVO> list_Lot(Criteria cri) throws Exception;
		
	// Post list_Fruits lookup
	public List<TicketVO> list_Fruits(Criteria cri) throws Exception;
	
	// Post list_Electronics lookup
	public List<TicketVO> list_Mega(Criteria cri) throws Exception;
	
	// Count Total number of bulletin boards
	public int listCount() throws Exception;
	
	// Count number of posts in the category
	public int listCount2(String category) throws Exception;
	
	// View Posts
	public TicketVO read(int id) throws Exception;
	
	// Post Edit
	public void update(TicketVO boardVO) throws Exception;
		
	// Delete a post
	public void delete(int id) throws Exception;
}