package com.frs.xyz.service;

import com.frs.xyz.bean.XYZ_Flight_Bean;
import com.frs.xyz.dao.Flight_DAO;

public class Flight_Details {

	public static String addFlight(XYZ_Flight_Bean addFlight) {

		Flight_DAO add = new Flight_DAO();
		String status = add.addFlightDetails(addFlight);

		if (status.equals("success")) {
			System.out.println("Flight Details Added to database successfully");
			return "success";
		} else {
			System.out.println("fail");
			return "fail";
		}

	}
}
