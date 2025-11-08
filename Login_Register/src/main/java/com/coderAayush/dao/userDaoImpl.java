package com.coderAayush.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.coderAayush.Util.DBUtil;



public class userDaoImpl implements userDao {

	
	@Override
	public boolean resetPassword(String userName, String email, String userPass) {
	    String query = "UPDATE info SET userPass = ? WHERE userName = ? AND email = ?";

	    try (Connection conn = DBUtil.getConnection();
	         PreparedStatement ps = conn.prepareStatement(query)) {

	        ps.setString(1, userPass);   // new password
	        ps.setString(2, userName);   // username
	        ps.setString(3, email);      // email

	        int rows = ps.executeUpdate();
	        System.out.println("Reset password rows affected: " + rows);
	        return rows > 0;

	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}



	
	 @Override
	    public boolean addUser(User user) {
	        String query = "INSERT INTO info (userName,userPass,email) VALUES (?, ?, ?)";

	        try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	            preparedStatement.setString(1, user.getUsername());
	            preparedStatement.setString(2, user.getPassword());
	            preparedStatement.setString(3, user.getEmail());

	            int rowsAffected = preparedStatement.executeUpdate();

	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

	  @Override
	public boolean isValidUser(String username, String password) {
	    String query = "SELECT * FROM info WHERE userName = ? AND userPass = ?";

	    try (Connection connection = DBUtil.getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	        preparedStatement.setString(1, username);
	        preparedStatement.setString(2, password);

	        System.out.println("Query is running for user: " + username + " / " + password);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        boolean exists = resultSet.next();
	        System.out.println("User exists: " + exists);
	        return exists;

	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	

	}

