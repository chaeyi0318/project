package com.spring.mes.system.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;
import com.spring.mes.system.vo.ItemVO;

public interface SystemController {
	//회사정보
	public ModelAndView companyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//회사등록
	public ModelAndView insertCompany(@ModelAttribute("company") CompanyVO companyVO, 
									HttpServletRequest request, HttpServletResponse response) throws Exception;
	//부서정보
	public ModelAndView departmentInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//부서등록
	public ModelAndView insertDept(@ModelAttribute("dept") DeptVO deptVO,
									HttpServletRequest request, HttpServletResponse response) throws Exception;
	//사원정보
	public ModelAndView employeeInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//거래처정보
	public ModelAndView customerInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//거래처등록
	public ModelAndView insertCustomer(@ModelAttribute("customer") CustomerVO customerVO,
										HttpServletRequest request, HttpServletResponse response) throws Exception;
	//품목정보
	public ModelAndView itemInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//품목등록
	public ModelAndView insertItem(@ModelAttribute("item") ItemVO itemVO,
			 						HttpServletRequest request, HttpServletResponse response) throws Exception;
	//창고정보
	public ModelAndView storageInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//공정정보
	public ModelAndView processInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//검사유형정보
	public ModelAndView qualityTestInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
}