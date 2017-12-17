package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="flightSchedule")
@PrimaryKeyJoinColumn(name="scheduleID")
public class FlightSchedule extends Schedule {
	
	@Column(name="flightId")
	private String flightId;
	
	@Column(name="company")
	private String company;
	
	@Column(name="businessClassSeatF")
	private int businessClassSeatF;
	
	@Column(name="businessClassFareF")
	private int businessClassFareF;
	
	@Column(name="ecoClassSeatF")
	private int ecoClassSeatF;
	
	@Column(name="ecoClassFareF")
	private int ecoClassFareF;
	
	public FlightSchedule(){
		
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getBusinessClassSeatF() {
		return businessClassSeatF;
	}

	public void setBusinessClassSeatF(int businessClassSeatF) {
		this.businessClassSeatF = businessClassSeatF;
	}

	public int getBusinessClassFareF() {
		return businessClassFareF;
	}

	public void setBusinessClassFareF(int businessClassFareF) {
		this.businessClassFareF = businessClassFareF;
	}

	public int getEcoClassSeatF() {
		return ecoClassSeatF;
	}

	public void setEcoClassSeatF(int ecoClassSeatF) {
		this.ecoClassSeatF = ecoClassSeatF;
	}

	public int getEcoClassFareF() {
		return ecoClassFareF;
	}

	public void setEcoClassFareF(int ecoClassFareF) {
		this.ecoClassFareF = ecoClassFareF;
	}
	
	

}
