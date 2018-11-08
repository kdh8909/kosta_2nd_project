package service.aimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import service.ApplicantService;
import service.dao.ApplicantDAO;
import service.dao.aimpl.ApplicantDAOImpl;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;


public class ApplicantServiceImpl implements ApplicantService {
	private static ApplicantService sv = new ApplicantServiceImpl();

	public static ApplicantService getInstance() {
		return sv;
	}

	ApplicantDAO dao = new ApplicantDAOImpl().getInstance();
	
	@Override//회원 가입
	public int insert(PersonLoginDTO memberData) throws SQLException {
		int result=0;
		result=dao.insert(memberData);
		System.out.println("ApplicantServiceImpl-insert-result: "+result);
		return result;
	}
	
	@Override
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException {
		List<PersonResumeDTO> list = dao.resumeSelectAll();
		return list;
	}
	

	@Override
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override//회원 정보 수정
	public int update(PersonLoginDTO memberData) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override//회원 탈퇴
	public int delete(PersonLoginDTO idOrOther) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
}
