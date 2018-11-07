package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.LoginServiceImpl;
import service.dto.LoginDTO;
import service.dto.PersonLoginDTO;
import controller.Controller;
import controller.util.ModelAndView;

public class SignUpControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	LoginServiceImpl lsv = LoginServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		PersonLoginDTO adto = new PersonLoginDTO();
		// ���۵Ǵ� ������ �ޱ�
		String pId = req.getParameter("signId");
		String pPwd = req.getParameter("signPwd");
		String pPh = req.getParameter("signPhone");
		adto.setId(pId); adto.setPwd(pPwd); adto.setPersonPhone(pPh);
		// Id �ߺ����� Ȯ��
		LoginDTO ldto=new LoginDTO();
		ldto.setId(pId); ldto.setPerOrCom("Person");
		int lresult = lsv.userLogin(ldto);
		// ȸ�� ���
		int aresult = asv.insert(adto);
		System.out.println("SignUpControllerImpl-execute: l:"+lresult+", a:"+aresult);
		if (lresult>0 && aresult>0) { mv.setPath("./result.jsp"); 
					    		      session.setAttribute("userId", pId);
					    		      session.setAttribute("resultMsg", "ȸ�������� ���ϵ帳�ϴ�!");
		} else { mv.setPath("./result.jsp");
			     session.setAttribute("resultMsg", "ȸ�����Կ� �����Ͽ����ϴ�.."); 
			     //out.println("<script>history.back();</script>");// �ƴϸ� �޽����� ��� �� �ڷΰ���
		}// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		return mv;
	}
}
