package com.spring.mes.information.bom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.information.bom.service.BomService;
import com.spring.mes.information.bom.vo.BomVO;
import com.spring.mes.production.order.controller.OrderControllerImpl;

@Controller("bomController")
public class BomControllerImpl implements BomController {
	private static final Logger logger = LoggerFactory.getLogger(BomControllerImpl.class);
	
	@Autowired
	private BomService bomService;
	
	//BOM페이지
	@Override
	@RequestMapping(value="/information/bomPage.do", method=RequestMethod.GET)
	public ModelAndView bomPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	//BOM리스트
	@Override
	public ModelAndView bomList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	//BOM등록
	@Override
	@RequestMapping(value="/information/insertBom.do", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView insertBom(BomVO bomVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		int result = 0;
		result = bomService.insertBom(bomVO);
		ModelAndView mav = new ModelAndView("redirect:/information/bomPage.do");
		return mav;
	}
}