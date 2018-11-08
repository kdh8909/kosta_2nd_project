package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
		System.out.println("SignUpControllerImpl-execute");
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
		// Id �ߺ�Ȯ��+ȸ�����
		LoginDTO ldto=new LoginDTO();
		ldto.setId(pId); ldto.setPerOrCom("Person");
		try { int lresult = lsv.userLogin(ldto);
			  int aresult = asv.insert(adto);
			  System.out.println("SignUpControllerImpl-execute: l:"+lresult+", a:"+aresult);
			  if(lresult>0) {// Id �ߺ����� Ȯ��
					if(aresult>0) { mv.setPath("./events/result.jsp"); //ȸ�� ���
							    	session.setAttribute("userId", pId);
							    	session.setAttribute("resultMsg", "ȸ�������� ���ϵ帳�ϴ�!");
					} else if(aresult==0) { mv.setPath("./events/result.jsp");
					                        session.setAttribute("resultMsg", "ȸ�����Կ� �����Ͽ����ϴ�.."); 
					       //out.println("<script>history.back();</script>"); // �ƴϸ� �޽����� ��� �� �ڷΰ���
					}
				} else if(lresult==0) { mv.setPath("./events/result.jsp");
					                    session.setAttribute("resultMsg", "���̵� �ߺ��˴ϴ�.."); 
				}// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		} catch (SQLException e) { mv.setPath("./errors/error.jsp"); 
								   session.setAttribute("errMsg", e.toString()); 
								   return mv; }
		return mv;
	}
}
