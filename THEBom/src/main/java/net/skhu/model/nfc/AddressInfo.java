package net.skhu.model.nfc;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class AddressInfo {
	private String fullAddress;
	@JsonIgnore
	private String addressType;
	private String city_do;
	private String gu_gun;
	private String eup_myun;
	private String adminDong;
	private String adminDongCode;
	private String legalDong;
	private String legalDongCode;
	private String ri;
	private String bunji;
	private String roadName;
	private String buildingIndex;
	private String buildingName;
	private String mappingDistance;
	private String roadCode;
	public String getFullAddress() {
		return fullAddress;
	}
	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}
	public String getAddressType() {
		return addressType;
	}
	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}
	public String getCity_do() {
		return city_do;
	}
	public void setCity_do(String city_do) {
		this.city_do = city_do;
	}
	public String getGu_gun() {
		return gu_gun;
	}
	public void setGu_gun(String gu_gun) {
		this.gu_gun = gu_gun;
	}
	public String getEup_myun() {
		return eup_myun;
	}
	public void setEup_myun(String eup_myun) {
		this.eup_myun = eup_myun;
	}
	public String getAdminDong() {
		return adminDong;
	}
	public void setAdminDong(String adminDong) {
		this.adminDong = adminDong;
	}
	public String getAdminDongCode() {
		return adminDongCode;
	}
	public void setAdminDongCode(String adminDongCode) {
		this.adminDongCode = adminDongCode;
	}
	public String getLegalDong() {
		return legalDong;
	}
	public void setLegalDong(String legalDong) {
		this.legalDong = legalDong;
	}
	public String getLegalDongCode() {
		return legalDongCode;
	}
	public void setLegalDongCode(String legalDongCode) {
		this.legalDongCode = legalDongCode;
	}
	public String getRi() {
		return ri;
	}
	public void setRi(String ri) {
		this.ri = ri;
	}
	public String getBunji() {
		return bunji;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	public String getRoadName() {
		return roadName;
	}
	public void setRoadName(String roadName) {
		this.roadName = roadName;
	}
	public String getBuildingIndex() {
		return buildingIndex;
	}
	public void setBuildingIndex(String buildingIndex) {
		this.buildingIndex = buildingIndex;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public String getMappingDistance() {
		return mappingDistance;
	}
	public void setMappingDistance(String mappingDistance) {
		this.mappingDistance = mappingDistance;
	}
	public String getRoadCode() {
		return roadCode;
	}
	public void setRoadCode(String roadCode) {
		this.roadCode = roadCode;
	}
		
}
