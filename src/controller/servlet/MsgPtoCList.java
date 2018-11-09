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

import controller.util.ModelAndView;
import net.sf.json.JSONArray;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;

@WebServlet("/msgPtoCList")
public class MsgPtoCList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ApplicantService asv = ApplicantServiceImpl.getInstance();   
	
    public MsgPtoCList() { super(); }

	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		System.out.println("msgPtoCList-service");
		rep.setContentType("text/html;charset=UTF-8");
	    req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		List<MessageBoxPCDTO> list = new ArrayList<>();
		try { list = asv.msgBoxPCDTOselectAll();
		  JSONArray jsonArr=JSONArray.fromObject(list);
		  System.out.println("MsgCtoPList-service-list: "+list);
		  out.println(jsonArr);
		} catch (SQLException e) { e.printStackTrace(); }
	}
}
