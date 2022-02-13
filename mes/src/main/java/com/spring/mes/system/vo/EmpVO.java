package com.spring.mes.system.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("empVO")
public class EmpVO {
	private int	eCode;
	private String eName;
	private int	dCode;
	private String dName;
	private Date joinDate;
	private Date quitDate;
	private String pwd;

	public EmpVO() {
		
	}
	
	public EmpVO(int eCode, String eName, int dCode, String	dName, Date	joinDate, Date quitDate, String	pwd) {
		this.eCode = eCode;
		this.eName = eName;
		this.dCode = dCode;
		this.dName = dName;
		this.joinDate = joinDate;
		this.quitDate = quitDate;
		this.pwd = pwd;
	}
	
	public int getECode() {
		return eCode;
	}
	
	public void setECode(int eCode) {
		this.eCode = eCode;
	}
	
	public String getEName() {
		return eName;
	}
	
	public void setEName(String eName) {
		this.eName = eName;
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
	
	public Date getJoinDate() {
		return joinDate;
	}
	
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	public Date getQuitDate() {
		return quitDate;
	}
	
	public void setQuitDate(Date quitDate) {
		this.quitDate = quitDate;
	}
	
	public String getPwd() {
		return pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
