package com.example.travelease;

import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Users;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class TraveleaseApplication {



	public static void main(String[] args) {
		ApplicationContext context =SpringApplication.run(TraveleaseApplication.class, args);



		UsersRepo usersRepo=context.getBean(UsersRepo.class);
		System.out.println(usersRepo.findById(2));


	}




}
