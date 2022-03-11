package com.spring.mes.production.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.production.order.service.OrderService;
import com.spring.mes.production.order.vo.OrderVO;
import com.spring.mes.production.planning.controller.PlanningControllerImpl;

@Controller("orderController")
public class OrderControllerImpl implements OrderController{
	private static final Logger logger = LoggerFactory.getLogger(OrderControllerImpl.class);
	
	@Autowired
	private OrderService orderService;
	
	//작업지시리스트
	@Override
	@RequestMapping(value={"/production/orderInfo.do", "/production/decideInfo.do"}, method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView selectAllOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;text/charset=utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		List orderList = orderService.selectAllOrder();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("orderList", orderList);
		return mav;
	}

	//작업지시등록
	@Override
	@RequestMapping(value="/production/insertOrder.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView insertOrder(OrderVO orderVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;text/charset=utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		int result = 0;
		result = orderService.insertOrder(orderVO);
		ModelAndView mav = new ModelAndView("redirect:/production/orderInfo.do");
		return mav;
	}
}
