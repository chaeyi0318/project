package com.spring.mes.production.planning.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("planningVO")
public class PlanningVO {
	private String planCode;		//계획코드
	private String itemCode;		//품번
	private String itemName;		//품명
	private String standard;		//규격
	private String unit;		//단위
	private int	output;		//일생산량
	private Date schedule;		//작업예정일
	private int	quantity;		//수량
	private String note;		//비고

	public PlanningVO() {
		
	}
	
	public String getPlanCode() {
		return planCode;
	}
	
	public void setPlanCode(String planCode) {
		this.planCode = planCode;
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

	public int getOutput() {
		return output;
	}

	public void setOutput(int output) {
		this.output = output;
	}

	public Date getSchedule() {
		return schedule;
	}

	public void setSchedule(Date schedule) {
		this.schedule = schedule;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}