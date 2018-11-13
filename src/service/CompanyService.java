package service;

import java.sql.SQLException;
import java.util.List;

import service.dto.CompanyInfoDTO;
import service.dto.CompanyLoginDTO;
import service.dto.CompanyRecruitDTO;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.dto.ScrapPersonDTO;

public interface CompanyService {

		// 모집공고추가
		public int insertCompanyRecruit(CompanyRecruitDTO companyRecruitDTO) throws SQLException;
		
		// 모집공고 전체조회//
		public List<CompanyRecruitDTO> companyRecruitSelectAll() throws SQLException;
		
		// 모집공고 조회 (회사이름으로 조회)//
		public List<CompanyRecruitDTO> companyRecruitSelectByCompanyName(String companyName) throws SQLException;
		
		// 조회수 올리기
		public int updateViews(String companyId) throws SQLException;
		
		// 기업 -> 개인 메세지 보내기
		public int sendMessageCtoP(MessageBoxCPDTO messageBoxCPDTO) throws SQLException;

		// 기업 -> 개인 메시지 조회 (개인이 받은 메시지 조회) //
		public List<MessageBoxCPDTO> personCheckMessage (String personReceiveId) throws SQLException;
		
		// 기업 > 개인 메시지 확인시 업데이트 (읽었음표시)
		public int personCheckedMessage (int messageNo) throws SQLException;
		
		// 회사별 지원자수
		public int applicantCompany(String companyReceiveId) throws SQLException;
		
		// 회사별 스크랩 수 
	    public int scrapCompanyCount(String companyTargetId) throws SQLException;
	   
	    // 기업이 개인 스크랩 - scrapPerson
	    public int scrapPerson(ScrapPersonDTO scrapPersonDTO) throws SQLException;
	   
	    // 기업이 개인 스크랩 취소 - scrapPerson
	    public int scrapPersonCancel(ScrapPersonDTO scrapPersonDTO) throws SQLException;
	    
	    // 기업이 개인 스크랩 리스트
		public List<ScrapPersonDTO> scrapList() throws SQLException;
		
		//CtoP 메시지 리스트
		public List<MessageBoxCPDTO> msgBoxCPDTOselectAll() throws SQLException;
		
	    // 전체기업정보 표출
	    public List<CompanyInfoDTO> selectAllCompanyInfo() throws SQLException;
	    
	    // 기업 PW 및 전화번호 가져오기
	    public CompanyLoginDTO selectCompanyMypage(String userId) throws SQLException;
	    
	    // 기업 PW 및 전화번호 수정하기
	    public int updateCompanyLogin(CompanyLoginDTO companyLoginDTO) throws SQLException;
	    
	    // 기업 받은 메시지 삭제
	    public int companyDeleteMessage(String messageNo) throws SQLException;
	    
	    //회사가 스크랩한 개인 보기
	    public List<ScrapPersonDTO> scrapedPersonView(String companyScraperId) throws SQLException;
	    
	    
	    //회사ID별 회사정보표출
	    public CompanyInfoDTO selectCompanyInfoByCompanyId(String companyId) throws SQLException;
	    
	    //회사 정보입력되어있는지 조회
	    public boolean checkCompanyInfoExists(String companyId) throws SQLException;
	    
	    // 회사 정보 수정
	    public int updateCompanyInfo(CompanyInfoDTO companyInfoDTO) throws SQLException;
	    
	    public List<Integer> showbackgroundDb() throws SQLException;
	    
}
