package service.util;

public interface SqlQuerys {
   // 호출방법: String str=SqlQuerys.SELECTBYSEARCH;

   // 기업회원가입
   String C_JOIN  = "INSERT INTO company_login VALUES(?,?,?)";

   // 기업 아이디 중복체크
   String C_SELECT_BY_SEARCH_ID = "SELECT * FROM company_login WHERE company_id = ?";

   // 기업 로그인
   String C_LOGIN = "SELECT * FROM company_login WHERE company_id = ? AND company_pwd = ?";

   // 모집공고추가
   String C_ADD_RECRUIT = "INSERT INTO COMPANY_recruit VALUES(RECRUIT_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";

   // 모집공고 전체조회
   String C_SELECT_RECRUIT_ALL = "SELECT * FROM COMPANY_recruit";  

   // 모집공고 조회 (회사이름으로 조회)
   String C_SELECT_RECRUIT_BY_C_NAME = "SELECT A.* FROM COMPANY_recruit A, company_info B WHERE A.company_id=B.company_id AND b.company_name LIKE ?";

   // 조회수 올리기
   String C_ADD_VIEWS = "UPDATE company_info SET company_views = company_views + 1 WHERE company_id = ?";

   // 개인회원가입
   String P_JOIN = "INSERT INTO person_login VALUES(?,?,?)";

   // 개인 로그인
   String P_LOGIN = "SELECT * FROM person_login WHERE person_id =  ?  AND person_pwd = ? ";

   // 개인 아이디 중복체크
   String P_SELECT_BY_SEARCH_ID = "SELECT * FROM person_login WHERE person_id = ?";

   // 개인 이력서 추가
   String P_ADD_RESUME = "INSERT INTO PERSON_RESUME VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

   // 개인 이력서 조회 (전체)
   String P_SELECT_RESUME_ALL = "SELECT * FROM PERSON_RESUME";

   // 개인 이력서 조회 (사람별)
   String P_SELECT_RESUME_BY_ID = "SELECT * FROM PERSON_RESUME WHERE person_id = ?";

   // 기업 -> 개인 메세지 보내기
   String SEND_MESSAGE_C_P = "INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,?, 0, ?, ?)";

   // 기업 -> 개인 메시지 조회
   String SELECT_MESSAGE_C_P = "SELECT * FROM MESSAGE_BOX_C_P WHERE person_receive_id= ?";

   // 기업 > 개인 메시지 확인시 업데이트 (읽었음표시)
   String CHECK_MESSAGE_C_P= "UPDATE MESSAGE_BOX_C_P SET message_flag = '1' WHERE message_no = ?";

   // 개인 -> 기업 메세지 보내기
   String SEND_MESSAGE_P_C = "INSERT INTO message_box_p_c VALUES(message_box_p_c_seq.nextval,SYSDATE,?, 0, ?, ?)";

   // 개인 -> 기업 메시지 조회
   String SELECT_MESSAGE_P_C = "SELECT * FROM message_box_p_c WHERE company_receive_id = ?";

   // 개인 > 기업 메시지 확인시 업데이트 (읽었음표시)
   String CHECK_MESSAGE_P_C ="UPDATE message_box_p_c SET message_flag = '1' WHERE message_no = ?";

   // 회사별 지원자수 (개인이 기업에 메시지를 한번이라도 보내면 지원자수로 카운트됨)
   String SELECT_APPLICANT = "SELECT COUNT(DISTINCT person_send_id) FROM message_box_p_c WHERE company_receive_id = ?";

   // 개인이 회사 스크랩
   String SCRAP_C_P = "INSERT INTO scrap_company VALUES(scrap_company_seq.nextval,SYSDATE,?, ?)";

   // 개인이 회사 스크랩 취소 //
   String SCRAP_DELETE_C_P = "DELETE scrap_company WHERE person_scraper_id=? and company_target_id=?";

   // 회사별 스크랩 수
   String SCRAP_NUMBERS = "SELECT COUNT(*) FROM scrap_company WHERE company_target_id = ?";

   // 기업이 개인 스크랩
   String SCRAP_P_C = "INSERT INTO scrap_person VALUES(scrap_person_seq.nextval,SYSDATE,?, ?)";

   // 기업이 개인 스크랩 취소 //
   String SCRAP_DELETE_P_C= "DELETE scrap_person WHERE company_scraper_id=? and person_target_id=? ";
   
   // 개인, 회사 스크랩 리스트
   String SCRAP_P_C_LIST = "SELECT * FROM scrap_person";
   
   // 개인, 회사 메시지 리스트
   String MESSAGE_P_C_LIST = "SELECT * FROM message_box_p_c";
   
   // 회사, 개인 스크랩 리스트
   String SCRAP_C_P_LIST = "SELECT * FROM scrap_company";
   
   // 회사, 개인 메시지 리스트
   String MESSAGE_C_P_LIST = "SELECT * FROM message_box_c_p"; 
   
// 개인페이지에서 스크랩된 회사정보 표출
   String SCRAP_C_P_LIST_COMPANY_INFO = "SELECT B.COMPANY_ID, B.COMPANY_NAME, B.COMPANY_TYPE, B.COMPANY_PHONE, B.COMPANY_PAGE , C.RECRUIT_TILTE, C.COMPANY_EMPLOYMENT_TYPE, C.COMPANY_SALARY, C.RECRUIT_DEADLINE, C.COMPANY_WORK_ADDR FROM SCRAP_COMPANY A, COMPANY_INFO B, COMPANY_RECRUIT C WHERE A.COMPANY_TARGET_ID = B.COMPANY_ID AND A.PERSON_SCRAPER_ID = ? AND B.COMPANY_ID = C.COMPANY_ID";

   // 모든회사정보 표출하기
   String SELECT_ALL_COMPANIES = "SELECT * FROM COMPANY_INFO";
   
// 개인 PW 및 전화번호수정하기
  String UPDATE_PERSON_LOGIN =  "UPDATE PERSON_LOGIN SET PERSON_PWD = ?, PERSON_PHONE = ? WHERE PERSON_ID = ?";
  
  //개인 PW 및 전화번호 표출
  String SELECT_PERSON_MYPAGE = "SELECT * FROM person_login WHERE PERSON_ID=?";
  
  //기업 PW 및 전화번호 표출
  String SELECT_COMPANY_MYPAGE = "SELECT * FROM company_login WHERE COMPANY_ID=?";
  
//개인 PW 및 전화번호수정하기
 String UPDATE_COMPANY_LOGIN =  "UPDATE COMPANY_LOGIN SET COMPANY_PWD = ?, COMPANY_NUMBER = ? WHERE COMPANY_ID = ?";

}