<<<<<<< HEAD
------------------------------------------------ �������߰�
CONN system/admin;
CREATE USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 account unlock;
GRANT CONNECT, RESOURCE TO pjt2;

SELECT * FROM person_login

SELECT * FROM company_login

UPDATE PERSON_LOGIN SET PERSON_PWD = '1234', PERSON_PHONE = '010-4444-4444' WHERE PERSON_ID = 'PERSON05'

SELECT * FROM person_login WHERE upper(person_id) =  UPPER('person01')  AND person_pwd = '4321'

CONN pjt2/pjt2;
DROP USER pjt2 CASCADE;
------------------------------------------------ ���̺���

DROP TABLE message_box_c_p
DROP TABLE message_box_p_c
DROP TABLE COMPANY_RECRUIT

------------------------------------------------ ���̺����

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

DROP TABLE company_info

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


DROP TABLE person_resume

SELECT * FROM person_resume

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

------------------------------------------------ ����������

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

------------------------------------------------ �����ͻ���

INSERT INTO COMPANY_LOGIN VALUES ('COMPANY01','1234', '12345678');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY02','1234', '12344444');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY03','1234', '27979098');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY04','1234', '43613752');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY05','1234', '59248406');

INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '���� ������', '������', '4000', '���α׷���', '����', '���뵿�� ����', '43465');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '���� ��������', '��������', '5000', 'ȸ���', '����', '�ޱ�) ��ȭ��ȯ��', '43465');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY02', '�λ�', '������', '6000', '��ȣ��', '���п���', '�������ڱޱ�', '43485');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY03', '���ֵ�', '��������', '7100', '�ǻ�', '�ڻ�', '���ø����� ����', '43491');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY04', '����', '��������', '8000', '�繫��', '����', '����Ż��� ����', '43491');

INSERT INTO COMPANY_INFO VALUES ('COMPANY01', '����', 'ȫ�浿', '�������۴�', '���� ������', '�����', '65', '02-222-3333', '43101', 'www.abc.com', '0', 'COMPANY01.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY02', '��ǻ��', '������', '�ٶ����۴�', '���� �߱�', '����', '654', '02-333-2222', '43102', 'www.basf.com', '0', 'COMPANY02.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY03', '����', '����', '�������۴�', '���� ���α�', '�߼ұ��', '44', '02-888-5555', '43134', 'www.asdf.com', '0', 'COMPANY03.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY04', '����', '�̳���', '������۴�', '���� ��������', '����', '11', '02-777-8888', '43193', 'www.afaf.com', '0', 'COMPANY04.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY05', '����', '������', '�������۴�', '���� ������', '�߰߱��', '22', '02-111-8888', '42858', 'www.ggg.com', '0', 'COMPANY05.jpg');

INSERT INTO PERSON_LOGIN VALUES ('PERSON01','4321', '010-1234-5678');
INSERT INTO PERSON_LOGIN VALUES ('PERSON02','4321', '010-1111-5555');
INSERT INTO PERSON_LOGIN VALUES ('PERSON03','4321', '010-4444-1555');
INSERT INTO PERSON_LOGIN VALUES ('PERSON04','4321', '010-7777-8888');
INSERT INTO PERSON_LOGIN VALUES ('PERSON05','4321', '010-4444-8884');

INSERT INTO PERSON_RESUME VALUES ('PERSON01', '������', '������', '����', 'PERSON01.jpg', 6, '����', '36800', '11@naver.com', '����', '0', '��¾���', '�غ�� JAVA ������', '�غ� �ߵ� �����');
INSERT INTO PERSON_RESUME VALUES ('PERSON02', '������', '�ý��۰���', '���', 'PERSON02.jpg', '7', '����', '36852', '22@naver.com', '��⵵', '0', '���5���', '�ý��� �ðܸ� �ֽʽÿ�','�ðܸ� �� �����');
INSERT INTO PERSON_RESUME VALUES ('PERSON03', '����û', '�������α׷�����', '���', 'PERSON03.jpg', '8', '����', '40897', '33@naver.com', '�λ�', '1', '���10���', '10���� ������ �����帳�ϴ�', '�������');
INSERT INTO PERSON_RESUME VALUES ('PERSON04', '������', '������', '����', 'PERSON04.jpg', '9', '����', '41053', '44@naver.com', '���ֵ�', '1', '��¾���', '���ϸ��� ���� ��������', '���ֵ� ��¼����¼��');
INSERT INTO PERSON_RESUME VALUES ('PERSON05', '����Ī', '�ΰ�����(AI)', '���', 'PERSON05.jpg', '10', '����', '40891', '55@naver.com', '����', '1', '���20���', '20��� ���İ� ���� ������', '�����');

INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�ȳ��ϼ���', '0', 'COMPANY01', 'PERSON03');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�޷�', '0', 'COMPANY02', 'PERSON04');

INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '����������', '0', 'PERSON01', 'COMPANY04');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '��24����', '0', 'PERSON02', 'COMPANY05');

INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY02');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY04');

INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY02', 'PERSON01');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY01', 'PERSON02');

=======


INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'���볻�볻��2323', 0, 'COMPANY01', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'���볻�볻��2323', 0, 'COMPANY01', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'���볻�볻��123', 0, 'COMPANY01', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'���볻�볻��321', 0, 'COMPANY01', 'PERSON01');

select * From MESSAGE_BOX_C_P

------------------------------------------------ �������߰�
CONN system/admin;
CREATE USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 account unlock;
GRANT CONNECT, RESOURCE TO pjt2;

SELECT * FROM person_login

SELECT * FROM company_login

UPDATE PERSON_LOGIN SET PERSON_PWD = '1234', PERSON_PHONE = '010-4444-4444' WHERE PERSON_ID = 'PERSON05'

SELECT * FROM person_login WHERE upper(person_id) =  UPPER('person01')  AND person_pwd = '4321'

CONN pjt2/pjt2;
DROP USER pjt2 CASCADE;
------------------------------------------------ ���̺���

UPDATE COMPANY_LOGIN SET COMPANY_PWD = '1234', COMPANY_NUMBER = '87654321' WHERE COMPANY_ID = 'COMPANY01'

DROP TABLE message_box_c_p
DROP TABLE message_box_p_c
DROP TABLE COMPANY_RECRUIT

------------------------------------------------ ���̺����

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
    company_VIEWS        NUMBER(7)
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
   person_hope_place     VARCHAR2(100) NOT NULL ,
   person_job_status     VARCHAR2(50) NOT NULL 
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

------------------------------------------------ ����������

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

------------------------------------------------ �����ͻ���

INSERT INTO COMPANY_LOGIN VALUES ('COMPANY01','1234', '12345678');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY02','1234', '12344444');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY03','1234', '27979098');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY04','1234', '43613752');
INSERT INTO COMPANY_LOGIN VALUES ('COMPANY05','1234', '59248406');

INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '���� ������', '������', '4000', '���α׷���', '����', '���뵿�� ����', '43465');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '���� ��������', '��������', '5000', 'ȸ���', '����', '�ޱ�) ��ȭ��ȯ��', '43465');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY02', '�λ�', '������', '6000', '��ȣ��', '���п���', '�������ڱޱ�', '43485');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY03', '���ֵ�', '��������', '7100', '�ǻ�', '�ڻ�', '���ø����� ����', '43491');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY04', '����', '��������', '8000', '�繫��', '����', '����Ż��� ����', '43491');

INSERT INTO COMPANY_INFO VALUES ('COMPANY01', '����', 'ȫ�浿', '�������۴�', '���� ������', '�����', '65', '02-222-3333', '43101', 'www.abc.com', '0');
INSERT INTO COMPANY_INFO VALUES ('COMPANY02', '��ǻ��', '������', '�ٶ����۴�', '���� �߱�', '����', '654', '02-333-2222', '43102', 'www.basf.com', '0');
INSERT INTO COMPANY_INFO VALUES ('COMPANY03', '����', '����', '�������۴�', '���� ���α�', '�߼ұ��', '44', '02-888-5555', '43134', 'www.asdf.com', '0');
INSERT INTO COMPANY_INFO VALUES ('COMPANY04', '����', '�̳���', '������۴�', '���� ��������', '����', '11', '02-777-8888', '43193', 'www.afaf.com', '0');
INSERT INTO COMPANY_INFO VALUES ('COMPANY05', '����', '������', '�������۴�', '���� ������', '�߰߱��', '22', '02-111-8888', '42858', 'www.ggg.com', '0');

INSERT INTO PERSON_LOGIN VALUES ('PERSON01','4321', '010-1234-5678');
INSERT INTO PERSON_LOGIN VALUES ('PERSON02','4321', '010-1111-5555');
INSERT INTO PERSON_LOGIN VALUES ('PERSON03','4321', '010-4444-1555');
INSERT INTO PERSON_LOGIN VALUES ('PERSON04','4321', '010-7777-8888');
INSERT INTO PERSON_LOGIN VALUES ('PERSON05','4321', '010-4444-8884');

INSERT INTO PERSON_RESUME VALUES ('PERSON01', '������', '����', '��¾���', 'PERSON01.jpg', 6, '����', '36800', '11@naver.com', '����', '0');
INSERT INTO PERSON_RESUME VALUES ('PERSON02', '������', '�л�', '���5��', 'PERSON02.jpg', '7', '����', '36852', '22@naver.com', '��⵵', '0');
INSERT INTO PERSON_RESUME VALUES ('PERSON03', '����û', '����', '���10��', 'PERSON03.jpg', '8', '����', '40897', '33@naver.com', '�λ�', '1');
INSERT INTO PERSON_RESUME VALUES ('PERSON04', '������', '�л�', '��¾���', 'PERSON04.jpg', '9', '����', '41053', '44@naver.com', '���ֵ�', '1');
INSERT INTO PERSON_RESUME VALUES ('PERSON05', '����Ī', '���п���', '���20��', 'PERSON05.jpg', '10', '����', '40891', '55@naver.com', '����', '1');

INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�ȳ��ϼ���', '0', 'COMPANY01', 'PERSON03');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�޷�', '0', 'COMPANY02', 'PERSON04');

INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '����������', '0', 'PERSON01', 'COMPANY04');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '��24����', '0', 'PERSON02', 'COMPANY05');

INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY02');
INSERT INTO SCRAP_COMPANY VALUES (SCRAP_COMPANY_SEQ.NEXTVAL, SYSDATE, 'PERSON01', 'COMPANY04');

INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY02', 'PERSON01');
INSERT INTO SCRAP_PERSON VALUES (SCRAP_PERSON_SEQ.NEXTVAL, SYSDATE, 'COMPANY01', 'PERSON02');

>>>>>>> branch 'master' of https://github.com/kdh8909/kosta_2nd_project.git
