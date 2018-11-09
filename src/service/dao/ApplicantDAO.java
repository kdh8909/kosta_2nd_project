package service.dao;

import java.sql.SQLException;
import java.util.List;

import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.dto.ScrapCompanyDTO;
import service.dto.ScrapCompanyInfoDTO;

public interface ApplicantDAO {

	//ȸ�� ���� 
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	// �����̷¼� ��ü��ȸ
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException;

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
	    
	    // ������ ��� ��ũ�� ����Ʈ
		public List<ScrapCompanyDTO> scrapList() throws SQLException;
		
		// PtoC �޽��� ����Ʈ
		public List<MessageBoxPCDTO> msgBoxPCDTOselectAll() throws SQLException;

		// ������ ��ũ���� ȸ������ ���� (ȸ������ǥ��)
	    public List<ScrapCompanyInfoDTO> scrapedCompanyView(String personScraperId) throws SQLException;
}
