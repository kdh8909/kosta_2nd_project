package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.MessageBoxCPDTO;

public class SendMessageCtoPControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String messageContents = req.getParameter("messageContents");
		String personSendId = req.getParameter("personSendId");
		String personReceiveId = req.getParameter("companyReceiveId");
		
		MessageBoxCPDTO messageBoxCPDTO = new MessageBoxCPDTO(0, null, messageContents, 0, personSendId, personReceiveId);
		
		HttpSession session = req.getSession();
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		try {
			
			asv.sendMessageCtoP(messageBoxCPDTO);
			
			// 이동할 화면 설정
			url = "NewFile.html";
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}

		mv.setPath(url);
		return mv;
		
	}

}
