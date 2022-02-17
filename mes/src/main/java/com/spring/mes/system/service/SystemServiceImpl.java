package com.spring.mes.system.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mes.system.dao.SystemDAO;
import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;

@Service("systemService")
@Transactional(propagation = Propagation.REQUIRED)
public class SystemServiceImpl implements SystemService {
	@Autowired
	private SystemDAO systemDAO;
	
	@Override
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException {
		companyVO = systemDAO.companyInfo(companyVO);
		return companyVO;
	}

	@Override
	public int insertCompany(CompanyVO companyVO) throws DataAccessException {
		return systemDAO.insertCompany(companyVO);
	}

	@Override
	public List departmentInfo() throws DataAccessException {
		List deptList = null;
		deptList = systemDAO.departmentInfo();
		return deptList;
	}

	@Override
	public List employeeInfo() throws DataAccessException {
		List empList = null;
		empList = systemDAO.employeeInfo();
		return empList;
	}
}