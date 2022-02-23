package com.spring.mes.system.vo;

import org.springframework.stereotype.Component;

@Component("itemVO")
public class ItemVO {
	private String	itemCode;		//품번
	private String	itemName;		//품명
	private String	standard;		//규격
	private String	type;			//계정구분
	private String	obtain;			//조달구분
	private String	inventoryUnit;		//재고단위
	private String	testCheck;		//검사여부
	private String	useCheck;		//사용여부
	private int	leadTime;		//leadTime
	private int	stock;			//안전재고량
	private int	production;		//일별생산량
	
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
