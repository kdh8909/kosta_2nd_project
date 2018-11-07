package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.aimpl.LoginServiceImpl;
import service.dto.LoginDTO;
import controller.Controller;
import controller.util.ModelAndView;

public class LoginControllerImpl implements Controller {
	LoginServiceImpl sv = LoginServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		LoginDTO dto = new LoginDTO();
		// ���۵Ǵ� ������ �ޱ�
		String perOrCom = req.getParameter("perOrCom");
		String pId = req.getParameter("userId");
		String pPwd = req.getParameter("userPwd");
		dto.setPerOrCom(perOrCom); dto.setId(pId); dto.setPwd(pPwd);
		// Id�� Pwd��ġ ���θ� �Ǵ�
		int result = sv.userLogin(dto);
		System.out.println("LoginControllerImpl-execute:"+result);
		if (result>0) { // ��ġ�ϸ� session�� Id ���� ��
			            session.setAttribute("userId", pId);
			          //session.setAttribute("logDate", session.getCreationTime());
			          mv.setPath("./index.jsp");// �α��� �������� �̵�
		} else { mv.setPath("./result.jsp");
	     		 session.setAttribute("resultMsg", "�α��ο� �����Ͽ����ϴ�..");  
		}// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		return mv;
	}
}
