package com.auribises.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.auribises.dao.DB;
import com.auribises.model.User;


@WebServlet({ "/LoginController", "/Login" })
public class LoginController extends HttpServlet {


	public void init(ServletConfig config) throws ServletException {
		System.out.println("[LoginController] - init executed");
	}

	public void destroy() {
		System.out.println("[LoginController] - destroy executed");
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[LoginController] - service executed");
		
		// 1. Fetch Data in REQUEST: request.getParameter -> will always return String
															// 	if needed convert it to integer or any other type of your choice
		User user = new User();
		user.email = request.getParameter("txtEmail");
		user.password = request.getParameter("txtPassword");
		
		System.out.println("[LOGIN CONTROLLER] User Data:"+user);
		
		System.out.println(user);
		
		// 2. Perform some Logical Operation
		
		DB db = new DB();
		boolean result = db.loginUser(user);
		
		
		
		// 3. Send RESPOSNE to client ->  Either Text or HTML
		response.setContentType("text/html");
		
		PrintWriter writer = response.getWriter();
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head>");
		
		out.println("</head>");
		out.println("<body background='http://www.publicdomainpictures.net/pictures/100000/velka/yellow-background-14046115834KP.jpg' no-repeat>");

		out.println("</body>");
		out.println("</html>");

		//String message = "Thank You "+user.name;
		String html = "";
		if(result) {
			
			HttpSession session = request.getSession();
			session.setAttribute("keyUser", user);
			
			html = "<html><body><center><h1>THANK YOU</h1> "+user.name+"<br><h2>Login Success</h2><br><br>"
					+ "<h2><a href='style2.html'>Enter Home</a></h2>"
					+ "</center></body></html>";
			
		}else {
			html = "<html><body><center><h1>Invalid Credentials<h1>"+user.email+"<br><h2>Please try Again</h2></center></body></html>";
		}
		
		//writer.println(message);
		writer.println(html);
		
		
		
	}

	
}