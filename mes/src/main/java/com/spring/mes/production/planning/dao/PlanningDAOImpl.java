package com.spring.mes.production.planning.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.mes.production.planning.vo.PlanningVO;

@Repository("planningDAO")
public class PlanningDAOImpl implements PlanningDAO{
	@Autowired
	private SqlSession sqlSession;

	//생산계획리스트
	@Override
	public List selectAllPlanning() throws DataAccessException {
		List<PlanningVO> planList = null;
		planList = sqlSession.selectList("mapper.planning.selectAllPlanning");
		return planList;
	}
	
	//생산계획등록
	@Override
	public int insertPlanning(PlanningVO planningVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.planning.insertPlanning", planningVO);
		return result;
	}

}
