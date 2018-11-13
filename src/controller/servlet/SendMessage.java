package controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendMessage
 */
@WebServlet("/sendMessage")
public class SendMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("xxx");
		
		HttpSession session = request.getSession();
		
		String perOrCom = (String) session.getAttribute("perOrCom");
		
		System.out.println(perOrCom);
		
		System.out.println(request.getParameter("kk"));
		
	}

}
