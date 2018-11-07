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
	
	@Override//ȸ�� ����
	public int insert(PersonLoginDTO memberData) {
		int result=0;
		try { result=dao.insert(memberData);
		} catch (SQLException e) { e.printStackTrace(); }
		System.out.println("ApplicantServiceImpl-insert-result: "+result);
		return result;
	}
	
	@Override
	public List<PersonResumeDTO> selectAll() {
		List<PersonResumeDTO> list=new ArrayList();
		try { list = dao.selectAll();//dao ȣ��
		} catch (SQLException e) { e.printStackTrace(); }
		return list;
	}

	@Override
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override//ȸ�� ���� ����
	public int update(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override//ȸ�� Ż��
	public int delete(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}
}
