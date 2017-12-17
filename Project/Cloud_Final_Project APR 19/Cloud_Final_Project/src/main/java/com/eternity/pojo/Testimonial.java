package com.eternity.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="testimonial")
public class Testimonial {

	@Column(name = "testId", unique=true, nullable = false)
	private long testId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "caption")
	private String caption;
	
	@Column(name = "comment")
	private String comment;
	
	public Testimonial(){
		
	}

	public long getTestId() {
		return testId;
	}

	public void setTestId(long testId) {
		this.testId = testId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
