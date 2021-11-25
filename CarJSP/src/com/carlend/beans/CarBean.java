package com.carlend.beans;

public class CarBean {
   private String CarNo,CarName,Model;
   private int NoOfCars,lentCars;
   
   public CarBean() {}

public CarBean(String carNo, String carName, String model, int noOfCars) {
	super();
	CarNo = carNo;
	CarName = carName;
	Model = model;
	NoOfCars = noOfCars;
	
}

public int getLentCars() {
	return lentCars;
}

public void setLentCars(int lentCars) {
	this.lentCars = lentCars;
}

public String getCarNo() {
	return CarNo;
}

public void setCarNo(String carNo) {
	CarNo = carNo;
}

public String getCarName() {
	return CarName;
}

public void setCarName(String carName) {
	CarName = carName;
}

public String getModel() {
	return Model;
}

public void setModel(String model) {
	Model = model;
}

public int getNoOfCars() {
	return NoOfCars;
}

public void setNoOfCars(int noOfCars) {
	NoOfCars = noOfCars;
}
   
   
}
