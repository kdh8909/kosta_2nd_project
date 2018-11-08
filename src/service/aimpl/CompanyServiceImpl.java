package service.aimpl;

import java.sql.SQLException;
import java.util.List;

import service.ApplicantService;
import service.CompanyService;
import service.dao.ApplicantDAO;
import service.dao.CompanyDAO;
import service.dao.aimpl.ApplicantDAOImpl;
import service.dao.aimpl.CompanyDAOImpl;
import service.dto.CompanyLoginDTO;
import service.dto.CompanyRecruitDTO;
import service.dto.MessageBoxCPDTO;
import service.dto.ScrapPersonDTO;

public class CompanyServiceImpl implements CompanyService {
	private static CompanyService sv = new CompanyServiceImpl();

	public static CompanyService getInstance() {
		return sv;
	}
	
	CompanyDAO dao = new CompanyDAOImpl().getInstance();



	@Override
	public int insertCompanyRecruit(CompanyRecruitDTO companyRecruitDTO) throws SQLException {
		
		int result = dao.insertCompanyRecruit(companyRecruitDTO);
		if(result==0) {
			throw new SQLException("��� ä�� ���� ����� ���������� ������� �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}
	
	@Override
	   public List<CompanyRecruitDTO> companyRecruitSelectAll() throws SQLException {
	      List<CompanyRecruitDTO> list = dao.companyRecruitSelectAll();
	      return list;
	   }

	@Override
	public List<CompanyRecruitDTO> companyRecruitSelectByCompanyName(String companyName) throws SQLException {
		List<CompanyRecruitDTO> list = dao.companyRecruitSelectByCompanyName(companyName);
		return list;
	}

	@Override
	public int updateViews(String companyId) throws SQLException {
		int result = dao.updateViews(companyId);
		if(result==0) {
			throw new SQLException("��� ���� ��ȸ view���� ���������� ������Ʈ ���� �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	public int sendMessageCtoP(MessageBoxCPDTO messageBoxCPDTO) throws SQLException {
		
		int result = dao.sendMessageCtoP(messageBoxCPDTO);
		if(result==0) {
			throw new SQLException("����� ����ȸ������ �޼����� ������ ���� ���������� ó������ �ʾҽ��ϴ�.");
		} else {
			return result;
		}

	}

	@Override
	public List<MessageBoxCPDTO> personCheckMessage(String personReceiveId) throws SQLException {
		List<MessageBoxCPDTO> list = dao.personCheckMessage(personReceiveId);
		return list;
	}

	@Override
	public int personCheckedMessage(int messageNo) throws SQLException {
		int result = dao.personCheckedMessage(messageNo);
		if(result==0) {
			throw new SQLException("����� ���ο��� ���� �޽����� �о��ٴ� ǥ�ð� ���������� ������Ʈ ���� �ʾҽ��ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	public int applicantCompany(String companyReceiveId) throws SQLException {
		int result = dao.applicantCompany(companyReceiveId);
		if(result==0) {
			throw new SQLException("ȸ�纰 �����ڼ��� ���������� ������ ���Ͽ����ϴ�.");
		} else {
			return result;
		}
	}

	@Override
	   public int scrapCompanyCount(String companyTargetId) throws SQLException {
	      int result = dao.scrapCompanyCount(companyTargetId);
	      if(result==0) {
	         throw new SQLException("�ش� ȸ�� ��ũ���� �������� �ʾҽ��ϴ�.");
	      } else {
	         return result;
	      }
	   }

	@Override
	   public int scrapPerson(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      int result = dao.scrapPerson(scrapPersonDTO);
	      if(result==0) {
	         throw new SQLException("������� ���� ��ũ���� ���������� ������� �ʾҽ��ϴ�.");
	      } else {
	         return result;
	      }
	   }

	@Override
	   public int scrapPersonCancel(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      int result = dao.scrapPersonCancel(scrapPersonDTO);
	      if(result==0) {
	         throw new SQLException("����ȸ���� ��ũ�� ��Ұ� ���������� ������� �ʾҽ��ϴ�.");
	      } else {
	         return result;
	      }
	   }

}
