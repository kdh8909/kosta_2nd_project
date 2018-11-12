package controller.perImpl;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.PersonResumeDTO;

public class UpdatePersonResumeControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String saveDirectory = req.getServletContext().getRealPath("/save/person");
		int maxSize=1024*1024*100;
		String encoding = "UTF-8";
		
		HttpSession session = req.getSession();
		String personId = (String) session.getAttribute("userId");
		
		MultipartRequest m = new MultipartRequest(req, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		File file = m.getFile("file");
		
		String personName = m.getParameter("personName");
		String personOccupation = m.getParameter("personOccupation");
		String personCareer = m.getParameter("personCareer");
		String personImg = file.getName();
		int personAge = Integer.parseInt(m.getParameter("personAge"));		
		String personSex = m.getParameter("personSex");
		String personBirth = m.getParameter("personBirth");
		String personEmail = m.getParameter("personEmail");
		String personHopePlace = m.getParameter("personHopePlace");
		String personJobStatus = m.getParameter("personJobStatus");
		String personExperience = m.getParameter("personExperience");
		String personSelfIntroductionTitle = m.getParameter("personSelfIntroductionTitle");
		String personSelfIntroduction = m.getParameter("personSelfIntroduction");
				
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		PersonResumeDTO personResumeDTO = new PersonResumeDTO(personId, personName, personOccupation, personCareer,
				personImg, personAge, personSex, personBirth, personEmail, personHopePlace, personJobStatus,
				personExperience, personSelfIntroductionTitle, personSelfIntroduction);
		
		System.out.println(personResumeDTO);
		
		try {
			
			asv.updatePersonResume(personResumeDTO);
			
			PersonResumeDTO dto = asv.resumeSelectbypersonId(personId);
			session.setAttribute("dto", dto);
			
			// 이동할 화면 설정
			url = "resume2.jsp";
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}
	
		mv.setPath(url);
		return mv;
	}

}
