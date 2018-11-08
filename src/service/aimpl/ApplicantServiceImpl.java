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

	
	
	
	@Override
	public int insertPersonResume(PersonResumeDTO personResumeDTO) throws SQLException {
		
		int result = dao.insertPersonResume(personResumeDTO);
		if(result==0) {
			throw new SQLException("개인 이력서 등록이 정상적으로 수행되지 않았습니다.");
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
			throw new SQLException("개인이 기업에게 메세지를 보내는 것이 정상적으로 처리되지 않았습니다.");
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
			throw new SQLException("개인이 기업에게 보낸 메시지를 읽었다는 표시가 정상적으로 업데이트 되지 않았습니다.");
		} else {
			return result;
		}
	}

	@Override
	public int scrapCompany(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {
	      int result = dao.scrapCompany(scrapCompanyDTO);
	      if(result==0) {
	         throw new SQLException("개인에서 기업 스크랩이 정상적으로 수행되지 않았습니다.");
	      } else {
	         return result;
	      }
	}

	@Override
	   public int scrapCompanyCancel(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {
	      int result = dao.scrapCompanyCancel(scrapCompanyDTO);
	      if(result==0) {
	         throw new SQLException("개인이 회사 스크랩 취소를 정상적으로 수행하지 않았습니다.");
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
