package com.sev;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;

import com.business.Search;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("person"));

        if (Search.date.equals("")) {
            PrintWriter out = resp.getWriter();
            out.println("Please enter a valid date");
        }
        else {
            Search.day = getDay(Search.date);
            resp.sendRedirect("SearchRs.jsp");
        }
	}
	 public String getDay(String dateInp) {
	        LocalDate dt = LocalDate.parse(dateInp);
	        return dt.getDayOfWeek().toString();
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
