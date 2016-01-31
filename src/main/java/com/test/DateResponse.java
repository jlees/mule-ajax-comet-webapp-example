package com.test;

import org.codehaus.jackson.annotate.JsonProperty;

public class DateResponse {

	@JsonProperty
	private String message;

	public DateResponse(String message) {
		super();
		this.message = message;
	}

	public String getMessage() {
		return message;
	}	
	
}
