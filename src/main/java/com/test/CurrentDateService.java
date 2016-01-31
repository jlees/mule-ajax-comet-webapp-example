package com.test;

import java.util.Date;

import org.mule.api.MuleEventContext;
import org.mule.api.lifecycle.Callable;

public class CurrentDateService implements Callable {
	
	@Override
	public Object onCall(MuleEventContext eventContext) throws Exception {
		String date = new Date().toString();
		System.out.println(date);
		return new DateResponse(date); 
	}
	
}
