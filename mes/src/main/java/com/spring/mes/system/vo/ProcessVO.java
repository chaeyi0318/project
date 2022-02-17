package com.spring.mes.system.vo;

import org.springframework.stereotype.Component;

@Component("processVO")
public class ProcessVO {
	private String processCode;
	private String processName;
	private String wSite;
	private String rSite;
	private String processExplanation;
	private String useCheck;
	
	public ProcessVO() {
		
	}
	
	public ProcessVO(String processCode, String processName, String wSite, String rSite, String processExplanation, String useCheck) {
		this.processCode = processCode;
		this.processName = processName;
		this.wSite = wSite;
		this.rSite = rSite;
		this.processExplanation = processExplanation;
		this.useCheck = useCheck;
	}
	
	public String getProcessCode() {
		return processCode;
	}
	public void setProcessCode(String processCode) {
		this.processCode = processCode;
	}
	public String getProcessName() {
		return processName;
	}
	public void setProcessName(String processName) {
		this.processName = processName;
	}
	public String getwSite() {
		return wSite;
	}
	public void setwSite(String wSite) {
		this.wSite = wSite;
	}
	public String getrSite() {
		return rSite;
	}
	public void setrSite(String rSite) {
		this.rSite = rSite;
	}
	public String getProcessExplanation() {
		return processExplanation;
	}
	public void setProcessExplanation(String processExplanation) {
		this.processExplanation = processExplanation;
	}
	public String getUseCheck() {
		return useCheck;
	}
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
	}
}
