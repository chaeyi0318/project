package com.spring.mes.system.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component("deptVO")
public class DeptVO {
	private int	dCode;
	private String dName;
	private String comName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date useDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;

	public DeptVO() {
		
	}
	
	public DeptVO(int dCode, String dName, String comName, Date useDate, Date endDate) {
		this.dCode = dCode;
		this.dName = dName;
		this.comName = comName;
		this.useDate = useDate;
		this.endDate = endDate;
	}
	
	public int getDCode() {
		return dCode;
	}
	
	public void setDCode(int dCode) {
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
