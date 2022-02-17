package com.spring.mes.system.vo;

import org.springframework.stereotype.Component;

@Component("qualityTestVO")
public class QualityTestVO {
	private String testCode;
	private String testName;
	private String note;
	private String useCheck;
	
	public QualityTestVO() {
		
	}
	
	public QualityTestVO(String testCode, String testName, String note, String useCheck) {
		this.testCode = testCode;
		this.testName = testName;
		this.note = note;
		this.useCheck = useCheck;
	}
	
	public String getTestCode() {
		return testCode;
	}
	public void setTestCode(String testCode) {
		this.testCode = testCode;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getUseCheck() {
		return useCheck;
	}
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
	}
}
