package com.auribises.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auribises.dao.DB;
import com.auribises.model.User;

@WebServlet({ "/RegisterServlet", "/Register" })
public class RegisterServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. Fetch data from Request
		
		User user = new User();
		//user.name = request.getParameter("txtName");
		user.setName(request.getParameter("name"));
		user.email = request.getParameter("email");
		user.password = request.getParameter("password");
		System.out.println(user);
		
		
		// 2. Logical Processing
		//    Dump the data in Mongo DB/ MySQL / FirebaseFirestore
		DB db = new DB();
		
		// 3. Send Back some Response
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		boolean result = db.registerUser(user);
		
		String html = "";
		
		if(result) {
			html = "<html><body><center>THANK YOU "+user.email+"<br>Registration Success<br><br>"
					+ "<a href='index.html'>Please login</a>"
					+ "</center></body></html>";
		}else {
			html = "<html><body><center>Somthing Went Wrong"+user.email+"<br>Please try Again</center></body></html>";

		}
		
		out.println(html);
	}

}