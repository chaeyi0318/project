package com.spring.mes.production.planning.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.production.planning.vo.PlanningVO;

public interface PlanningService {
	//생산계획리스트
	public List selectAllPlanning() throws DataAccessException;
	//생산계획등록
	public int insertPlanning(PlanningVO planningVO) throws DataAccessException;
	//생산계획팝업
	public List planningPopup() throws DataAccessException;
}
