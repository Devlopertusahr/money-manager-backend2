package com.website.moneymanager2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class Moneymanager2Application {

	public static void main(String[] args) {
		SpringApplication.run(Moneymanager2Application.class, args);
	}

}
