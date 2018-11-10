package service.util;

public interface SqlQuerys {
   // ȣ����: String str=SqlQuerys.SELECTBYSEARCH;

   // ���ȸ������
   String C_JOIN  = "INSERT INTO company_login VALUES(?,?,?)";

   // ��� ���̵� �ߺ�üũ
   String C_SELECT_BY_SEARCH_ID = "SELECT * FROM company_login WHERE company_id = ?";

   // ��� �α���
   String C_LOGIN = "SELECT * FROM company_login WHERE company_id = ? AND company_pwd = ?";

   // ���������߰�
   String C_ADD_RECRUIT = "INSERT INTO COMPANY_recruit VALUES(RECRUIT_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";

   // �������� ��ü��ȸ
   String C_SELECT_RECRUIT_ALL = "SELECT * FROM COMPANY_recruit";  

   // �������� ��ȸ (ȸ���̸����� ��ȸ)
   String C_SELECT_RECRUIT_BY_C_NAME = "SELECT A.* FROM COMPANY_recruit A, company_info B WHERE A.company_id=B.company_id AND b.company_name LIKE ?";

   // ��ȸ�� �ø���
   String C_ADD_VIEWS = "UPDATE company_info SET company_views = company_views + 1 WHERE company_id = ?";

   // ����ȸ������
   String P_JOIN = "INSERT INTO person_login VALUES(?,?,?)";

   // ���� �α���
   String P_LOGIN = "SELECT * FROM person_login WHERE person_id =  ?  AND person_pwd = ? ";

   // ���� ���̵� �ߺ�üũ
   String P_SELECT_BY_SEARCH_ID = "SELECT * FROM person_login WHERE person_id = ?";

   // ���� �̷¼� �߰�
   String P_ADD_RESUME = "INSERT INTO PERSON_RESUME VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

   // ���� �̷¼� ��ȸ (��ü)
   String P_SELECT_RESUME_ALL = "SELECT * FROM PERSON_RESUME";

   // ���� �̷¼� ��ȸ (�����)
   String P_SELECT_RESUME_BY_ID = "SELECT * FROM PERSON_RESUME WHERE person_id = ?";

   // ��� -> ���� �޼��� ������
   String SEND_MESSAGE_C_P = "INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,?, 0, ?, ?)";

   // ��� -> ���� �޽��� ��ȸ
   String SELECT_MESSAGE_C_P = "SELECT * FROM MESSAGE_BOX_C_P WHERE person_receive_id= ?";

   // ��� > ���� �޽��� Ȯ�ν� ������Ʈ (�о���ǥ��)
   String CHECK_MESSAGE_C_P= "UPDATE MESSAGE_BOX_C_P SET message_flag = '1' WHERE message_no = ?";

   // ���� -> ��� �޼��� ������
   String SEND_MESSAGE_P_C = "INSERT INTO message_box_p_c VALUES(message_box_p_c_seq.nextval,SYSDATE,?, 0, ?, ?)";

   // ���� -> ��� �޽��� ��ȸ
   String SELECT_MESSAGE_P_C = "SELECT * FROM message_box_p_c WHERE company_receive_id = ?";

   // ���� > ��� �޽��� Ȯ�ν� ������Ʈ (�о���ǥ��)
   String CHECK_MESSAGE_P_C ="UPDATE message_box_p_c SET message_flag = '1' WHERE message_no = ?";

   // ȸ�纰 �����ڼ� (������ ����� �޽����� �ѹ��̶� ������ �����ڼ��� ī��Ʈ��)
   String SELECT_APPLICANT = "SELECT COUNT(DISTINCT person_send_id) FROM message_box_p_c WHERE company_receive_id = ?";

   // ������ ȸ�� ��ũ��
   String SCRAP_C_P = "INSERT INTO scrap_company VALUES(scrap_company_seq.nextval,SYSDATE,?, ?)";

   // ������ ȸ�� ��ũ�� ��� //
   String SCRAP_DELETE_C_P = "DELETE scrap_company WHERE person_scraper_id=? and company_target_id=?";

   // ȸ�纰 ��ũ�� ��
   String SCRAP_NUMBERS = "SELECT COUNT(*) FROM scrap_company WHERE company_target_id = ?";

   // ����� ���� ��ũ��
   String SCRAP_P_C = "INSERT INTO scrap_person VALUES(scrap_person_seq.nextval,SYSDATE,?, ?)";

   // ����� ���� ��ũ�� ��� //
   String SCRAP_DELETE_P_C= "DELETE scrap_person WHERE company_scraper_id=? and person_target_id=? ";
   
   // ����, ȸ�� ��ũ�� ����Ʈ
   String SCRAP_P_C_LIST = "SELECT * FROM scrap_person";
   
   // ����, ȸ�� �޽��� ����Ʈ
   String MESSAGE_P_C_LIST = "SELECT * FROM message_box_p_c";
   
   // ȸ��, ���� ��ũ�� ����Ʈ
   String SCRAP_C_P_LIST = "SELECT * FROM scrap_company";
   
   // ȸ��, ���� �޽��� ����Ʈ
   String MESSAGE_C_P_LIST = "SELECT * FROM message_box_c_p"; 
   
// �������������� ��ũ���� ȸ������ ǥ��
   String SCRAP_C_P_LIST_COMPANY_INFO = "SELECT B.COMPANY_ID, B.COMPANY_NAME, B.COMPANY_TYPE, B.COMPANY_PHONE, B.COMPANY_PAGE , C.RECRUIT_TILTE, C.COMPANY_EMPLOYMENT_TYPE, C.COMPANY_SALARY, C.RECRUIT_DEADLINE, C.COMPANY_WORK_ADDR FROM SCRAP_COMPANY A, COMPANY_INFO B, COMPANY_RECRUIT C WHERE A.COMPANY_TARGET_ID = B.COMPANY_ID AND A.PERSON_SCRAPER_ID = ? AND B.COMPANY_ID = C.COMPANY_ID";

   // ���ȸ������ ǥ���ϱ�
   String SELECT_ALL_COMPANIES = "SELECT * FROM COMPANY_INFO";
   
// ���� PW �� ��ȭ��ȣ�����ϱ�
  String UPDATE_PERSON_LOGIN =  "UPDATE PERSON_LOGIN SET PERSON_PWD = ?, PERSON_PHONE = ? WHERE PERSON_ID = ?";
  
  //���� PW �� ��ȭ��ȣ ǥ��
  String SELECT_PERSON_MYPAGE = "SELECT * FROM person_login WHERE PERSON_ID=?";
  
  //��� PW �� ��ȭ��ȣ ǥ��
  String SELECT_COMPANY_MYPAGE = "SELECT * FROM company_login WHERE COMPANY_ID=?";
  
//���� PW �� ��ȭ��ȣ�����ϱ�
 String UPDATE_COMPANY_LOGIN =  "UPDATE COMPANY_LOGIN SET COMPANY_PWD = ?, COMPANY_NUMBER = ? WHERE COMPANY_ID = ?";

}