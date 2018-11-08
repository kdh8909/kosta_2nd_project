package controller.perImpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.MessageBoxPCDTO;

public class CompanyCheckMessageControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		List<MessageBoxPCDTO> list = null;
		
		String companyReceiveId = req.getParameter("companyReceiveId");
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";

		try {
			list = asv.companyCheckMessage(companyReceiveId);
			url = "NewFile.html";
			req.setAttribute("list", list);
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
		}
		System.out.println(list);
		mv.setPath(url);
		return mv;
		
	}

}
