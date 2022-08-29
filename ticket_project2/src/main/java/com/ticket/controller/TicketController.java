package com.ticket.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ticket.model.Criteria;
import com.ticket.model.PageMaker;
import com.ticket.model.ReplyVO;
import com.ticket.model.TicketVO;
import com.ticket.service.ReplyService;
import com.ticket.service.TicketService;

import lombok.Builder;








@Builder
@Controller
@RequestMapping("/ticket/*")
public class TicketController {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	@Inject
	TicketService service;
	
	@Inject
	ReplyService replyService;
	

	@RequestMapping(value = "/ticket/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
		
	}

	@RequestMapping(value = "/ticket/write", method = RequestMethod.POST)
	public String write(TicketVO ticketVO) throws Exception{
		logger.info("write");
		String category = ticketVO.getCategory();
		
		service.write(ticketVO);
		
		return "redirect:/ticket/list_"+category;
	}
		

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "ticket/list";
	}
		

	@RequestMapping(value = "/list_Cgv", method = RequestMethod.GET)
	public String list_Cgv(Model model, Criteria cri) throws Exception{
		logger.info("list_Cgv");
		
		model.addAttribute("list_Cgv",service.list_Cgv(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		String category = "Cgv";
		pageMaker.setTotalCount(service.listCount2("Cgv"));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "ticket/list_Cgv";
	}

	@RequestMapping(value = "/list_Lot", method = RequestMethod.GET)
	public String list_Lot(Model model, Criteria cri) throws Exception{
		logger.info("list_Lot");
		
		model.addAttribute("list_Lot",service.list_Lot(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount2("Clothes"));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "ticket/list_Lot";
	}
	

	@RequestMapping(value = "/list_Fruits", method = RequestMethod.GET)
	public String list_Fruits( Model model, Criteria cri) throws Exception{
		logger.info("list_Fruits");
		
		model.addAttribute("list_Fruits",service.list_Fruits(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount2("Fruits"));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "ticket/list_Fruits";
	}
	

	@RequestMapping(value = "/list_Mega", method = RequestMethod.GET)
	public String list_Mega( Model model, Criteria cri) throws Exception{
		logger.info("list_Mega");
		
		model.addAttribute("list_Mega",service.list_Mega(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.listCount2("Electronics"));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "ticket/list_Mega";
	}
	

	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(TicketVO boardVO, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read", service.read(boardVO.getId()));
		
		List<ReplyVO> replyList = replyService.readReply(boardVO.getId());
		model.addAttribute("replyList", replyList);
		
		return "ticket/readView";
	}
	

	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(TicketVO boardVO, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update", service.read(boardVO.getId()));
		
		return "ticket/updateView";
	}
	

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(TicketVO boardVO) throws Exception{
		
		logger.info("update");
		String category = boardVO.getCategory();
		service.update(boardVO);
		
		
		return "redirect:/ticket/list_"+category;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(TicketVO boardVO) throws Exception{
		
		logger.info("delete");
		service.delete(boardVO.getId());
		
		return "redirect:/ticket/list";
	}
	

	@RequestMapping(value="ticket/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo,  RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		replyService.writeReply(vo);
		
		rttr.addAttribute("id", vo.getId());
		
		return "redirect:/ticket/readView";
	}

	

}
