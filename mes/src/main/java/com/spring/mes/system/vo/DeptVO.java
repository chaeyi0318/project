package com.spring.mes.system.vo;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component("deptVO")
public class DeptVO {
	private int	dCode;
	private String dName;
	private String comName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate useDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate endDate;

	public DeptVO() {
		
	}
	
	public DeptVO(int dCode, String dName, String comName, LocalDate useDate, LocalDate endDate) {
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
	
	public LocalDate getUseDate() {
		return useDate;
	}
	
	public void setUseDate(LocalDate useDate) {
		this.useDate = useDate;
	}
	
	public LocalDate getEndDate() {
		return endDate;
	}
	
	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}
}
