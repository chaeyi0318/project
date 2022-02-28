package com.spring.mes.production.planning.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.production.planning.vo.PlanningVO;

public interface PlanningDAO {
	//생산계획리스트
	public List selectAllPlanning() throws DataAccessException;
	//생산계획등록
	public int insertPlanning(PlanningVO planningVO) throws DataAccessException;
}
