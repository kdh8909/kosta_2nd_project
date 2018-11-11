package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.CompanyService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.CompanyServiceImpl;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;

public class PersonCheckMessageControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		
		String perOrCom = (String) session.getAttribute("perOrCom");
				
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";

		try {
			
			if(perOrCom.equals("Person")) {
				
				String personReceiveId = (String) session.getAttribute("userId");
				
				List<MessageBoxCPDTO> list = null;
				list = csv.personCheckMessage(personReceiveId);
				req.setAttribute("message", list);
				
			} else if(perOrCom.equals("Company")) {
				
				String companyReceiveId = (String) session.getAttribute("userId");
				
				List<MessageBoxPCDTO> list = null;
				list = asv.companyCheckMessage(companyReceiveId);
				req.setAttribute("message", list);
			}

			url = "mymessage.jsp";

			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
		}
		
		mv.setPath(url);
		return mv;

	}

}
