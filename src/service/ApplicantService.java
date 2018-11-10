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
	
	//ȸ�� ����
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	//��ü �̷¼� ����
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException;
	
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException;
	
	//ȸ�� ��������
	public int update(PersonLoginDTO memberData) throws SQLException;
	
	//ȸ�� Ż�� 
	public int delete(PersonLoginDTO idOrOther) throws SQLException;
	
	
	
	//���� �̷¼� �߰�
	public int insertPersonResume(PersonResumeDTO personResumeDTO) throws SQLException;
		
	//���� �̷¼� ��ȸ (�����)
	public PersonResumeDTO resumeSelectbypersonId(String personId) throws SQLException;
	
	// ���� -> ��� �޼��� ������
	public int sendMessagePtoC(MessageBoxPCDTO messageBoxPCDTO) throws SQLException;
		
	// ���� -> ��� �޽��� ��ȸ (����� ���� �޽��� ��ȸ) //
	public List<MessageBoxPCDTO> companyCheckMessage(String companyReceiveId) throws SQLException;
		
	// ���� > ��� �޽��� Ȯ�ν� ������Ʈ (�о���ǥ��)
	public int companyCheckedMessage (int messageNo) throws SQLException;
	
	// ������ ȸ�� ��ũ��
    public int scrapCompany(ScrapCompanyDTO scrapCompanyDTO) throws SQLException;
   
    // ������ ȸ�� ��ũ�� ���
    public int scrapCompanyCancel(ScrapCompanyDTO scrapCompanyDTO) throws SQLException;
    
    // ������ ȸ�� ��ũ�� ����Ʈ
    public List<ScrapCompanyDTO> scrapList() throws SQLException;
    
    //PtoC �޽��� ����Ʈ
	public List<MessageBoxPCDTO> msgBoxPCDTOselectAll() throws SQLException;

	// ������ ��ũ���� ȸ������ ���� (ȸ������ǥ��)
    public List<ScrapCompanyInfoDTO> scrapedCompanyView(String personScraperId) throws SQLException;
    
    // ���� PW �� ��ȭ��ȣ�����ϱ�
    public int updatePersonLogin(PersonLoginDTO personLoginDTO) throws SQLException;
    
    public PersonLoginDTO selectPersonMypage(String userId) throws SQLException;

}
