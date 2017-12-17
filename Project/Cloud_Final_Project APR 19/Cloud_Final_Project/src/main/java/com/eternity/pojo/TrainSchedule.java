package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="trainSchedule")
@PrimaryKeyJoinColumn(name="scheduleID")
public class TrainSchedule extends Schedule{

	@Column(name="trainNO")
	private String trainNO;
	
	@Column(name="businessClassSeatT")
	private int businessClassSeatT;
	
	@Column(name="businessClassFareT")
	private int businessClassFareT;
	
	@Column(name="ecoClassSeatT")
	private int ecoClassSeatT;
	
	@Column(name="ecoClassFareT")
	private int ecoClassFareT;
	
	public TrainSchedule(){
		
	}

	public String getTrainNO() {
		return trainNO;
	}

	public void setTrainNO(String trainNO) {
		this.trainNO = trainNO;
	}

	public int getBusinessClassSeatT() {
		return businessClassSeatT;
	}

	public void setBusinessClassSeatT(int businessClassSeatT) {
		this.businessClassSeatT = businessClassSeatT;
	}

	public int getBusinessClassFareT() {
		return businessClassFareT;
	}

	public void setBusinessClassFareT(int businessClassFareT) {
		this.businessClassFareT = businessClassFareT;
	}

	public int getEcoClassSeatT() {
		return ecoClassSeatT;
	}

	public void setEcoClassSeatT(int ecoClassSeatT) {
		this.ecoClassSeatT = ecoClassSeatT;
	}

	public int getEcoClassFareT() {
		return ecoClassFareT;
	}

	public void setEcoClassFareT(int ecoClassFareT) {
		this.ecoClassFareT = ecoClassFareT;
	}
	
	
}
