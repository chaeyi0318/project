package com.spring.mes.information.bom.vo;

import org.springframework.stereotype.Component;

@Component("bomVO")
public class BomVO {
	private String parentItem;		//모품목
	private String itemCode;		//품번
	private String itemName;		//품명
	private String standard;		//규격
	private String unit;			//단위
	private String quantity;		//정미수량
	private String loss;			//loss
	private String needQuantity;	//필요수량
	private String startDate;		//시작일자
	private String endDate;			//종료일자
	private String useCheck;		//사용구분
	private String type;			//계정구분
	private String obtain;			//조달구분
	private String note;			//비고
	
	public BomVO() {
		
	}
	
	public String getParentItem() {
		return parentItem;
	}
	public void setParentItem(String parentItem) {
		this.parentItem = parentItem;
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
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getLoss() {
		return loss;
	}
	public void setLoss(String loss) {
		this.loss = loss;
	}
	public String getNeedQuantity() {
		return needQuantity;
	}
	public void setNeedQuantity(String needQuantity) {
		this.needQuantity = needQuantity;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getUseCheck() {
		return useCheck;
	}
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
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
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}