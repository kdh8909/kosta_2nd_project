package service.aimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import service.ApplicantService;
import service.dao.ApplicantDAO;
import service.dao.aimpl.ApplicantDAOImpl;
import service.dto.MessageBoxPCDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.dto.ScrapCompanyDTO;


public class ApplicantServiceImpl implements ApplicantService {
	private static ApplicantService sv = new ApplicantServiceImpl();

	public static ApplicantService getInstance() {
		return sv;
	}

	ApplicantDAO dao = new ApplicantDAOImpl().getInstance();
	
	@Override//ȸ�� ����
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

	@Override//ȸ�� ���� ����
	public int update(PersonLoginDTO memberData) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override//ȸ�� Ż��
	public int delete(PersonLoginDTO idOrOther) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	@Override
	public int insertPersonResume(PersonResumeDTO personResumeDTO) throws SQLException {
		
		int result = dao.insertPersonResume(personResumeDTO);
		if(result==0) {
			throw new SQLException("���� �̷¼� ����� ���������� ������� �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	public PersonResumeDTO resumeSelectbypersonId(String personId) throws SQLException {
		
		PersonResumeDTO personResumeDTO = dao.resumeSelectbypersonId(personId);
		return personResumeDTO;

	}

	@Override
	public int sendMessagePtoC(MessageBoxPCDTO messageBoxPCDTO) throws SQLException {
		int result = dao.sendMessagePtoC(messageBoxPCDTO);
		if(result==0) {
			throw new SQLException("������ ������� �޼����� ������ ���� ���������� ó������ �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	public List<MessageBoxPCDTO> companyCheckMessage(String companyReceiveId) throws SQLException {
		List<MessageBoxPCDTO> list = dao.companyCheckMessage(companyReceiveId);
		return list;
	}

	@Override
	public int companyCheckedMessage(int messageNo) throws SQLException {
		int result = dao.companyCheckedMessage(messageNo);
		if(result==0) {
			throw new SQLException("������ ������� ���� �޽����� �о��ٴ� ǥ�ð� ���������� ������Ʈ ���� �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	public int scrapCompany(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {
	      int result = dao.scrapCompany(scrapCompanyDTO);
	      if(result==0) {
	         throw new SQLException("���ο��� ��� ��ũ���� ���������� ������� �ʾҽ��ϴ�.");
	      } else {
	         return result;
	      }
	}

	@Override
	   public int scrapCompanyCancel(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {
	      int result = dao.scrapCompanyCancel(scrapCompanyDTO);
	      if(result==0) {
	         throw new SQLException("������ ȸ�� ��ũ�� ��Ҹ� ���������� �������� �ʾҽ��ϴ�.");
	      } else {
	         return result;
	      }
	   }

	@Override
	public List<ScrapCompanyDTO> scrapList() throws SQLException {
		List<ScrapCompanyDTO> list = dao.scrapList();
		return list;
	}
}
