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

		// ���������߰�
		public int insertCompanyRecruit(CompanyRecruitDTO companyRecruitDTO) throws SQLException;
		
		// �������� ��ü��ȸ//
		public List<CompanyRecruitDTO> companyRecruitSelectAll() throws SQLException;
		
		// �������� ��ȸ (ȸ���̸����� ��ȸ)//
		public List<CompanyRecruitDTO> companyRecruitSelectByCompanyName(String companyName) throws SQLException;
		
		// ��ȸ�� �ø���
		public int updateViews(String companyId) throws SQLException;
		
		// ��� -> ���� �޼��� ������
		public int sendMessageCtoP(MessageBoxCPDTO messageBoxCPDTO) throws SQLException;

		// ��� -> ���� �޽��� ��ȸ (������ ���� �޽��� ��ȸ) //
		public List<MessageBoxCPDTO> personCheckMessage (String personReceiveId) throws SQLException;
		
		// ��� > ���� �޽��� Ȯ�ν� ������Ʈ (�о���ǥ��)
		public int personCheckedMessage (int messageNo) throws SQLException;
		
		// ȸ�纰 �����ڼ�
		public int applicantCompany(String companyReceiveId) throws SQLException;
		
		// ȸ�纰 ��ũ�� �� 
	    public int scrapCompanyCount(String companyTargetId) throws SQLException;
	   
	    // ����� ���� ��ũ�� - scrapPerson
	    public int scrapPerson(ScrapPersonDTO scrapPersonDTO) throws SQLException;
	   
	    // ����� ���� ��ũ�� ��� - scrapPerson
	    public int scrapPersonCancel(ScrapPersonDTO scrapPersonDTO) throws SQLException;
	    
	    // ����� ���� ��ũ�� ����Ʈ
		public List<ScrapPersonDTO> scrapList() throws SQLException;
		
		//CtoP �޽��� ����Ʈ
		public List<MessageBoxCPDTO> msgBoxCPDTOselectAll() throws SQLException;
		
	    // ��ü������� ǥ��
	    public List<CompanyInfoDTO> selectAllCompanyInfo() throws SQLException;
	    
	    // ��� PW �� ��ȭ��ȣ ��������
	    public CompanyLoginDTO selectCompanyMypage(String userId) throws SQLException;
	    
	    // ��� PW �� ��ȭ��ȣ �����ϱ�
	    public int updateCompanyLogin(CompanyLoginDTO companyLoginDTO) throws SQLException;
	    
	    // ��� ���� �޽��� ����
	    public int companyDeleteMessage(String messageNo) throws SQLException;
	    
	    //ȸ�簡 ��ũ���� ���� ����
	    public List<ScrapPersonDTO> scrapedPersonView(String companyScraperId) throws SQLException;
	    
	    
	    //ȸ��ID�� ȸ������ǥ��
	    public CompanyInfoDTO selectCompanyInfoByCompanyId(String companyId) throws SQLException;
	    
	    //ȸ�� �����ԷµǾ��ִ��� ��ȸ
	    public boolean checkCompanyInfoExists(String companyId) throws SQLException;
	    
	    // ȸ�� ���� ����
	    public int updateCompanyInfo(CompanyInfoDTO companyInfoDTO) throws SQLException;
	    
	    public List<Integer> showbackgroundDb() throws SQLException;
	    
}
