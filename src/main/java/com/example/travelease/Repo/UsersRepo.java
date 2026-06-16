package com.example.travelease.Repo;

import com.example.travelease.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UsersRepo extends JpaRepository<Users,Integer> {


//query DSL

//        @Query("SELECT U FROM USERS U WHERE S.NAME=?2")
//        List<Users> findByName(String name);



        Optional<Users> findByUsername(String username);




//        List<Users> findBy
}
