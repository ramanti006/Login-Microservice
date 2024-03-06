package com.example.login.Model;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.login.Model.User;

public interface UserRepo extends JpaRepository<User,Integer> {
	User findByName(String Name);

}
