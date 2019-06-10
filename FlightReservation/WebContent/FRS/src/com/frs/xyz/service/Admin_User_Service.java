package com.frs.xyz.service;

import com.frs.xyz.bean.XYZ_User_Bean;
import com.frs.xyz.dao.UserDAO;

public class Admin_User_Service {
	
	public static boolean isValidDetails(String user_Name, String password) {
		
		UserDAO userDAO = new UserDAO();
		int flag = userDAO.isValidUser(user_Name, password);
		if(flag == 1) {
			return true;
		}
		else
			return false;
		
		}
	public static boolean insertUser(XYZ_User_Bean xyz_User_Bean) {
		UserDAO userDAO = new UserDAO();
		int insert = userDAO.insertUserDetails(xyz_User_Bean);
		if(insert == 1)
			return false;
		else
			return false;
	}

}
