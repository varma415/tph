/**
 * 
 */
package com.tph.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author janardhanmudduluru
 *
 */
@Controller
public class SignUpVerifyController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value = "/signUpVerify*", method = RequestMethod.GET)
	protected String login(final Map<String, Object> model, final HttpServletRequest req) {
		logger.info("In the sign up verify page");
		String emailId = req.getParameter("email");
		model.put("emailId", emailId);
		model.put("firstTime", true);
		return "home";
	}
}
