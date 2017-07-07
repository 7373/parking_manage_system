package com.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "findServlet", urlPatterns = { "/find.do" })
public class findServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String s = request.getParameter("type");
		String a = request.getParameter("b");
		String b = request.getParameter("c");
		String c = request.getParameter("d");
		ManageDao dao2 = new ManageDao();
		if (s != null || a != null || b != null || c != null) {
			s = new String(s.getBytes("iso-8859-1"), "UTF-8");
			a = new String(a.getBytes("iso-8859-1"), "UTF-8");
			b = new String(b.getBytes("iso-8859-1"), "UTF-8");
			c = new String(c.getBytes("iso-8859-1"), "UTF-8");
			ArrayList<Vehicle> customer2 = dao2.find(s, a, b, c);
			request.setAttribute("customer2", customer2);
			RequestDispatcher rd = request
					.getRequestDispatcher("findResult.jsp");
			rd.forward(request, response);
		}
	}
}
