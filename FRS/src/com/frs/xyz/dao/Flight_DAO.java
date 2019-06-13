package com.frs.xyz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.frs.xyz.bean.XYZ_Flight_Bean;
import com.frs.xyz.util.DBUtil;

public class Flight_DAO {

	public String addFlightDetails(XYZ_Flight_Bean addFlight) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int flag = 0;

		String query = "insert into frs_flights_table values(?,?,?,?,?,?,?,?,?)";
		try {
			connection = DBUtil.getConnection();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, addFlight.getFlight_Name());
			preparedStatement.setString(2, addFlight.getFlight_From());
			preparedStatement.setString(3, addFlight.getFlight_via());
			preparedStatement.setString(4, addFlight.getFlight_To());
			preparedStatement.setString(5, addFlight.getDept_Time());
			preparedStatement.setString(6, addFlight.getArr_Time());
			preparedStatement.setInt(7, addFlight.getBusiness_fare());
			preparedStatement.setInt(8, addFlight.getEconomy_fare());
			preparedStatement.setInt(9, addFlight.getFirstclass_fare());
			preparedStatement.executeUpdate();
			System.out.println("updated");
			flag = 1;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(connection, preparedStatement, resultSet);
		}

		if (flag == 1) {
			return "success";
		} else
			return "fail";
	}

}
