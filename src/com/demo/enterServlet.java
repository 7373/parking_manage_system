package com.demo;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "enterServlet", urlPatterns = { "/enter.do" })
public class enterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String a = new String(request.getParameter("type").getBytes(
				"iso-8859-1"), "UTF-8");
		String b = new String(request.getParameter("b").getBytes("iso-8859-1"),
				"UTF-8");
		String c = request.getParameter("c");

		ManageDao dao = new ManageDao();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (dao.addCar(a, b, c)) {

			out.println("<html><head><span style=\"font-size:18px;\"></span><span style=\"font-size:24px;\"><meta http-equiv=\"refresh\" content=\"3;URL=index.jsp\"> </span><span style=\"font-size:24px;\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" /><title>录入成功！</title><br></head><body>");
			out.println("<table width=\"300\" border=\"0\" align=\"center\"><tr><td align=\"center\"> \"恭喜您！"
					+ "录入信息成功！\"<br><a href=\"index.jsp\">3秒之后跳转主页（没跳转点我）</a> </td> </tr></table> ");
			out.println("</body></html>");
		} else {
			out.println("<html><body>" + "录入失败！");
			out.println("</body></html>");

		}

	}
}
