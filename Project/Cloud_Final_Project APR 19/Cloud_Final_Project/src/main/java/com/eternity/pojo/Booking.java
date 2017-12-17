package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="booking")
public class Booking {

	@Column(name = "bookingId", unique=true, nullable = false)
	private long bookingId;
	
	@Column(name = "bookingDate")
	private String bookingDate;
	
	@Column(name = "mode")
	private String mode;
	
	@Column(name = "departureDate")
	private String departureDate;
	
	@Column(name = "arrivalDate")
	private String arrivalDate;
	
	@Column(name = "fare")
	private int fare;
	
	@Column(name = "bookinClass")
	private String bookinClass;
	
	@Column(name = "seatDetail")
	private String seatDetail;
	
	public Booking(){
		
	}

	public long getBookingId() {
		return bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public String getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
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

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	public String getBookinClass() {
		return bookinClass;
	}

	public void setBookinClass(String bookinClass) {
		this.bookinClass = bookinClass;
	}

	public String getSeatDetail() {
		return seatDetail;
	}

	public void setSeatDetail(String seatDetail) {
		this.seatDetail = seatDetail;
	}
	
	
	
	
}
