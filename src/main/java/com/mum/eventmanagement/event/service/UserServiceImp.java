package com.mum.eventmanagement.event.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.mum.eventmanagement.event.repository.UserRepository;
import com.mum.eventmanagement.model.User;

public class UserServiceImp implements UserService {
	@Autowired
	UserRepository userRepo;

	@Override
	public User findOne(int id) {
		// TODO Auto-generated method stub
		return userRepo.findOne(id);
	}

}
