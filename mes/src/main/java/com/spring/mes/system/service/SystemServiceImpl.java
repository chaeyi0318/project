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

	@Override
	public List customerInfo() throws DataAccessException {
		List customerList = null;
		customerList = systemDAO.customerInfo();
		return customerList;
	}

	@Override
	public List itemInfo() throws DataAccessException {
		List itemList = null;
		itemList = systemDAO.itemInfo();
		return itemList;
	}

	@Override
	public List processInfo() throws DataAccessException {
		List processList = null;
		processList = systemDAO.processInfo();
		return processList;
	}

	@Override
	public List storageInfo() throws DataAccessException {
		List storageList = null;
		storageList = systemDAO.storageInfo();
		return storageList;
	}

	@Override
	public List qualityTestInfo() throws DataAccessException {
		List qualityTestList = null;
		qualityTestList = systemDAO.qualityTestInfo();
		return qualityTestList;
	}

	@Override
	public int insertDept(DeptVO deptVO) throws DataAccessException {
		return systemDAO.insertDept(deptVO);
	}
}