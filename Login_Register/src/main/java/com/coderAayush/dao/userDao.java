package com.coderAayush.dao;

public interface userDao {

	boolean isValidUser(String username, String password);
	boolean addUser(User user);
	//boolean addUser(com.coderAayush.dao.User user);
	boolean resetPassword(String username, String email, String newPassword);



}
