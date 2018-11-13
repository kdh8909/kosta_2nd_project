<<<<<<< HEAD
=======
>>>>>>> branch 'master' of https://github.com/kdh8909/kosta_2nd_project.git

SELECT * FROM COMPANY_LOGIN

------------------------------------------------ 새계정추가
CONN system/admin;
CREATE USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 account unlock;
GRANT CONNECT, RESOURCE TO pjt2;

CONN pjt2/pjt2;
DROP USER pjt2 CASCADE;

------------------------------------------------ 테이블드랍

DROP TABLE company_login;
DROP TABLE COMPANY_RECRUIT;
DROP TABLE company_info;
DROP TABLE person_login;
DROP TABLE person_resume;
DROP TABLE message_box_c_p;
DROP TABLE message_box_p_c;
DROP TABLE scrap_company;
DROP TABLE scrap_person;

------------------------------------------------ 테이블생성

CREATE TABLE company_login
(
   company_id            VARCHAR2(20) NOT NULL PRIMARY KEY ,
   company_pwd           VARCHAR2(18) NOT NULL ,
   company_number        VARCHAR2(18) NOT NULL 
);

CREATE TABLE COMPANY_RECRUIT
(
   recruit_number        NUMBER(5) NOT NULL PRIMARY KEY,
   company_id            VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade,
   company_work_addr     VARCHAR2(100) NOT NULL ,
   company_employment_type  VARCHAR2(100) NOT NULL ,
   company_salary        VARCHAR2(100)  NULL,
   company_career        VARCHAR2(100) NOT NULL ,
   company_education     VARCHAR2(300) NOT NULL,
   recruit_tilte         VARCHAR2(300) NOT NULL ,
   recruit_deadline      VARCHAR2(100) NOT NULL 
);


CREATE TABLE company_info
(
   company_id            VARCHAR2(20) NOT NULL PRIMARY KEY references company_login(company_id) on delete cascade,
   company_category      VARCHAR2(100) NOT NULL ,
   company_ceo           VARCHAR2(20) NOT NULL ,
   company_name          VARCHAR2(100) NOT NULL ,
   company_head_addr     VARCHAR2(300) NOT NULL ,
   company_type          VARCHAR2(300) NOT NULL ,
    company_employees     NUMBER(5) NOT NULL,
   company_phone         VARCHAR2(18) NOT NULL ,
   company_estblish      VARCHAR2(100) NOT NULL ,
   company_page          VARCHAR2(200) NOT NULL,
   company_VIEWS        NUMBER(7),
   company_img          VARCHAR2(50) NOT NULL
);

CREATE TABLE person_login
(
   person_id             VARCHAR2(20) NOT NULL PRIMARY KEY ,
   person_pwd            VARCHAR2(18) NOT NULL  ,
   person_phone          VARCHAR2(20) NOT NULL
);

CREATE TABLE person_resume
(
   person_id             VARCHAR2(20) NOT NULL PRIMARY KEY references person_login(person_id) on delete cascade,
   person_name           VARCHAR2(30) NOT NULL ,
   person_occupation     VARCHAR2(30) NOT NULL ,
   person_career         VARCHAR2(4000) NOT NULL ,
   person_img            VARCHAR2(30) NOT NULL ,
   person_age            NUMBER(3)  NULL ,
   person_sex            VARCHAR2(10) NOT NULL ,
   person_birth          VARCHAR2(30) NOT NULL ,
   person_email          VARCHAR2(50) NOT NULL ,
   person_hope_place     VARCHAR2(100) NULL ,
   person_job_status     VARCHAR2(50) NOT NULL ,
   person_experience	VARCHAR2(1000) NULL ,
   person_self_introduction_title 		VARCHAR2(300) NOT NULL ,
   person_self_introduction		VARCHAR2(1000) NOT NULL
);


CREATE TABLE message_box_c_p
(
   message_no            NUMBER(7) NOT NULL PRIMARY KEY ,
   message_date          DATE NOT NULL ,
   message_contents      VARCHAR2(200) NOT NULL ,
   message_flag          NUMBER(1) NOT NULL ,
   company_send_id       VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade,
   person_receive_id     VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade
);

CREATE TABLE message_box_p_c
(
   message_no            NUMBER(7) NOT NULL PRIMARY KEY ,
   message_date          DATE NOT NULL ,
   message_contents      VARCHAR2(200) NOT NULL ,
   message_flag          NUMBER(1) NOT NULL ,
   person_send_id        VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade,
   company_receive_id    VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade
);

CREATE TABLE scrap_company
(
   scrap_no              NUMBER(7) NOT NULL PRIMARY KEY ,
    scrap_date            DATE NOT NULL,
   person_scraper_id     VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade,
   company_target_id     VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade
);


CREATE TABLE scrap_person
(
   scrap_no              NUMBER(7) NOT NULL PRIMARY KEY ,
    scrap_date            DATE NOT NULL,
    company_scraper_id    VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade,
   person_target_id      VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade
   
);


------------------------------------------------ 시퀀스드랍

drop sequence message_box_c_p_seq;
drop sequence message_box_p_c_seq;
drop sequence scrap_company_seq;
drop sequence scrap_person_seq;
drop sequence recruit_seq;

------------------------------------------------ 시퀀스생성

create sequence message_box_c_p_seq
start with 1
increment by 1
nocache;


create sequence message_box_p_c_seq
start with 1
increment by 1
nocache;


create sequence scrap_company_seq
start with 1
increment by 1
nocache;


create sequence scrap_person_seq
start with 1
increment by 1
nocache;


create sequence recruit_seq
start with 1
increment by 1
nocache;

------------------------------------------------ 데이터삽입

INSERT INTO COMPANY_LOGIN VALUES ('COMPANY01','1234', '123-45-67238');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY02','1234', '123-44-44344');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY03','1234', '156-34-65423');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY04','1234', '156-34-62354');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY05','1234', '215-63-46541');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY06','1234', '213-41-23234');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY07','1234', '125-42-31212');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY08','1234', '752-66-32211');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY09','1234', '231-56-24315');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY10','1234', '567-23-58634');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY11','1234', '154-51-98745');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY12','1234', '645-58-10245');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY13','1234', '012-85-79854');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY14','1234', '412-88-74512');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY15','1234', '074-97-51224');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY16','1234', '005-98-46753');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY17','1234', '045-87-76513');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY18','1234', '641-16-78134');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY19','1234', '145-84-25224');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY20','1234', '234-89-42993');



INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '서울/경기', '계약직', '3200', '시스템개발', '학력무관', '전산개발/유지보수 담당자(경력자)', '2018-11-14');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY02', '서울/경기', '정규직', '3500', '인공지능(AI)', '학력무관', '(하나금융그룹/SK텔레콤 합작회사)경력모집', '2018-11-30');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY03', '서울/경기', '정규직', '3400', '응용프로그램개발', '대졸', '보험개발원 경력/신입 직원 채용 공고', '2018-11-20');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY04', '서울/경기', '정규직', '3100', '응용프로그램개발', '대졸', '전산일반 및 개발업무', '2018-11-21');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY05', '서울/경기', '정규직', '2900', '인공지능(AI)', '학력무관', '신입 및 경력직원 모집', '2018-11-25');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY06', '서울/경기', '정규직', '3400', '웹개발', '대졸', '현대카드 자회사 블루월넛 경력직 채용', '2018-11-16');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY07', '서울/경기', '정규직', '3100', '시스템개발', '학력무관', '금융 IT 전문가 경력직 모집', '2018-11-18');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY08', '제주', '인턴', '1900', '웹개발', '초대졸', 'JAVA 웹개발 인턴 모집', '2018-12-02');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY09', '부산', '인턴', '2000', '빅데이터', '고등학교 졸업', '마케팅 데이터 관련 인턴', '2018-11-28');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY10', '부산', '계약직', '2400', '웹개발', '초대졸', '웹개발 업무(자택근무 가능)', '2018-12-02');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY11', '부산', '정규직', '2900', '응용프로그램개발', '대졸', '개발 인력 급구', '2018-11-13');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY12', '부산', '계약직', '2500', '응용프로그램개발', '대졸', '자바, 파이썬, C, C++ 인력 충원', '2018-12-20');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY13', '제주', '정규직', '3700', '웹개발', '학력무관', '경력 직원 모집', '2018-11-23');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY14', '제주', '인턴', '2000', '시스템개발', '고등학교 졸업', '프로젝트 경험할 인턴 모집합니다.', '2018-11-28');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY15', '서울/경기', '정규직', '2800', '인공지능(AI)', '고등학교 졸업', '야근 가능한 프로그래머 구합니다', '2018-12-11');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY16', '부산', '인턴', '2300', '빅데이터', '학력무관', '빅데이터(관련 전공 우대) 개발 인턴', '2018-11-29');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY17', '제주', '정규직', '3800', '웹개발', '대졸', '파이썬 웹 개발 가능한 프로그래머 모집', '2018-12-11');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY18', '서울/경기', '계약직', '3000', '응용프로그램개발', '초대졸', '프로젝트 경험 있는 경력자 모집', '2018-12-30');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY19', '서울/경기', '정규직', '3400', '시스템개발', '학력무관', 'SI 회사에서 개발 역량을 쌓고 싶은 분 모집', '2018-11-21');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY20', '부산', '계약직', '3200', '인공지능(AI)', '초대졸', '제2의 알파고 함께 만듭시다', '2018-11-20');



INSERT INTO COMPANY_INFO VALUES ('COMPANY01', '금융업', '박진회', '(주)한국씨티은행', '서울 중구 청계천로 24', '대기업', '3520', '02-3455-2114', '1981-09-17', 'http://www.citibank.co.kr', '0','COMPANY01.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY02', '금융업', '민응준', 'finnq', '서울 중구 을지로 100', '중소기업', '80', '02-6031-5200', '2016-08-24', 'http://finnq.com', '0','COMPANY02.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY03', '금융업', '성대규', '(사)보험개발원', '서울 영등포구 국제금융로6길 38', '중소기업', '120', '02-368-4000', '2013-08-21', 'http://www.kidi.or.kr', '0','COMPANY03.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY04', '금융업', '정원창', 'KIS채권평가(주)', '서울 영등포구 국제금융로6길 38', '중소기업', '104', '02-3215-1410', '2000-06-20', 'http://www.bond.co.kr', '0','COMPANY04.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY05', '금융업', '정성윤', '오릭스캐피탈코리아(주)', '서울 강남구 테헤란로 306', '외국계', '213', '02-2050-6700', '2004-02-02', 'http://www.orix.co.kr', '0','COMPANY05.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY06', '금융업', '한한희', '블루월넛㈜', '서울 영등포구 국회대로74길 19', '대기업', '21', '1522-4910', '2016-12-08', 'www.hyundaicard.com', '0','COMPANY06.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY07', '금융업', '이경조', '뱅크웨어글로벌㈜', '서울 중구 통일로 86', '중소기업', '336', '02-501-6415', '2010-06-03', 'http://www.bankwareglobal.com', '0','COMPANY07.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY08', '금융업', '강백희', '망고탱고코리아㈜', '제주 제주시 첨단로 240', '외국계', '110', '064-224-1252', '2015-12-20', 'https://terms.naver.com/entry.nhn?docId=1091730&cid=40942&categoryId=32822', '0','COMPANY08.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY09', '금융업', '이미조', '하와이안피자㈜', '부산 수영구 남천서로 6', '중소기업', '98', '051-123-0292', '2017-02-12', 'https://terms.naver.com/entry.nhn?docId=1991484&cid=48167&categoryId=48216', '0','COMPANY09.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY10', '금융업', '김산하', '㈜자갈치은행', '부산 중구 자갈치해안로 50', '외국계', '58', '051-245-2594', '2015-03-24', 'http://jagalchimarket.bisco.or.kr/', '0','COMPANY10.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY11', '유통업', '이호산', '패스트푸드득㈜', '부산 금정구 부산대학로 52', '중소기업', '103', '051-784-9874', '2011-12-01', 'https://fastfooood.co.kr', '0','COMPANY11.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY12', '유통업', '고성희', '㈜아워너', '부산 강서구 르노삼성대로 600', '중소기업', '76', '051-141-1235', '2016-08-16', 'https://iwanna.co.kr', '0','COMPANY12.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY13', '유통업', '김선호', '㈜고홈', '제주 제주시 조천읍 함덕리 1001', '중소기업', '91', '064-579-8426', '2013-02-15', 'https://gohome.co.kr', '0','COMPANY13.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY14', '유통업', '이송아', '더블유와이㈜', '제주 제주시 조천읍 번영로 127', '외국계', '37', '064-664-4789', '2014-10-02', 'https://doublewhy.com', '0','COMPANY14.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY15', '유통업', '유호인', '알파고고㈜', '경기 과천시 대공원광장로 106', '중소기업', '216', '031-123-4326', '2011-09-19', 'https://gogogogo.co.kr', '0','COMPANY15.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY16', 'IT', '김상태', '데잇콜렉㈜', '부산 중구 광복중앙로 30', '중소기업', '34', '051-391-5921', '2016-12-02', 'https://datacollect.co.kr', '0','COMPANY16.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY17', 'IT', '유인호', '㈜딩고링고', '제주 제주시 삼무로3길 5', '중소기업', '78', '064-491-6132', '2015-04-11', 'https://dingoring.co.kr', '0','COMPANY17.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY18', 'IT', '박윤하', '매머드㈜', '경기 수원시 팔달구 효원로26번길 4', '외국계', '54', '031-438-9289', '2014-05-07', 'https://mammoth.co.kr', '0','COMPANY18.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY19', 'IT', '이인성', '문벅스㈜', '경기 성남시 분당구 서현로 21', '중소기업', '27', '031-153-4912', '2017-09-23', 'https://moonbucks.co.kr', '0','COMPANY19.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY20', 'IT', '최소희', '에디안㈜', '부산 중구 자갈치로21번길 1', '외국계', '89', '051-694-1923', '2014-11-25', 'https://edian.co.kr', '0','COMPANY20.jpg');



INSERT INTO PERSON_LOGIN VALUES ('PERSON01','4321', '010-1234-5678');
INSERT INTO PERSON_LOGIN VALUES ('PERSON02','4321', '010-2314-2513');
INSERT INTO PERSON_LOGIN VALUES ('PERSON03','4321', '010-5131-5921');
INSERT INTO PERSON_LOGIN VALUES ('PERSON04','4321', '010-5822-9184');
INSERT INTO PERSON_LOGIN VALUES ('PERSON05','4321', '010-4812-4842');
INSERT INTO PERSON_LOGIN VALUES ('PERSON06','4321', '010-2512-4523');
INSERT INTO PERSON_LOGIN VALUES ('PERSON07','4321', '010-4581-3931');
INSERT INTO PERSON_LOGIN VALUES ('PERSON08','4321', '010-4923-3894');
INSERT INTO PERSON_LOGIN VALUES ('PERSON09','4321', '010-6342-6052');
INSERT INTO PERSON_LOGIN VALUES ('PERSON10','4321', '010-9873-2912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON11','4321', '010-5912-1235');
INSERT INTO PERSON_LOGIN VALUES ('PERSON12','4321', '010-5212-6912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON13','4321', '010-2312-5923');
INSERT INTO PERSON_LOGIN VALUES ('PERSON14','4321', '010-3125-3912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON15','4321', '010-4912-9042');
INSERT INTO PERSON_LOGIN VALUES ('PERSON16','4321', '010-0021-3912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON17','4321', '010-3491-4912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON18','4321', '010-4912-5912');
INSERT INTO PERSON_LOGIN VALUES ('PERSON19','4321', '010-2931-9423');
INSERT INTO PERSON_LOGIN VALUES ('PERSON20','4321', '010-2912-5921');



INSERT INTO PERSON_RESUME VALUES ('PERSON01', '이화랑', '웹개발', '경력', 'PERSON01.jpg', '35', '여자', '1984-04-28', '11@naver.com', '서울/경기', '0', '경력 7년', '영어가 되는 개발자', '싱가포르 스타트업에서 JAVA 기반 웹개발 경력 7년을 쌓았습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON02', '김은호', '응용프로그램개발', '신입', 'PERSON02.jpg', '26', '남자', '1993-03-02', 'seaw@gmail.com', '부산', '0', '', '열심히 일하겠습니다.', '신입으로서 열심히 일하겠습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON03', '이은하', '시스템개발', '경력', 'PERSON03.jpg', '36', '여자', '1983-12-02', 'awerq21@naver.com', '제주', '0', '경력 6년', 'SPRING 마스터입니다.', 'SPRING에 자신있습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON04', '최태인', '인공지능(AI)', '경력', 'PERSON04.jpg', '32', '남자', '1987-05-16', 'iwq2812@naver.com', '서울/경기', '1', '경력 4년', '한국의 알파고를 만들겠습니다.', '구글 알파고를 이기겠습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON05', '이가현', '빅데이터', '신입', 'PERSON05.jpg', '28', '여자', '1991-11-21', 'lhgw@naver.com', '부산', '0', '', '마케팅 CRM 직무에 지원합니다.', '데이터 분석으로 고객의 니즈를 끄집어내겠습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON06', '최은성', '웹개발', '경력', 'PERSON06.jpg', '30', '남자', '1989-10-11', '219aef@gmail.com', '제주', '1', '경력 5년', 'JAVA, 파이썬 웹개발 모두 가능합니다.', 'JAVA와 파이썬에 모두 능통합니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON07', '서인아', '응용프로그램개발', '경력', 'PERSON07.jpg', '37', '여자', '1982-04-20', 'aefweg@naver.com', '서울/경기', '0', '경력 9년', '프로그램 개발을 위해 준비된 지원자', '맡겨만 주세요. 기대 이상으로 해냅니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON08', '김지훈', '시스템개발', '신입', 'PERSON08.jpg', '32', '남자', '1987-08-13', 'baw212bv@naver.com', '부산', '0', '', '한 번만 읽어주세요.', '소처럼 정말 열심히 일하겠습니다. ');
INSERT INTO PERSON_RESUME VALUES ('PERSON09', '이송아', '인공지능(AI)', '경력', 'PERSON09.jpg', '37', '여자', '1982-08-04', 'weq11@naver.com', '제주', '1', '경력 10년', '파이썬 사용 경력 10년입니다.', '파이썬에는 자신있습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON10', '유동욱', '빅데이터', '경력', 'PERSON10.jpg', '32', '남자', '1987-10-21', 'se212@gmail.com', '서울/경기', '1', '경력 3년', '빅데이터 직무 희망합니다.', 'Hadoop 사용 가능합니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON11', '오가희', '웹개발', '신입', 'PERSON11.jpg', '26', '여자', '1993-10-08', 'gaerfq2@naver.com', '부산', '0', '', '웹 프레임워크 과정을 수강했습니다.', '세 번의 프로젝트를 통해 실전을 위한 준비를 했습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON12', '김명성', '응용프로그램개발', '경력', 'PERSON12.jpg', '28', '남자', '1991-07-09', '121lkj@naver.com', '제주', '0', '경력 2년', '항상 새 마음으로 일하겠습니다.', '초심을 잃지 않고 열심히 일하겠습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON13', '고상희', '시스템개발', '경력', 'PERSON13.jpg', '31', '여자', '1988-11-15', 'poifwe@gmail.com', '서울/경기', '0', '경력 5년', '5년 경력의 시스템 개발자', '5년 간 다수의 프로젝트를 경험했습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON14', '윤상범', '인공지능(AI)', '신입', 'PERSON14.jpg', '26', '남자', '1993-09-24', 'eo924@gmail.com', '부산', '0', '', 'AI 연구소에서 일하고 싶습니다.', '끈기있게 열심히 하겠습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON15', '이현성', '빅데이터', '경력', 'PERSON15.jpg', '39', '여자', '1980-05-12', 'dsf0099@naver.com', '제주', '0', '경력12년', '제주도에서 일하고 싶습니다.', '제주도로 이사를 가게 되어 이직하게 되었습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON16', '강현우', '웹개발', '경력', 'PERSON16.jpg', '32', '남자', '1987-09-03', 'kdwf09@naver.com', '서울/경기', '1', '경력 4년', '자바 기반 프로젝트 다수 참여', 'Node.js도 가능합니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON17', '노연희', '응용프로그램개발', '신입', 'PERSON17.jpg', '25', '여자', '1994-06-17', 'piojk@naver.com', '부산', '0', '', '안녕하세요. 응용프로그램 직무 지원합니다.', '컴퓨터 공학을 전공했습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON18', '조형진', '시스템개발', '경력', 'PERSON18.jpg', '36', '남자', '1983-06-23', 'akljef@gmail.com', '제주', '0', '경력 7년', '안녕하세요.', '반갑습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON19', '정하윤', '인공지능(AI)', '경력', 'PERSON19.jpg', '29', '여자', '1990-12-05', 'paeikk21@naver.com', '서울/경기', '1', '경력 3년', 'AI 직무 지원합니다.', 'AI 면접 시스템을 만들고 싶습니다.');
INSERT INTO PERSON_RESUME VALUES ('PERSON20', '송진우', '빅데이터', '신입', 'PERSON20.jpg', '26', '남자', '1993-08-18', 'nbdkj01@gmail.com', '부산', '0', '', '빅데이터 전공했습니다.', '경영학을 복수전공하면서 데이터분석을 위한 준비를 했습니다.');



INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '한국씨티은행입니다.', '0', 'COMPANY01', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '인공지능 경험자를 모집중입니다.', '0', 'COMPANY02', 'PERSON02');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '보험개발원에서 보험개발 프로그램 개발자를 모집합니다.', '0', 'COMPANY03', 'PERSON03');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '[모집중] KIS채권평가(주)', '0', 'COMPANY04', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '외국계 기업 오릭스캐피탈코리아㈜ 정기 공채', '0', 'COMPANY05', 'PERSON01');



INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '경력 7년의 웹개발자입니다.', '0', 'PERSON01', 'COMPANY01');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '인공지능 직무 지원자 김은호입니다.', '0', 'PERSON02', 'COMPANY02');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '보험개발원에 지원합니다.', '0', 'PERSON03', 'COMPANY03');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '자기소개서.hwp', '0', 'PERSON04', 'COMPANY04');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '빅데이터 직무 관련 문의드립니다.', '0', 'PERSON05', 'COMPANY05');


INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY02');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY04');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON02', 'COMPANY01');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON02', 'COMPANY03');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON03', 'COMPANY01');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON03', 'COMPANY02');


INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY01', 'PERSON01');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY01', 'PERSON02');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY02', 'PERSON01');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY02', 'PERSON03');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY03', 'PERSON04');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY03', 'PERSON01');