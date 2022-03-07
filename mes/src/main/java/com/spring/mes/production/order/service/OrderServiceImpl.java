package com.spring.mes.production.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.mes.production.order.dao.OrderDAO;
import com.spring.mes.production.order.vo.OrderVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	//작업지시등록리스트
	@Override
	public List selectAllOrder() throws DataAccessException {
		List orderList = null;
		orderList = orderDAO.selectAllOrder();
		return orderList;
	}

	//작업지시등록
	@Override
	public int insertOrder(OrderVO orderVO) throws DataAccessException {
		return orderDAO.insertOrder(orderVO);
	}
}
