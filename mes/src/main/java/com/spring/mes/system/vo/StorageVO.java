package com.spring.mes.system.vo;

import org.springframework.stereotype.Component;

@Component("storageVO")
public class StorageVO {
	private String storageCode;
	private String storageName;
	private String wSite;
	private String rSite;
	private String storageExplanation;
	private String useCheck;
	
	public StorageVO() {
		
	}
	
	public StorageVO(String storageCode, String storageName, String wSite, String rSite, String storageExplanation, String useCheck) {
		this.storageName = storageName;
		this.wSite = wSite;
		this.rSite = rSite;
		this.storageExplanation = storageExplanation;
		this.useCheck = useCheck;
	}
	
	public String getStorageCode() {
		return storageCode;
	}
	public void setStorageCode(String storageCode) {
		this.storageCode = storageCode;
	}
	public String getStorageName() {
		return storageName;
	}
	public void setStorageName(String storageName) {
		this.storageName = storageName;
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
	public String getStorageExplanation() {
		return storageExplanation;
	}
	public void setStorageExplanation(String storageExplanation) {
		this.storageExplanation = storageExplanation;
	}
	public String getUseCheck() {
		return useCheck;
	}
	public void setUseCheck(String useCheck) {
		this.useCheck = useCheck;
	}
}
