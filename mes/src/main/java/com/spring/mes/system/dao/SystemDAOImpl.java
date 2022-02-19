package com.spring.mes.system.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;
import com.spring.mes.system.vo.EmpVO;
import com.spring.mes.system.vo.ItemVO;
import com.spring.mes.system.vo.ProcessVO;
import com.spring.mes.system.vo.QualityTestVO;
import com.spring.mes.system.vo.StorageVO;

@Repository("systemDAO")
public class SystemDAOImpl implements SystemDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException {
		return sqlSession.selectOne("mapper.company.selectCompany");
	}

	@Override
	public int insertCompany(CompanyVO companyVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.company.insertCompany", companyVO);
		return result;
	}

	@Override
	public List departmentInfo() throws DataAccessException {
		List<DeptVO> deptList = null;
		deptList = sqlSession.selectList("mapper.dept.selectAllDepartment");
		return deptList;
	}

	@Override
	public List employeeInfo() throws DataAccessException {
		List<EmpVO> empList = null;
		empList = sqlSession.selectList("mapper.emp.selectAllEmployee");
		return empList;
	}

	@Override
	public List customerInfo() throws DataAccessException {
		List<CustomerVO> customerList = null;
		customerList = sqlSession.selectList("mapper.customer.selectAllCustomer");
		return customerList;
	}

	@Override
	public List itemInfo() throws DataAccessException {
		List<ItemVO> itemList = null;
		itemList = sqlSession.selectList("mapper.item.selectAllItem");
		return itemList;
	}

	@Override
	public List processInfo() throws DataAccessException {
		List<ProcessVO> processList = null;
		processList = sqlSession.selectList("mapper.process.selectAllProcess");
		return processList;
	}

	@Override
	public List storageInfo() throws DataAccessException {
		List<StorageVO> storageList = null;
		storageList = sqlSession.selectList("mapper.storage.selectAllStorage");
		return storageList;
	}

	@Override
	public List qualityTestInfo() throws DataAccessException {
		List<QualityTestVO> qualityTestList = null;
		qualityTestList = sqlSession.selectList("mapper.qualityTest.selectAllQualityTest");
		return qualityTestList;
	}

	@Override
	public int insertDept(DeptVO deptVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.dept.insertDepartment", deptVO);
		return result;
	}
}