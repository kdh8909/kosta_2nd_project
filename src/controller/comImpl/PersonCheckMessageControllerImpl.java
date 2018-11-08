package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.MessageBoxCPDTO;

public class PersonCheckMessageControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		List<MessageBoxCPDTO> list = null;
		
		String personReceiveId = req.getParameter("personReceiveId");
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";

		try {
			list = asv.personCheckMessage(personReceiveId);
			url = "NewFile.html";
			req.setAttribute("list", list);
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
		}
		
		mv.setPath(url);
		return mv;

	}

}
