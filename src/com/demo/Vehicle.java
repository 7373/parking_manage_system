package com.demo;

import java.io.Serializable;
import java.sql.Date;

public class Vehicle implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String plateNumber;
	private String type;
	private String enterTime;
	private String leaveTime;
	private int parkingTime;
	private int charge;

	public Vehicle() {
		super();
	}

	public Vehicle(String plateNumber, String type, String enterTime) {
		super();
		this.plateNumber = plateNumber;
		this.type = type;
		this.enterTime = enterTime;
	}

	public String getPlateNumber() {
		return plateNumber;
	}

	public void setPlateNumber(String plateNumber) {
		this.plateNumber = plateNumber;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEnterTime() {
		return enterTime;
	}

	public void setEnterTime(String string) {
		this.enterTime = string;
	}

	public String getLeaveTime() {
		return leaveTime;
	}

	public void setLeaveTime(String string) {
		this.leaveTime = string;
	}

	public double getParkingTime() {
		return parkingTime;
	}

	public void setParkingTime(int parkingTime) {
		this.parkingTime = parkingTime;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

}
