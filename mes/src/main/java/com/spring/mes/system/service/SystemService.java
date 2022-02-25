package com.spring.mes.system.service;

import java.util.List;


import org.springframework.dao.DataAccessException;

import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;
import com.spring.mes.system.vo.ItemVO;

public interface SystemService {
	//회사정보
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException;
	//회사등록
	public int insertCompany(CompanyVO companyVO) throws DataAccessException;
	//회사수정
	public int updateCompany(CompanyVO companyVO) throws DataAccessException;
	//회사삭제
	public int deleteCompany(CompanyVO companyVO) throws DataAccessException;
	//부서정보
	public List departmentInfo() throws DataAccessException;
	//부서등록
	public int insertDept(DeptVO deptVO) throws DataAccessException;
	//사원정보
	public List employeeInfo() throws DataAccessException;
	//거래처정보
	public List customerInfo() throws DataAccessException;
	//거래처등록
	public int insertCustomer(CustomerVO customerVO) throws DataAccessException;
	//품목정보
	public List itemInfo() throws DataAccessException;
	//품목등록
	public int insertItem(ItemVO itemVO) throws DataAccessException;
	//창고정보
	public List processInfo() throws DataAccessException;
	//공정정보
	public List storageInfo() throws DataAccessException;
	//검사유형정보
	public List qualityTestInfo() throws DataAccessException;
}