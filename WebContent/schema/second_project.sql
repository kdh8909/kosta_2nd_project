<<<<<<< HEAD
=======
>>>>>>> branch 'master' of https://github.com/kdh8909/kosta_2nd_project.git

SELECT * FROM COMPANY_LOGIN

------------------------------------------------ �������߰�
CONN system/admin;
CREATE USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 account unlock;
GRANT CONNECT, RESOURCE TO pjt2;

CONN pjt2/pjt2;
DROP USER pjt2 CASCADE;

------------------------------------------------ ���̺���

DROP TABLE company_login;
DROP TABLE COMPANY_RECRUIT;
DROP TABLE company_info;
DROP TABLE person_login;
DROP TABLE person_resume;
DROP TABLE message_box_c_p;
DROP TABLE message_box_p_c;
DROP TABLE scrap_company;
DROP TABLE scrap_person;

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


------------------------------------------------ ���������

drop sequence message_box_c_p_seq;
drop sequence message_box_p_c_seq;
drop sequence scrap_company_seq;
drop sequence scrap_person_seq;
drop sequence recruit_seq;

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



INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY01', '����/���', '�����', '3200', '�ý��۰���', '�з¹���', '���갳��/�������� �����(�����)', '2018-11-14');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY02', '����/���', '������', '3500', '�ΰ�����(AI)', '�з¹���', '(�ϳ������׷�/SK�ڷ��� ����ȸ��)��¸���', '2018-11-30');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY03', '����/���', '������', '3400', '�������α׷�����', '����', '���谳�߿� ���/���� ���� ä�� ����', '2018-11-20');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY04', '����/���', '������', '3100', '�������α׷�����', '����', '�����Ϲ� �� ���߾���', '2018-11-21');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY05', '����/���', '������', '2900', '�ΰ�����(AI)', '�з¹���', '���� �� ������� ����', '2018-11-25');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY06', '����/���', '������', '3400', '������', '����', '����ī�� ��ȸ�� ������ ����� ä��', '2018-11-16');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY07', '����/���', '������', '3100', '�ý��۰���', '�з¹���', '���� IT ������ ����� ����', '2018-11-18');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY08', '����', '����', '1900', '������', '�ʴ���', 'JAVA ������ ���� ����', '2018-12-02');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY09', '�λ�', '����', '2000', '������', '����б� ����', '������ ������ ���� ����', '2018-11-28');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY10', '�λ�', '�����', '2400', '������', '�ʴ���', '������ ����(���ñٹ� ����)', '2018-12-02');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY11', '�λ�', '������', '2900', '�������α׷�����', '����', '���� �η� �ޱ�', '2018-11-13');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY12', '�λ�', '�����', '2500', '�������α׷�����', '����', '�ڹ�, ���̽�, C, C++ �η� ���', '2018-12-20');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY13', '����', '������', '3700', '������', '�з¹���', '��� ���� ����', '2018-11-23');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY14', '����', '����', '2000', '�ý��۰���', '����б� ����', '������Ʈ ������ ���� �����մϴ�.', '2018-11-28');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY15', '����/���', '������', '2800', '�ΰ�����(AI)', '����б� ����', '�߱� ������ ���α׷��� ���մϴ�', '2018-12-11');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY16', '�λ�', '����', '2300', '������', '�з¹���', '������(���� ���� ���) ���� ����', '2018-11-29');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY17', '����', '������', '3800', '������', '����', '���̽� �� ���� ������ ���α׷��� ����', '2018-12-11');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY18', '����/���', '�����', '3000', '�������α׷�����', '�ʴ���', '������Ʈ ���� �ִ� ����� ����', '2018-12-30');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY19', '����/���', '������', '3400', '�ý��۰���', '�з¹���', 'SI ȸ�翡�� ���� ������ �װ� ���� �� ����', '2018-11-21');
INSERT INTO COMPANY_RECRUIT VALUES (RECRUIT_SEQ.NEXTVAL, 'COMPANY20', '�λ�', '�����', '3200', '�ΰ�����(AI)', '�ʴ���', '��2�� ���İ� �Բ� ����ô�', '2018-11-20');



INSERT INTO COMPANY_INFO VALUES ('COMPANY01', '������', '����ȸ', '(��)�ѱ���Ƽ����', '���� �߱� û��õ�� 24', '����', '3520', '02-3455-2114', '1981-09-17', 'http://www.citibank.co.kr', '0','COMPANY01.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY02', '������', '������', 'finnq', '���� �߱� ������ 100', '�߼ұ��', '80', '02-6031-5200', '2016-08-24', 'http://finnq.com', '0','COMPANY02.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY03', '������', '�����', '(��)���谳�߿�', '���� �������� ����������6�� 38', '�߼ұ��', '120', '02-368-4000', '2013-08-21', 'http://www.kidi.or.kr', '0','COMPANY03.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY04', '������', '����â', 'KISä����(��)', '���� �������� ����������6�� 38', '�߼ұ��', '104', '02-3215-1410', '2000-06-20', 'http://www.bond.co.kr', '0','COMPANY04.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY05', '������', '������', '������ĳ��Ż�ڸ���(��)', '���� ������ ������� 306', '�ܱ���', '213', '02-2050-6700', '2004-02-02', 'http://www.orix.co.kr', '0','COMPANY05.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY06', '������', '������', '�����Ӣ�', '���� �������� ��ȸ���74�� 19', '����', '21', '1522-4910', '2016-12-08', 'www.hyundaicard.com', '0','COMPANY06.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY07', '������', '�̰���', '��ũ����۷ι���', '���� �߱� ���Ϸ� 86', '�߼ұ��', '336', '02-501-6415', '2010-06-03', 'http://www.bankwareglobal.com', '0','COMPANY07.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY08', '������', '������', '�����ʰ��ڸ��Ƣ�', '���� ���ֽ� ÷�ܷ� 240', '�ܱ���', '110', '064-224-1252', '2015-12-20', 'https://terms.naver.com/entry.nhn?docId=1091730&cid=40942&categoryId=32822', '0','COMPANY08.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY09', '������', '�̹���', '�Ͽ��̾����ڢ�', '�λ� ������ ��õ���� 6', '�߼ұ��', '98', '051-123-0292', '2017-02-12', 'https://terms.naver.com/entry.nhn?docId=1991484&cid=48167&categoryId=48216', '0','COMPANY09.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY10', '������', '�����', '���ڰ�ġ����', '�λ� �߱� �ڰ�ġ�ؾȷ� 50', '�ܱ���', '58', '051-245-2594', '2015-03-24', 'http://jagalchimarket.bisco.or.kr/', '0','COMPANY10.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY11', '�����', '��ȣ��', '�н�ƮǪ����', '�λ� ������ �λ���з� 52', '�߼ұ��', '103', '051-784-9874', '2011-12-01', 'https://fastfooood.co.kr', '0','COMPANY11.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY12', '�����', '����', '�߾ƿ���', '�λ� ������ ����Ｚ��� 600', '�߼ұ��', '76', '051-141-1235', '2016-08-16', 'https://iwanna.co.kr', '0','COMPANY12.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY13', '�����', '�輱ȣ', '�߰�Ȩ', '���� ���ֽ� ��õ�� �Դ��� 1001', '�߼ұ��', '91', '064-579-8426', '2013-02-15', 'https://gohome.co.kr', '0','COMPANY13.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY14', '�����', '�̼۾�', '���������̢�', '���� ���ֽ� ��õ�� ������ 127', '�ܱ���', '37', '064-664-4789', '2014-10-02', 'https://doublewhy.com', '0','COMPANY14.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY15', '�����', '��ȣ��', '���İ���', '��� ��õ�� ���������� 106', '�߼ұ��', '216', '031-123-4326', '2011-09-19', 'https://gogogogo.co.kr', '0','COMPANY15.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY16', 'IT', '�����', '�����ݷ���', '�λ� �߱� �����߾ӷ� 30', '�߼ұ��', '34', '051-391-5921', '2016-12-02', 'https://datacollect.co.kr', '0','COMPANY16.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY17', 'IT', '����ȣ', '�ߵ�����', '���� ���ֽ� �﹫��3�� 5', '�߼ұ��', '78', '064-491-6132', '2015-04-11', 'https://dingoring.co.kr', '0','COMPANY17.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY18', 'IT', '������', '�Ÿӵ��', '��� ������ �ȴޱ� ȿ����26���� 4', '�ܱ���', '54', '031-438-9289', '2014-05-07', 'https://mammoth.co.kr', '0','COMPANY18.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY19', 'IT', '���μ�', '��������', '��� ������ �д籸 ������ 21', '�߼ұ��', '27', '031-153-4912', '2017-09-23', 'https://moonbucks.co.kr', '0','COMPANY19.jpg');
INSERT INTO COMPANY_INFO VALUES ('COMPANY20', 'IT', '�ּ���', '����Ȣ�', '�λ� �߱� �ڰ�ġ��21���� 1', '�ܱ���', '89', '051-694-1923', '2014-11-25', 'https://edian.co.kr', '0','COMPANY20.jpg');



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



INSERT INTO PERSON_RESUME VALUES ('PERSON01', '��ȭ��', '������', '���', 'PERSON01.jpg', '35', '����', '1984-04-28', '11@naver.com', '����/���', '0', '��� 7��', '��� �Ǵ� ������', '�̰����� ��ŸƮ������ JAVA ��� ������ ��� 7���� �׾ҽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON02', '����ȣ', '�������α׷�����', '����', 'PERSON02.jpg', '26', '����', '1993-03-02', 'seaw@gmail.com', '�λ�', '0', '', '������ ���ϰڽ��ϴ�.', '�������μ� ������ ���ϰڽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON03', '������', '�ý��۰���', '���', 'PERSON03.jpg', '36', '����', '1983-12-02', 'awerq21@naver.com', '����', '0', '��� 6��', 'SPRING �������Դϴ�.', 'SPRING�� �ڽ��ֽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON04', '������', '�ΰ�����(AI)', '���', 'PERSON04.jpg', '32', '����', '1987-05-16', 'iwq2812@naver.com', '����/���', '1', '��� 4��', '�ѱ��� ���İ� ����ڽ��ϴ�.', '���� ���İ� �̱�ڽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON05', '�̰���', '������', '����', 'PERSON05.jpg', '28', '����', '1991-11-21', 'lhgw@naver.com', '�λ�', '0', '', '������ CRM ������ �����մϴ�.', '������ �м����� ���� ��� ������ڽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON06', '������', '������', '���', 'PERSON06.jpg', '30', '����', '1989-10-11', '219aef@gmail.com', '����', '1', '��� 5��', 'JAVA, ���̽� ������ ��� �����մϴ�.', 'JAVA�� ���̽㿡 ��� �����մϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON07', '���ξ�', '�������α׷�����', '���', 'PERSON07.jpg', '37', '����', '1982-04-20', 'aefweg@naver.com', '����/���', '0', '��� 9��', '���α׷� ������ ���� �غ�� ������', '�ðܸ� �ּ���. ��� �̻����� �س��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON08', '������', '�ý��۰���', '����', 'PERSON08.jpg', '32', '����', '1987-08-13', 'baw212bv@naver.com', '�λ�', '0', '', '�� ���� �о��ּ���.', '��ó�� ���� ������ ���ϰڽ��ϴ�. ');
INSERT INTO PERSON_RESUME VALUES ('PERSON09', '�̼۾�', '�ΰ�����(AI)', '���', 'PERSON09.jpg', '37', '����', '1982-08-04', 'weq11@naver.com', '����', '1', '��� 10��', '���̽� ��� ��� 10���Դϴ�.', '���̽㿡�� �ڽ��ֽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON10', '������', '������', '���', 'PERSON10.jpg', '32', '����', '1987-10-21', 'se212@gmail.com', '����/���', '1', '��� 3��', '������ ���� ����մϴ�.', 'Hadoop ��� �����մϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON11', '������', '������', '����', 'PERSON11.jpg', '26', '����', '1993-10-08', 'gaerfq2@naver.com', '�λ�', '0', '', '�� �����ӿ�ũ ������ �����߽��ϴ�.', '�� ���� ������Ʈ�� ���� ������ ���� �غ� �߽��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON12', '���', '�������α׷�����', '���', 'PERSON12.jpg', '28', '����', '1991-07-09', '121lkj@naver.com', '����', '0', '��� 2��', '�׻� �� �������� ���ϰڽ��ϴ�.', '�ʽ��� ���� �ʰ� ������ ���ϰڽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON13', '�����', '�ý��۰���', '���', 'PERSON13.jpg', '31', '����', '1988-11-15', 'poifwe@gmail.com', '����/���', '0', '��� 5��', '5�� ����� �ý��� ������', '5�� �� �ټ��� ������Ʈ�� �����߽��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON14', '�����', '�ΰ�����(AI)', '����', 'PERSON14.jpg', '26', '����', '1993-09-24', 'eo924@gmail.com', '�λ�', '0', '', 'AI �����ҿ��� ���ϰ� �ͽ��ϴ�.', '�����ְ� ������ �ϰڽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON15', '������', '������', '���', 'PERSON15.jpg', '39', '����', '1980-05-12', 'dsf0099@naver.com', '����', '0', '���12��', '���ֵ����� ���ϰ� �ͽ��ϴ�.', '���ֵ��� �̻縦 ���� �Ǿ� �����ϰ� �Ǿ����ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON16', '������', '������', '���', 'PERSON16.jpg', '32', '����', '1987-09-03', 'kdwf09@naver.com', '����/���', '1', '��� 4��', '�ڹ� ��� ������Ʈ �ټ� ����', 'Node.js�� �����մϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON17', '�뿬��', '�������α׷�����', '����', 'PERSON17.jpg', '25', '����', '1994-06-17', 'piojk@naver.com', '�λ�', '0', '', '�ȳ��ϼ���. �������α׷� ���� �����մϴ�.', '��ǻ�� ������ �����߽��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON18', '������', '�ý��۰���', '���', 'PERSON18.jpg', '36', '����', '1983-06-23', 'akljef@gmail.com', '����', '0', '��� 7��', '�ȳ��ϼ���.', '�ݰ����ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON19', '������', '�ΰ�����(AI)', '���', 'PERSON19.jpg', '29', '����', '1990-12-05', 'paeikk21@naver.com', '����/���', '1', '��� 3��', 'AI ���� �����մϴ�.', 'AI ���� �ý����� ����� �ͽ��ϴ�.');
INSERT INTO PERSON_RESUME VALUES ('PERSON20', '������', '������', '����', 'PERSON20.jpg', '26', '����', '1993-08-18', 'nbdkj01@gmail.com', '�λ�', '0', '', '������ �����߽��ϴ�.', '�濵���� ���������ϸ鼭 �����ͺм��� ���� �غ� �߽��ϴ�.');



INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�ѱ���Ƽ�����Դϴ�.', '0', 'COMPANY01', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�ΰ����� �����ڸ� �������Դϴ�.', '0', 'COMPANY02', 'PERSON02');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '���谳�߿����� ���谳�� ���α׷� �����ڸ� �����մϴ�.', '0', 'COMPANY03', 'PERSON03');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '[������] KISä����(��)', '0', 'COMPANY04', 'PERSON01');
INSERT INTO MESSAGE_BOX_C_P VALUES (MESSAGE_BOX_C_P_SEQ.NEXTVAL, SYSDATE, '�ܱ��� ��� ������ĳ��Ż�ڸ��Ƣ� ���� ��ä', '0', 'COMPANY05', 'PERSON01');



INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '��� 7���� ���������Դϴ�.', '0', 'PERSON01', 'COMPANY01');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '�ΰ����� ���� ������ ����ȣ�Դϴ�.', '0', 'PERSON02', 'COMPANY02');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '���谳�߿��� �����մϴ�.', '0', 'PERSON03', 'COMPANY03');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '�ڱ�Ұ���.hwp', '0', 'PERSON04', 'COMPANY04');
INSERT INTO MESSAGE_BOX_P_C VALUES (MESSAGE_BOX_P_C_SEQ.NEXTVAL, SYSDATE, '������ ���� ���� ���ǵ帳�ϴ�.', '0', 'PERSON05', 'COMPANY05');


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