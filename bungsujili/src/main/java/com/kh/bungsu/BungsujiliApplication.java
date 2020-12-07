package com.kh.bungsu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource(value = {"classpath:jdbc.properties"})
public class BungsujiliApplication {

	public static void main(String[] args) {
		SpringApplication.run(BungsujiliApplication.class, args);
	}

}
