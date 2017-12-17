package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name="schedule")
@Inheritance(strategy=InheritanceType.JOINED)
public class Schedule {

	@Id
	@GeneratedValue
	@Column(name = "scheduleID", unique=true, nullable = false)
	private long scheduleID;
	
	@Column(name = "departureDate")
	private String departureDate;
	
	@Column(name = "arrivalDate")
	private String arrivalDate;
	
	@Column(name = "sourceCity")
	private String sourceCity;
	
	@Column(name = "destinationCity")
	private String destinationCity;
	
	@Column(name = "departureTime")
	private String departureTime;
	
	@Column(name = "arrivalTime")
	private String arrivalTime;
	
	@Column(name = "duration")
	private long duration;
	
	public Schedule(){
		
	}

	public long getScheduleID() {
		return scheduleID;
	}

	public void setScheduleID(long scheduleID) {
		this.scheduleID = scheduleID;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	public String getSourceCity() {
		return sourceCity;
	}

	public void setSourceCity(String sourceCity) {
		this.sourceCity = sourceCity;
	}

	public String getDestinationCity() {
		return destinationCity;
	}

	public void setDestinationCity(String destinationCity) {
		this.destinationCity = destinationCity;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public long getDuration() {
		return duration;
	}

	public void setDuration(long duration) {
		this.duration = duration;
	}
	
}
