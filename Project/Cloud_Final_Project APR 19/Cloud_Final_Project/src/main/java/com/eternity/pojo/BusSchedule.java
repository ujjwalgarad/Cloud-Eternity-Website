package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="busSchedule")
@PrimaryKeyJoinColumn(name="scheduleID")
public class BusSchedule extends Schedule{

	@Column(name="busNo")
	private String busNo;
	
	@Column(name="seat")
	private int seat;
	
	@Column(name="fare")
	private int fare;
	
	public BusSchedule(){
		
	}

	public String getBusNo() {
		return busNo;
	}

	public void setBusNo(String busNo) {
		this.busNo = busNo;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}
	
	
}
