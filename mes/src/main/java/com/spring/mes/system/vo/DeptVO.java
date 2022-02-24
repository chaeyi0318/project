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

	public DeptVO() {
		
	}
	
	public DeptVO(Integer dCode, String dName, String comName, Date useDate, Date endDate) {
		this.dCode = dCode;
		this.dName = dName;
		this.comName = comName;
		this.useDate = useDate;
		this.endDate = endDate;
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
}
