package service.aimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import service.CompanyService;
import service.dao.CompanyDAO;
import service.dao.aimpl.CompanyDAOImpl;
import service.dto.CompanyInfoDTO;
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
			throw new SQLException("기업 채용 공고 등록이 정상적으로 수행되지 않았습니다.");
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
			throw new SQLException("기업 정보 조회 view수가 정상적으로 업데이트 되지 않았습니다.");
		} else {
			return result;
		}
	}

	@Override
	public int sendMessageCtoP(MessageBoxCPDTO messageBoxCPDTO) throws SQLException {
		
		int result = dao.sendMessageCtoP(messageBoxCPDTO);
		if(result==0) {
			throw new SQLException("기업이 개인회원에게 메세지를 보내는 것이 정상적으로 처리되지 않았습니다.");
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
			throw new SQLException("기업이 개인에게 보낸 메시지를 읽었다는 표시가 정상적으로 업데이트 되지 않았습니다.");
		} else {
			return result;
		}
	}

	@Override
	public int applicantCompany(String companyReceiveId) throws SQLException {
		int result = dao.applicantCompany(companyReceiveId);
		if(result==0) {
			throw new SQLException("회사별 지원자수를 정상적으로 구하지 못하였습니다.");
		} else {
			return result;
		}
	}

	@Override
	   public int scrapCompanyCount(String companyTargetId) throws SQLException {
	      int result = dao.scrapCompanyCount(companyTargetId);
	      if(result==0) {
	         throw new SQLException("해당 회사 스크랩이 존재하지 않았습니다.");
	      } else {
	         return result;
	      }
	   }

	@Override
	   public int scrapPerson(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      int result = dao.scrapPerson(scrapPersonDTO);
	      if(result==0) {
	         throw new SQLException("기업에서 개인 스크랩이 정상적으로 수행되지 않았습니다.");
	      } else {
	         return result;
	      }
	   }

	@Override
	   public int scrapPersonCancel(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      int result = dao.scrapPersonCancel(scrapPersonDTO);
	      if(result==0) {
	         throw new SQLException("개인회원의 스크랩 취소가 정상적으로 수행되지 않았습니다.");
	      } else {
	         return result;
	      }
	   }

	@Override
	public List<ScrapPersonDTO> scrapList() throws SQLException {
		List<ScrapPersonDTO> list = dao.scrapList();
		return list;
	}

	@Override
	public List<MessageBoxCPDTO> msgBoxCPDTOselectAll() throws SQLException {
		List<MessageBoxCPDTO> list = dao.msgBoxCPDTOselectAll();
		return list;
	}
	
	@Override
	public List<CompanyInfoDTO> selectAllCompanyInfo() throws SQLException {
		List<CompanyInfoDTO> list = dao.selectAllCompanyInfo();
		return list;
	}

	@Override
	public CompanyLoginDTO selectCompanyMypage(String userId) throws SQLException {
		CompanyLoginDTO companyLoginDTO = dao.selectCompanyMypage(userId);
		return companyLoginDTO;
	}

	@Override
	public int updateCompanyLogin(CompanyLoginDTO companyLoginDTO) throws SQLException {
		int result = dao.updateCompanyLogin(companyLoginDTO);
		if(result==0) {
			throw new SQLException("기업의 PW 및 전화번호 수정이 정상적으로 수행되지 않았습니다.");
		} else {
			return result;
		}
	}

	@Override
	public int companyDeleteMessage(String messageNo) throws SQLException {
		int result = dao.companyDeleteMessage(messageNo);
		if(result==0) {
			throw new SQLException("기업의 받은메시지 삭제가 정상적으로 수행되지 않았습니다.");
		} else {
			return result;
		}
	}

	@Override
	public List<ScrapPersonDTO> scrapedPersonView(String companyScraperId) throws SQLException {
		List<ScrapPersonDTO> list = dao.scrapedPersonView(companyScraperId);
		return list;
	}

	@Override
	public CompanyInfoDTO selectCompanyInfoByCompanyId(String companyId) throws SQLException {
		CompanyInfoDTO companyInfoDTO = dao.selectCompanyInfoByCompanyId(companyId);
		return companyInfoDTO;
	}

	@Override
	public boolean checkCompanyInfoExists(String companyId) throws SQLException {
		boolean result = dao.checkCompanyInfoExists(companyId);
		return result;
	}

	@Override
	public int updateCompanyInfo(CompanyInfoDTO companyInfoDTO) throws SQLException {

		int result = dao.updateCompanyInfo(companyInfoDTO);
		if(result==0) {
			throw new SQLException("기업의 정보 수정이 정상적으로 수행되지 않았습니다.");
		} else {
			return result;
		}
		
	}
	   @Override
	   public List<Integer> showbackgroundDb() throws SQLException {
	      List<Integer> list = new ArrayList<>();
	      
	         list.add(dao.showAll());
	         list.add(dao.showCompany());
	         list.add(dao.showUser());      
	      
	      
	      return list;
	   }

}
