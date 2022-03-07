package com.spring.mes.production.order.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.production.order.vo.OrderVO;

public interface OrderService {
	//작업지시리스트
	public List selectAllOrder() throws DataAccessException;
	//작업지시등록
	public int insertOrder(OrderVO orderVO) throws DataAccessException;
}
