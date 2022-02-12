package com.spring.mes.system.vo;

import java.sql.Date;

public class CustomerVO {
	private String	customerCode;
	private String	customerName;
	private String	BRNum;
	private String	forign;
	private String	residentNum;
	private String	CEOName;
	private String	businessCondition;
	private String	businessType;
	private int	zipCode;
	private String	address;
	private String	addressDetails;
	private String	comNumber;
	private String	faxNumber;
	private String	email;
	private Date	startDate;
	private Date	endDate;
	private String	useCheck;
	
	public CustomerVO() {
		
	}
	
	public CustomerVO(String customerCode, String customerName, String BRNum, String forign, String residentNum, String CEOName, String businessCondition,
				  String businessType, int zipCode, String address, String addressDetails, String comNumber,String faxNumber, String email, Date startDate,
				  Date endDate, String useCheck) {
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.BRNum = BRNum;
		this.forign = forign;
		this.residentNum = residentNum;
		this.CEOName = CEOName;
		this.businessCondition = businessCondition;
		this.businessType = businessType;
		this.zipCode = zipCode;
		this.address = address;
		this.addressDetails = addressDetails;
		this.comNumber = comNumber;
		this.faxNumber = faxNumber;
		this.email = email;
		this.startDate = startDate;
		this.endDate = endDate;
		this.useCheck = useCheck;
	}
	
	public String getCutomerCode() {
		return customerCode;
	}
	
	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getBRNum() {
		return BRNum;
	}
	
	public void setBRNum(String BRNum) {
		this.BRNum = BRNum;
	}
	
	public String getForign() {
		return forign;
	}
	
	public void setForign(String forign) {
		this.forign = forign;
	}
	
	public String getResidentNum() {
		return residentNum;
	}
	
	public void setResidentNum(String residentNum) {
		this.residentNum = residentNum;
	}
	
	public String getCEOName() {
		return CEOName;
	}
	
	public void setCEOName(String CEOName) {
		this.CEOName = CEOName;
	}
	
	public String getBusinessCondition() {
		return businessCondition;
	}
	
	public void setBusinessCondition(String businessCondition) {
		this.businessCondition = businessCondition;
	}
	
	public String getBusinessType() {
		return businessType;
	}
	
	public void setBusinessType(String businessType) {
		this.businessType = businessType;
	}
	
	public int getZipCode() {
		return zipCode;
	}
	
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getAddressDetails() {
		return addressDetails;
	}
	
	public void setAddressDetails(String addressDetails) {
		this.addressDetails = addressDetails;
	}
	
	public String getComNumber() {
		return comNumber;
	}
	
	public void setComNumber(String comNumber) {
		this.comNumber = comNumber;
	}
	
	public String getFaxNumber() {
		return faxNumber;
	}
	
	public void setFaxNumber(String faxNumber) {
		this.faxNumber = faxNumber;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	public Date getEndDate() {
		return endDate;
	}
	
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public String getUseCheck() {
		return useCheck;
	}
	
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
	}
}
