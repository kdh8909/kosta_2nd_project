package controller.perImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;

public class SendMessagePtoCControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String messageContents = req.getParameter("messageContents");
		String personSendId = req.getParameter("personSendId");
		String companyReceiveId = req.getParameter("companyReceiveId");
				
		MessageBoxPCDTO MessageBoxPCDTO = new MessageBoxPCDTO(0, null, messageContents, 0, personSendId, companyReceiveId);
		
		HttpSession session = req.getSession();
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		try {
			
			asv.sendMessagePtoC(MessageBoxPCDTO);
			
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
