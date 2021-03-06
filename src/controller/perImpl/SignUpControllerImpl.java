package controller.perImpl;

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
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		PersonLoginDTO adto = new PersonLoginDTO();
		// 전송되는 데이터 받기
		String pId = req.getParameter("signId");
		String pPwd = req.getParameter("signPwd");
		String pPh = req.getParameter("signPhone");
		String perOrCom = req.getParameter("signPerOrCom");
		System.out.println("SignUpControllerImpl-execute: "+perOrCom);
		adto.setId(pId); adto.setPwd(pPwd); adto.setPersonPhone(pPh);
		// Id 중복확인+회원등록
		LoginDTO ldto=new LoginDTO();
		ldto.setId(pId); ldto.setPerOrCom(perOrCom);
		try { int lresult = lsv.userLogin(ldto);
			  if(lresult>0) {// Id 중복여부 확인
				  int aresult = asv.insert(adto);
				  System.out.println("SignUpControllerImpl-execute: l:"+lresult+", a:"+aresult);
					if(aresult>0) { mv.setPath("./events/result.jsp"); //회원 등록
							    	session.setAttribute("userId", pId);
							    	session.setAttribute("perOrCom", perOrCom);
							    	session.setAttribute("resultMsg", "회원가입을 축하드립니다!");
					} else if(aresult==0) { mv.setPath("./events/result.jsp");
					                        session.setAttribute("resultMsg", "회원가입에 실패하였습니다.."); 
					       //out.println("<script>history.back();</script>"); // 아니면 메시지와 출력 후 뒤로가기
					}
				} else if(lresult==0) { mv.setPath("./events/result.jsp");
					                    session.setAttribute("resultMsg", "아이디가 중복됩니다.."); 
				}// 최종 결과를 받아서 저장해서 뷰로 이동한다
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "회원가입에 실패하였습니다.."); 
								   return mv; }
		return mv;
	}
}
