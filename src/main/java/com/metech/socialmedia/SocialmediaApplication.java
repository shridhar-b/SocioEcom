package com.metech.socialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class SocialmediaApplication extends SpringBootServletInitializer
{

	public static void main(String[] args)
	{
		SpringApplication.run(SocialmediaApplication.class, args);
	}
	
	 @Override
	    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	        return application.sources(SocialmediaApplication.class);
	    }
}
