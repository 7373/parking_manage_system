package com.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	public LoginFilter() {

		// TODO Auto-generated constructor stub
	}

	public void destroy() {

		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;

		HttpServletResponse res = (HttpServletResponse) response;

		// 获得请求的URL

		String url = req.getRequestURL().toString();

		// 获得session中的对象

		HttpSession session = req.getSession();

		Administrator user = (Administrator) session.getAttribute("admin");

		// 使用endsWith()判断url结尾的字符串

		if (url.endsWith("login.jsp") || user != null
				|| url.endsWith("number1.jsp") || url.endsWith(".css") ||

				url.endsWith(".js") || url.endsWith("index.jsp")
				|| url.endsWith("register.jsp") || url.endsWith("register.do")
				||

				url.endsWith("login.do") ||
				url.endsWith("login_0.jsp") ||

				url.endsWith(".gif") || url.endsWith(".png")
				|| url.endsWith(".jpg") ||

				url.endsWith("SSH_market/")) {

			// 满足条件就继续执行

			chain.doFilter(request, response);

		} else {

			// 不满足条件就跳转到其他页面

			PrintWriter out = res.getWriter();

			out.print("<script language>alert('请登录！…………');top.location.href='login.jsp'</script>");
			//
			res.sendRedirect(req.getContextPath() + "/login.jsp");
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}
}