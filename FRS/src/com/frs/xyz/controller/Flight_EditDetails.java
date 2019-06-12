package com.frs.xyz.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/edit")
public class Flight_EditDetails extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String flight_Name = request.getParameter("flightName");
		System.out.println(flight_Name);
		int firstclass_fare = Integer.parseInt(request.getParameter("fare"));
		int economey_fare = (firstclass_fare * 25) / 100 + firstclass_fare;
		int business_fare = (firstclass_fare * 25) / 100 + firstclass_fare;

		int fareArr[] = new int[] { business_fare, economey_fare, firstclass_fare };

	}

}
