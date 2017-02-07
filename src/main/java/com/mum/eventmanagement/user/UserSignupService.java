package com.mum.eventmanagement.user;

import com.mum.eventmanagement.model.User;

public interface UserSignupService {
	public User findOne(int id);
	public void save(User user);
	public void changeUserPassword(User user, String password);
}
