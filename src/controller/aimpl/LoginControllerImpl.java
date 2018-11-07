package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
	String id = "jang", pwd = "1234";

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
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
		if (result>0) {
			// ��ġ�ϸ� session�� Id ���� ��
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			//session.setAttribute("logDate", session.getCreationTime());
			// �α��� �������� �̵�
			mv.setPath("./index.jsp");
		} else { // �ƴϸ� �޽����� ��� �� �ڷΰ���
			System.out.println("ȸ�������� ��ġ���� �ʽ��ϴ�");
			out.println("<script>history.back();</script>");
		}
		// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		return mv;
	}
}
