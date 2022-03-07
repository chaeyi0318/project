package com.spring.mes.production.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.mes.production.order.vo.OrderVO;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//작업지시리스트
	@Override
	public List selectAllOrder() throws DataAccessException {
		List<OrderVO> orderList = null;
		orderList = sqlSession.selectList("mapper.order.selectAllOrder");
		return orderList;
	}

	//작업지시등록
	@Override
	public int insertOrder(OrderVO orderVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.order.insertOrder", orderVO);
		return result;
	}
}
