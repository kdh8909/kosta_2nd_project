package controller.perImpl;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.PersonResumeDTO;

public class InsertPersonResumeControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String saveDirectory = req.getServletContext().getRealPath("/save");
		int maxSize=1024*1024*100;
		String encoding = "UTF-8";
		
		MultipartRequest m = new MultipartRequest(req, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		File file = m.getFile("file");
		
		String personId = m.getParameter("personId");
		String personName = m.getParameter("personName");
		String personOccupation = m.getParameter("personOccupation");
		String personCareer = m.getParameter("personCareer");
		String personImg = m.getFilesystemName("file");
		int personAge = Integer.parseInt(m.getParameter("personAge"));		
		String personSex = m.getParameter("personSex");
		String personBirth = m.getParameter("personBirth");
		String personEmail = m.getParameter("personEmail");
		String personHopePlace = m.getParameter("personHopePlace");
		String personJobStatus = m.getParameter("personJobStatus");
		
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		PersonResumeDTO personResumeDTO = new PersonResumeDTO(personId, personName, personOccupation, personCareer,
				personImg, personAge, personSex, personBirth, personEmail, personHopePlace, personJobStatus);
		
		try {
			
			asv.insertPersonResume(personResumeDTO);
			
			// �̵��� ȭ�� ����
			url = "NewFile.html";
			
		} catch (SQLException e) {
			e.printStackTrace();  //�ֿܼ� ���
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}
	
		mv.setPath(url);
		return mv;
	}

}