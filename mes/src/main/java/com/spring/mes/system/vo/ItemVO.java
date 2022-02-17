package com.spring.mes.system.vo;

import org.springframework.stereotype.Component;

@Component("itemVO")
public class ItemVO {
	private String	itemCode;
	private String	itemName;
	private String	standard;
	private String	type;
	private String	obtain;
	private String	inventoryUnit;
	private String	testCheck;
	private String	useCheck;
	private int	leadTime;
	private int	stock;
	private int	production;
	
	public ItemVO() {
		
	}
	
	public ItemVO(String itemCode, String itemName, String standard, String type, String obtain, String inventoryUnit, String testCheck,
				  String useCheck, int leadTime, int stock, int production) {
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.standard = standard;
		this.type = type;
		this.obtain = obtain;
		this.inventoryUnit = inventoryUnit;
		this.testCheck = testCheck;
		this.useCheck = useCheck;
		this.leadTime = leadTime;
		this.stock = stock;
		this.production = production;
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
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getObtain() {
		return obtain;
	}
	
	public void setObtain(String obtain) {
		this.obtain = obtain;
	}
	
	public String getInventoryUnit() {
		return inventoryUnit;
	}
	
	public void setInventoryUnit(String inventoryUnit) {
		this.inventoryUnit = inventoryUnit;
	}
	
	public String getTestCheck() {
		return testCheck;
	}
	
	public void setTestCheck(String testCheck) {
		this.testCheck = testCheck;
	}
	
	public String getUseCheck() {
		return useCheck;
	}
	
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
	}
	
	public int getLeadTime() {
		return leadTime;
	}
	
	public void setLeadTime(int leadTime) {
		this.leadTime = leadTime;
	}
	
	public int getStock() {
		return stock;
	}
	
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	public int getProduction() {
		return production;
	}
	
	public void setProduction(int production) {
		this.production = production;
	}
}
