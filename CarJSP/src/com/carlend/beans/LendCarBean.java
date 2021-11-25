package com.carlend.beans;

import java.util.Date;

public class LendCarBean {
  private String carNo,lendeeId,lendeeName;
  private long mobileNo;
  private Date lendDate;
  private String returnStatus;
  public LendCarBean(String carNo, String lendeeId, String lendeeName, long mobileNo) {
	super();
	this.carNo = carNo;
	this.lendeeId = lendeeId;
	this.lendeeName = lendeeName;
	this.mobileNo = mobileNo;
}


  
  public LendCarBean() {}



public String getCarNo() {
	return carNo;
}



public void setCarNo(String carNo) {
	this.carNo = carNo;
}



public String getLendeeId() {
	return lendeeId;
}



public void setLendeeId(String lendeeId) {
	this.lendeeId = lendeeId;
}



public String getLendeeName() {
	return lendeeName;
}



public void setLendeeName(String lendeeName) {
	this.lendeeName = lendeeName;
}



public long getMobileNo() {
	return mobileNo;
}



public void setMobileNo(long mobileNo) {
	this.mobileNo = mobileNo;
}



public Date getLendDate() {
	return lendDate;
}



public void setLendDate(Date lendDate) {
	this.lendDate = lendDate;
}



public String getReturnStatus() {
	return returnStatus;
}



public void setReturnStatus(String returnStatus) {
	this.returnStatus = returnStatus;
}




  
  
  
  
}
