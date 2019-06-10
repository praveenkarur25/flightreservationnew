package com.frs.xyz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frs.xyz.bean.XYZ_User_Bean;
import com.frs.xyz.service.Admin_User_Service;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form_Name = null;
		 form_Name = request.getParameter("Login");
		
		if(form_Name.equals("Login")) {
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			
			boolean details = Admin_User_Service.isValidDetails(userName, password);
			if(details == true) {
				response.sendRedirect("AdminPage.jsp");
			}
			else {
			PrintWriter out = response.getWriter();
			////out.println("<html><head><script>alert("invalid") </script></head></html>");
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Username or password is incorrect');");
		       out.println("</script>");
				
				RequestDispatcher rs = request.getRequestDispatcher("Login.jsp");
				rs.include(request, response);
			}
			
				
		}
		
		else {
			String first_Name = request.getParameter("firstname");
			String last_Name = request.getParameter("lastname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phoneNumber = request.getParameter("phonenumber");
			String user_Name = first_Name + last_Name;
			
		XYZ_User_Bean userBean = new XYZ_User_Bean();
		userBean.setUser_First_Name(first_Name);
		userBean.setUser_Last_Name(last_Name);
		userBean.setEmail(email);
		userBean.setPassword(password);
		userBean.setPhoneNumber(phoneNumber);
		userBean.setUserName(user_Name);
		
		Admin_User_Service insertDetails = new Admin_User_Service();
		boolean insert = insertDetails.insertUser(userBean);
		
		if(insert == true) {
			System.out.println("Registered successfully");
			PrintWriter out = response.getWriter();
			out.println("<h1>Registered successfully</h1>");
		}
		
			
		}
			
		
		
	}

}
