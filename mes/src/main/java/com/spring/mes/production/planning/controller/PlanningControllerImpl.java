package com.spring.mes.production.planning.controller;

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

import com.spring.mes.production.planning.service.PlanningService;
import com.spring.mes.production.planning.vo.PlanningVO;

@Controller("planningController")
public class PlanningControllerImpl implements PlanningController{
	private static final Logger logger = LoggerFactory.getLogger(PlanningControllerImpl.class);

	@Autowired
	private PlanningService planningService;
	//생산계획리스트
	@Override
	@RequestMapping(value="/production/planningInfo.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView selectAllPlanning(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;test/charset=utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		List planList = planningService.selectAllPlanning();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("planList", planList);
		return mav;
	}

	//생산계획등록
	@Override
	@RequestMapping(value="/production/insertPlanning.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView insertPlanning(PlanningVO planningVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;test/charset=utf-8");
		int result = 0;
		result = planningService.insertPlanning(planningVO);
		ModelAndView mav = new ModelAndView("redirect:/production/planningInfo.do");
		return mav;
	}

}
