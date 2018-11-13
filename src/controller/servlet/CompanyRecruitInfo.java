package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyRecruitDTO;


/**
 * Servlet implementation class CompanyRecruitInfo
 */
@WebServlet("/companyRecruitInfo")
public class CompanyRecruitInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CompanyService csv = CompanyServiceImpl.getInstance();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charSet=UTF-8");
		
		String companyName = request.getParameter("companyName");
		
		List<CompanyRecruitDTO> list = null;
		
		try {
			
			list = csv.companyRecruitSelectByCompanyName(companyName);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		JSONArray jsonArr = JSONArray.fromObject(list);
		PrintWriter out = response.getWriter();
		out.print(jsonArr);
		
	}

}
