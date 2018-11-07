package service.aimpl;

import java.util.List;

import controller.standby.ApplicantDTO;
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
	
	@Override
	public List<PersonResumeDTO> selectAll() {
		 List<PersonResumeDTO>  list = dao.selectAll();//dao »£√‚
		return list;
	}

	@Override
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean idCheck(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insert(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
}
