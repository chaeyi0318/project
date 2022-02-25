package com.spring.mes.system.vo;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component("companyVO")
public class CompanyVO {
	private String comName;		//회사명
	private String classification;//구분
	private String BRNum;		//사업자등록번호
	private String CRNum;		//법인등록번호
	private String CEOName;		//대표명
	private String forign;		//외국인구분
	private String residentNum;		//주민번호
	private int	zipCode;		//우편번호
	private String address;		//주소
	private String addressDetails;		//상세주소
	private String comNumber;		//전화번호
	private String faxNumber;		//fax번호
	private String businessCondition;		//업태
	private String businessType;		//종목
	private Date foundationDate;		//설립연월일
	private Date openDate;		//개업연월일
	
	public CompanyVO() {
		
	}
	
	public CompanyVO(String	comName, String	classification, String	BRNum, String CRNum, String	CEOName, String	forign, String residentNum,
						int zipCode, String	address, String	addressDetails, String	comNumber, String faxNumber, String businessCondition,
						String businessType, Date foundationDate, Date openDate) {
		this.comName = comName;
		this.classification = classification;
		this.BRNum = BRNum;
		this.CRNum = CRNum;
		this.CEOName = CEOName;
		this.forign = forign;
		this.residentNum = residentNum;
		this.zipCode = zipCode;
		this.address = address;
		this.addressDetails = addressDetails;
		this.comNumber = comNumber;
		this.faxNumber = faxNumber;
		this.businessCondition = businessCondition;
		this.businessType = businessType;
		this.foundationDate = foundationDate;
		this.openDate = openDate;
		
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
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getBRNum() {
		return BRNum;
	}
	public void setBRNum(String bRNum) {
		BRNum = bRNum;
	}
	public String getCRNum() {
		return CRNum;
	}
	public void setCRNum(String cRNum) {
		CRNum = cRNum;
	}
	public String getCEOName() {
		return CEOName;
	}
	public void setCEOName(String cEOName) {
		CEOName = cEOName;
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
}