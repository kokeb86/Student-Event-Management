package com.mum.eventmanagement.user;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mum.eventmanagement.model.User;
@Service
@Transactional
public class UserSignupServiceImp implements UserSignupService {
	@Autowired
	UserSignupRepository userRepo;

	@Override
	public User findOne(int id) {
		return userRepo.findOne(id);
	}

	@Override
	public void save(User user) {
		userRepo.save(user);
	}

	@Override
	public void changeUserPassword(User user, String password) {
		// TODO Auto-generated method stub
		
	}

}
