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
		// addFlight.getArr_Time()
		System.out.println(addFlight.getDept_Time() + "gysudg");
		String query = "insert into frs_flights_table(flight_name,flight_From,flight_To,First_class_fare,Arrivaltime,Departuretime,via,Business_class_fare,Economy_class_fare)values('"
				+ addFlight.getFlight_Name() + "','" + addFlight.getFlight_Name() + "','" + addFlight.getFlight_Name()
				+ "','" + addFlight.getFirstclass_fare() + "','" + addFlight.getArr_Time() + "','"
				+ addFlight.getDept_Time() + "','" + addFlight.getFlight_via() + "','" + addFlight.getBusiness_fare()
				+ "','" + addFlight.getEconomy_fare() + "')";
		// String query = "insert into frs_flights_table values(?,?)";
		try {
			connection = DBUtil.getConnection();
			connection.setAutoCommit(false);
			System.out.println(addFlight.getFlight_Name());
			System.out.println(addFlight.getFlight_From());
			System.out.println(addFlight.getFirstclass_fare());
			preparedStatement = connection.prepareStatement(query);
			// preparedStatement.setString(1, addFlight.getFlight_Name());
			// preparedStatement.setString(2, addFlight.getFlight_From());

//			preparedStatement.setString(3, addFlight.getFlight_via());
//			preparedStatement.setString(4, addFlight.getFlight_To());
//			preparedStatement.setString(5, addFlight.getDept_Time());
//			preparedStatement.setString(6, addFlight.getArr_Time());
//			preparedStatement.setInt(7, addFlight.getBusiness_fare());
//			preparedStatement.setInt(8, addFlight.getEconomy_fare());
//			preparedStatement.setInt(9, addFlight.getFirstclass_fare());
			preparedStatement.executeUpdate();
			connection.commit();
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
