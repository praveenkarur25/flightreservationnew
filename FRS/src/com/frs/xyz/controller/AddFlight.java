package com.frs.xyz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frs.xyz.bean.XYZ_Flight_Bean;
import com.frs.xyz.service.Flight_Details;

@WebServlet("/addflight")
public class AddFlight extends HttpServlet {

	protected void doPostt(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String flight_name = request.getParameter("flightName");
		String flight_from = request.getParameter("from");
		String flight_to = request.getParameter("via");
		String flight_via = request.getParameter("to");
		String arr_time = request.getParameter("arrTime");
		String dep_time = request.getParameter("depTime");
		// String flight_class = request.getParameter("class");
		// String economy_fare = request.getParameter("fare");
		int economy_fare = Integer.parseInt(request.getParameter("fare"));
		int business_fare = (economy_fare * 25) / 100 + economy_fare;
		int firstclass_fare = (business_fare * 40) / 100 + business_fare;

		XYZ_Flight_Bean addFlight = new XYZ_Flight_Bean();
		addFlight.setFlight_Name(flight_name);
		addFlight.setFlight_From(flight_from);
		addFlight.setFlight_To(flight_to);
		addFlight.setFlight_via(flight_via);
		addFlight.setArr_Time(arr_time);
		addFlight.setDept_Time(dep_time);
		addFlight.setBusiness_fare(business_fare);
		addFlight.setEconomy_fare(economy_fare);
		addFlight.setFirstclass_fare(firstclass_fare);

		Flight_Details flightDetails = new Flight_Details();
		String status = flightDetails.addFlight(addFlight);

		if (status.equals("success")) {
			PrintWriter out = response.getWriter();

			out.println("<script type=\"text/javascript\">");
			out.println("alert('New Flight Details Added successfully');");

			out.println("</script>");

			RequestDispatcher rs = request.getRequestDispatcher("Flights.jsp");
			rs.include(request, response);
		}
	}
}
