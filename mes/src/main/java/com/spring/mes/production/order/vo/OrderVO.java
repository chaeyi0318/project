package com.spring.mes.production.order.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("orderVO")
public class OrderVO {
	private String orderCode;		//작업지시번호
	private Date orderDate;		//지시일
	private Date dueDate;		//납기일
	private String itemCode;		//품번
	private String itemName;		//품명
	private String standard;		//규격
	private String unit;		//단위
	private int orderQuantity;		//지시수량
	private String state;		//상태
	private String testCheck;		//검사
	private String customerName;		//고객
	private String equipment;		//생산설비
	private String team;		//작업팀
	private String processGroup;		//작업조
	private String note;		//비고
	
	public OrderVO() {
		
	}
	
	public OrderVO(String orderCode, Date orderDate, Date dueDate, String itemCode, String itemName, String standard, String unit, int orderQuantity, String state,       
					String testCheck, String customerName, String equipment, String team, String processGroup, String note) {
		this.orderCode = orderCode;
		this.orderDate = orderDate;
		this.dueDate = dueDate;
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.standard = standard;
		this.unit = unit;
		this.orderQuantity = orderQuantity; 
		this.state = state;
		this.testCheck = testCheck;
		this.customerName = customerName;
		this.equipment = equipment;
		this.team = team;
		this.processGroup = processGroup;
		this.note = note;
	}
	
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTestCheck() {
		return testCheck;
	}
	public void setTestCheck(String testCheck) {
		this.testCheck = testCheck;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getEquipment() {
		return equipment;
	}
	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getProcessGroup() {
		return processGroup;
	}
	public void setProcessGroup(String processGroup) {
		this.processGroup = processGroup;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}