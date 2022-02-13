package com.spring.mes.system.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("companyVO")
public class CompanyVO {
	private String comName;
	private String classification;
	private int	cardinal;
	private Date startDate;
	private Date endDate;
	private String BRNum;
	private String CRNum;
	private String CEOName;
	private String forign;
	private String residentNum;
	private int	zipCode;
	private String address;
	private String addressDetails;
	private String comNumber;
	private String faxNumber;
	private String businessCondition;
	private String businessType;
	private Date foundationDate;
	private Date openDate;
	private Date closeDate;
	
	public CompanyVO() {
		
	}
	
	public CompanyVO(String	comName, String	classification, int	cardinal, Date	startDate, Date	endDate, String	BRNum, String	CRNum,
					 String	CEOName, String	forign, String residentNum, int zipCode, String	address, String	addressDetails, String	comNumber,
					 String	faxNumber, String businessCondition, String	businessType, Date foundationDate, Date openDate, Date	closeDate) {
		
	}
	
	public String getComName() {
		return comName;
	}
	
	public void setComName(String comName) {
		this.comName = comName;
	}
	
	public String getClassification() {
		return classification;
	}
	
	public void setClassfication(String classfication) {
		this.classification = classfication;
	}
	
	public int getCardinal() {
		return cardinal;
	}
	
	public void setCardinal(int cardinal) {
		this.cardinal = cardinal;
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
	
	public String getBRNum() {
		return BRNum;
	}
	
	public void setBRNum(String BRNum) {
		this.BRNum = BRNum;
	}
	
	public String getCRNum() {
		return CRNum;
	}
	
	public void setCRNum(String CRNum) {
		this.CRNum = CRNum;
	}
	
	public String getCEOName() {
		return CEOName;
	}
	
	public void setCEOName(String CEOName) {
		this.CEOName = CEOName;
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
	
	public String getComNumber()
	{
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
	
	public Date getFoundationDate() {
		return foundationDate;
	}
	
	public void setFoundationDate(Date foundationDate) {
		this.foundationDate = foundationDate;
	}
	
	public Date getOpenDate() {
		return openDate;
	}
	
	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	
	public Date getCloseDate() {
		return closeDate;
	}
	
	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}
}