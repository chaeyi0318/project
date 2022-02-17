package com.spring.mes.system.service;

import java.util.List;


import org.springframework.dao.DataAccessException;

import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;

public interface SystemService {
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException;
	public int insertCompany(CompanyVO companyVO) throws DataAccessException;
	public List departmentInfo() throws DataAccessException;
	public List employeeInfo() throws DataAccessException;
}