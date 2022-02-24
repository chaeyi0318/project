package com.spring.mes.system.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component("deptVO")
public class DeptVO {
	private Integer	dCode;
	private String dName;
	private String comName;
	private Date useDate;
	private Date endDate;
	private String useCheck;

	public DeptVO() {
		
	}
	
	public DeptVO(Integer dCode, String dName, String comName, Date useDate, Date endDate, String useCheck) {
		this.dCode = dCode;
		this.dName = dName;
		this.comName = comName;
		this.useDate = useDate;
		this.endDate = endDate;
		this.useCheck = useCheck;
	}
	
	public Integer getDCode() {
		return dCode;
	}
	
	public void setDCode(Integer dCode) {
		this.dCode = dCode;
	}
	
	public String getDName() {
		return dName;
	}
	
	public void setDName(String dName) {
		this.dName = dName;
	}
	
	public String getComName() {
		return comName;
	}
	
	public void setComName(String comName) {
		this.comName = comName;
	}
	
	public Date getUseDate() {
		return useDate;
	}
	
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
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