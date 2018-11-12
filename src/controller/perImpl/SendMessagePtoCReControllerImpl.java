package controller.perImpl;

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

public class SendMessagePtoCReControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		System.out.println("XXXXXXXX");
		
		String messageContents = req.getParameter("messageContents");
		String receiveId = req.getParameter("sendId");
		
		String perOrCom = (String) session.getAttribute("perOrCom");
		String sendId = (String) session.getAttribute("userId");
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		System.out.println(perOrCom);
		System.out.println("XXXXXXXX");
		System.out.println(messageContents);
		System.out.println(receiveId);
		System.out.println(sendId);
		
		try {
			url = "mymessage.jsp";
			
			if(perOrCom.equals("Person")) {
				
				MessageBoxPCDTO messageBoxPCDTO = new MessageBoxPCDTO(0, null, messageContents, 0, sendId, receiveId);
				asv.sendMessagePtoC(messageBoxPCDTO);
				
				String personReceiveId = (String) session.getAttribute("userId");
				
				List<MessageBoxCPDTO> list = null;
				list = csv.personCheckMessage(personReceiveId);
				req.setAttribute("message", list);

				
			} else if(perOrCom.equals("Company")) {
				
				MessageBoxCPDTO messageBoxCPDTO = new MessageBoxCPDTO(0, null, messageContents, 0, sendId, receiveId);
				System.out.println(messageBoxCPDTO);
				csv.sendMessageCtoP(messageBoxCPDTO);
				
				String companyReceiveId = (String) session.getAttribute("userId");
				
				List<MessageBoxPCDTO> list = null;
				list = asv.companyCheckMessage(companyReceiveId);
				req.setAttribute("message", list);
	
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}

		mv.setPath(url);
		return mv;
	}

}
