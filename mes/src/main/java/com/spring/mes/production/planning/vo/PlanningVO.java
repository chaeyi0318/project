package com.spring.mes.production.planning.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("planningVO")
public class PlanningVO {
	private String itemCode;
	private String itemName;
	private String standard;
	private String inventoryUnit;
	private int	output;
	private int	turn;
	private Date schedule;
	private int	quantity;
	private String note;

	public PlanningVO() {
		
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

	public String getInventoryUnit() {
		return inventoryUnit;
	}

	public void setInventoryUnit(String inventoryUnit) {
		this.inventoryUnit = inventoryUnit;
	}

	public int getOutput() {
		return output;
	}

	public void setOutput(int output) {
		this.output = output;
	}

	public int getTurn() {
		return turn;
	}

	public void setTurn(int turn) {
		this.turn = turn;
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