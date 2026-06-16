package com.example.travelease.Repo;

import com.example.travelease.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminsRepo extends JpaRepository<Admin,Integer> {


//query DSL

//        @Query("SELECT U FROM USERS U WHERE S.NAME=?2")
//        List<Users> findByName(String name);

   Admin findByEmail(String email);


//        List<Users> findBy
}
