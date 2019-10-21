package servlet_2;

import java.io.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 호출");
	}

	@Override
	public void destroy() {
		System.out.println("destroy 호출");
	}

	@Override
	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) 
		throws ServletException, IOException {
		resp.setContentType("text/html); charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<h3>servlet method</h3>");
		System.out.println("service 호출");
	}
	
}
