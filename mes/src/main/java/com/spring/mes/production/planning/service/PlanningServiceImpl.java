package com.spring.mes.production.planning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mes.production.planning.dao.PlanningDAO;
import com.spring.mes.production.planning.vo.PlanningVO;

@Service("planningService")
@Transactional(propagation = Propagation.REQUIRED)

public class PlanningServiceImpl implements PlanningService{
	@Autowired
	private PlanningDAO planningDAO;
	
	//생산계획리스트
	@Override
	public List selectAllPlanning() throws DataAccessException {
		List planList = null;
		planList = planningDAO.selectAllPlanning();
		return planList;
	}

	//생산계획등록
	@Override
	public int insertPlanning(PlanningVO planningVO) throws DataAccessException {
		return planningDAO.insertPlanning(planningVO);
	}

	//생산계획팝업
	@Override
	public List planningPopup() throws DataAccessException {
		List popupList = null;
		popupList = planningDAO.planningPopup();
		return popupList;
	}
}
