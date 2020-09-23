package com.tis.domain;

import lombok.NoArgsConstructor;

//@Data
public class NotUserException extends Exception {
	
	public NotUserException() {
		super("NotUserExcepiton");
	}

	public NotUserException(String message) {
		super(message);
		
	}

	
}
