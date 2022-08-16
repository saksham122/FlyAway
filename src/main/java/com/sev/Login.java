package com.sev;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static boolean isLoggedIn = false;
    public static String password = "root";
    public static String email = "sakshamtiwari@flyaway.com";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

        String email = request.getParameter("adminemail");
        String pass = request.getParameter("adminpassword");

        if (email.equals(Login.email) && pass.equals(Login.password)){
            isLoggedIn = true;
            out.println("Congratulations! You Have LoggedIn");
            response.sendRedirect("Admin.jsp");
        }
        else {
            isLoggedIn = false;
            out.println(" Incorrect email or Password");
        }
        out.close();
	}

}
