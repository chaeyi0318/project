package com.spring.mes.production.planning.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.production.planning.vo.PlanningVO;

public interface PlanningController {
	//생산계획리스트
	public ModelAndView selectAllPlanning(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//생산계획등록
	public ModelAndView insertPlanning(@ModelAttribute("plan") PlanningVO planningVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	//생산계획팝업
	public ModelAndView planningPopup(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
