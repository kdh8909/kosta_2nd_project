package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;

@WebServlet("/msgCtoPList")
public class MsgCtoPList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CompanyService asv = CompanyServiceImpl.getInstance();
       
    public MsgCtoPList() { super(); }

	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		System.out.println("MsgCtoPList-service");
		rep.setContentType("text/html;charset=UTF-8");
	    req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		List<MessageBoxCPDTO> list = new ArrayList<>();
		try { list = asv.msgBoxCPDTOselectAll();
			  JSONArray jsonArr=JSONArray.fromObject(list);
			  System.out.println("MsgCtoPList-service-list: "+list);
			  out.println(jsonArr);
			} catch (SQLException e) { e.printStackTrace(); }
	}

}
