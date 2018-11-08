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
		// 전송되는 데이터 받기
		String pId = req.getParameter("signId");
		String pPwd = req.getParameter("signPwd");
		String pPh = req.getParameter("signPhone");
		adto.setId(pId); adto.setPwd(pPwd); adto.setPersonPhone(pPh);
		// Id 중복확인+회원등록
		LoginDTO ldto=new LoginDTO();
		ldto.setId(pId); ldto.setPerOrCom("Person");
		try { int lresult = lsv.userLogin(ldto);
			  int aresult = asv.insert(adto);
			  System.out.println("SignUpControllerImpl-execute: l:"+lresult+", a:"+aresult);
			  if(lresult>0) {// Id 중복여부 확인
					if(aresult>0) { mv.setPath("./events/result.jsp"); //회원 등록
							    	session.setAttribute("userId", pId);
							    	session.setAttribute("resultMsg", "회원가입을 축하드립니다!");
					} else if(aresult==0) { mv.setPath("./events/result.jsp");
					                        session.setAttribute("resultMsg", "회원가입에 실패하였습니다.."); 
					       //out.println("<script>history.back();</script>"); // 아니면 메시지와 출력 후 뒤로가기
					}
				} else if(lresult==0) { mv.setPath("./events/result.jsp");
					                    session.setAttribute("resultMsg", "아이디가 중복됩니다.."); 
				}// 최종 결과를 받아서 저장해서 뷰로 이동한다
		} catch (SQLException e) { mv.setPath("./errors/error.jsp"); 
								   session.setAttribute("errMsg", e.toString()); 
								   return mv; }
		return mv;
	}
}
