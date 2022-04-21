package com.mindtree.photomanagement.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {

	
	@ExceptionHandler(PhotoManagementException.class)
	@ResponseStatus(value = HttpStatus.NOT_FOUND)
	public ModelAndView ambulanceNotFound(PhotoManagementException exception) {
		ModelAndView modelAndView = new ModelAndView("errormessages");
		modelAndView.addObject("message", "<h3>" + exception.getLocalizedMessage() + "</h3>");
		return modelAndView;

	}
}
