package net.skhu.model.m;

public class MobileLoginVO {
	private String userEmail;
	private String sucessMessage;
	private String errorMessage;
	
	
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getSucessMessage() {
		return sucessMessage;
	}
	public void setSucessMessage(String sucessMessage) {
		this.sucessMessage = sucessMessage;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
