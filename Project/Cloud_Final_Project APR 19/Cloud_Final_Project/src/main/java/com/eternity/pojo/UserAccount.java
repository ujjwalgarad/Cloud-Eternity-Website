package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="usertable")
@PrimaryKeyJoinColumn(name="personID")

public class UserAccount extends Person{

	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Column(name = "role")
	private String role;
	
	public UserAccount() {
	    }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	 
	
	 
}
