package controller.comImpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyRecruitDTO;

public class CompanyRecruitSelectAllControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

   @Override
   public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
      rep.setContentType("text/html;charset=UTF-8");
      req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		List<CompanyRecruitDTO> list = new ArrayList<>();
		try { mv.setPath("./company.jsp");
			  list = asv.companyRecruitSelectAll();
			  System.out.println("CompanyRecruitSelectAllControllerImpl-execute-list: "+list);
			  session.setAttribute("list", list); req.setAttribute("listNull", 1);
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "리스트 검색에 실패하였습니다.."); 
								   return mv; }
		return mv;
   }
}