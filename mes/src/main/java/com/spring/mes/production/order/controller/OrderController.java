package com.spring.mes.production.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.production.order.vo.OrderVO;

public interface OrderController {
	//작업지시리스트
	public ModelAndView selectAllOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//작업지시등록
	public ModelAndView insertOrder(@ModelAttribute("order") OrderVO orderVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
