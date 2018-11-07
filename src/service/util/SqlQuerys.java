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
   String C_ADD_RECRUIT = "INSERT INTO COMPANY_recruit VALUES('DDD','WARKADDR1','EMPLOYMENT1','SALARY1','CAREER1','EDUCATION1','TITLE1','DEADLINE1')";

   // �������� ��ȸ (ȸ���̸����� ��ȸ)
   String C_SELECT_RECRUIT_ALL = "SELECT * FROM COMPANY_recruit";  

   // �������� ��ȸ (ȸ���̸����� ��ȸ)
   String C_SELECT_RECRUIT_BY_C_NAME = "SELECT A.* FROM COMPANY_recruit A, company_login B WHERE A.company_id=B.company_id AND A.company_number LIKE '%?%'";  

   // ��ȸ�� �ø���
   String C_ADD_VIEWS = "INSERT INTO company_info SET company_views = company_views + 1 WHERE company_id=?";

   // ����ȸ������
   String P_JOIN = "INSERT INTO person_login VALUES(?,?,?)";

   // ���� �α���
   String P_LOGIN = "SELECT * FROM person_login WHERE person_id = ? AND person_pwd = ? ";

   // ���� ���̵� �ߺ�üũ
   String P_SELECT_BY_SEARCH_ID = "SELECT * FROM person_login WHERE person_id = ? ";

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

   // ������ ȸ�� ��ũ�� ���
   String SCRAP_DELETE_C_P = "DELETE scrap_company WHERE scrap_no=?";

   // ȸ�纰 ��ũ�� ��
   String SCRAP_NUMBERS = "SELECT COUNT(*) FROM scrap_company WHERE company_target_id = ?";

   // ����� ���� ��ũ��
   String SCRAP_P_C = "INSERT INTO scrap_person VALUES(scrap_person_seq.nextval,SYSDATE,?, ?)";

   // ����� ���� ��ũ�� ���
   String SCRAP_DELETE_P_C= "DELETE scrap_person WHERE scrap_no=?";
}