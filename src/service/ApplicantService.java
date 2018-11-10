package service;

import java.sql.SQLException;
import java.util.List;

import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.dto.ScrapCompanyDTO;
import service.dto.ScrapCompanyInfoDTO;

public interface ApplicantService {
	
	//회원 가입
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	//전체 이력서 보기
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException;
	
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException;
	
	//회원 정보수정
	public int update(PersonLoginDTO memberData) throws SQLException;
	
	//회원 탈퇴 
	public int delete(PersonLoginDTO idOrOther) throws SQLException;
	
	
	
	//개인 이력서 추가
	public int insertPersonResume(PersonResumeDTO personResumeDTO) throws SQLException;
		
	//개인 이력서 조회 (사람별)
	public PersonResumeDTO resumeSelectbypersonId(String personId) throws SQLException;
	
	// 개인 -> 기업 메세지 보내기
	public int sendMessagePtoC(MessageBoxPCDTO messageBoxPCDTO) throws SQLException;
		
	// 개인 -> 기업 메시지 조회 (기업이 받은 메시지 조회) //
	public List<MessageBoxPCDTO> companyCheckMessage(String companyReceiveId) throws SQLException;
		
	// 개인 > 기업 메시지 확인시 업데이트 (읽었음표시)
	public int companyCheckedMessage (int messageNo) throws SQLException;
	
	// 개인이 회사 스크랩
    public int scrapCompany(ScrapCompanyDTO scrapCompanyDTO) throws SQLException;
   
    // 개인이 회사 스크랩 취소
    public int scrapCompanyCancel(ScrapCompanyDTO scrapCompanyDTO) throws SQLException;
    
    // 개인이 회사 스크랩 리스트
    public List<ScrapCompanyDTO> scrapList() throws SQLException;
    
    //PtoC 메시지 리스트
	public List<MessageBoxPCDTO> msgBoxPCDTOselectAll() throws SQLException;

	// 개인이 스크랩한 회사정보 보기 (회사정보표출)
    public List<ScrapCompanyInfoDTO> scrapedCompanyView(String personScraperId) throws SQLException;
    
    // 개인 PW 및 전화번호수정하기
    public int updatePersonLogin(PersonLoginDTO personLoginDTO) throws SQLException;
    
    public PersonLoginDTO selectPersonMypage(String userId) throws SQLException;

}
