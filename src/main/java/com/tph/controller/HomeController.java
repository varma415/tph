package com.tph.controller;

import com.auth0.Auth0User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import java.util.Map;

@Controller
public class HomeController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @SuppressWarnings("unused")
	private AppConfig appConfig;

    @Autowired
    public HomeController(AppConfig appConfig) {
        this.appConfig = appConfig;
    }

    @RequestMapping(value="/portal/home", method = RequestMethod.GET)
    protected String home(final Map<String, Object> model, final Principal principal) {
        logger.info("Home page");
        final Auth0User user = (Auth0User) principal;
        logger.info("Principal name: " + user.getName());
        
        if (user.isEmailVerified()) {
        	model.put("user", user);
        	model.put("emailId", user.getEmail());
        }
        return "home";
    }

}
