------------------------ 계정생성 ---------------------------

CONN system/admin;
CREATE USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 IDENTIFIED BY pjt2;
ALTER USER pjt2 account unlock;
GRANT CONNECT, RESOURCE TO pjt2;

CONN pjt2/pjt2;
DROP USER amto CASCADE;

------------------------ CREATE ---------------------------

--?? ȸ??????

CREATE TABLE company_login

(

   company_id            VARCHAR2(20) NOT NULL PRIMARY KEY ,

   company_pwd           VARCHAR2(18) NOT NULL ,

   company_number        VARCHAR2(18) NOT NULL 

);




--???????

CREATE TABLE COMPANY_RECRUIT

(

   company_id            VARCHAR2(20) NOT NULL PRIMARY KEY references company_login(company_id) on delete cascade,

   company_work_addr     VARCHAR2(100) NOT NULL ,

   company_employment_type  VARCHAR2(100) NOT NULL ,

   company_salary        VARCHAR2(100)  NULL,

   company_career        VARCHAR2(100) NOT NULL ,

   company_education     VARCHAR2(300) NOT NULL,

   recruit_tilte         VARCHAR2(300) NOT NULL ,

   recruit_deadline      VARCHAR2(100) NOT NULL 

);




--??????

CREATE TABLE company_info

(

   company_id            VARCHAR2(20) NOT NULL PRIMARY KEY references company_login(company_id) on delete cascade,

   company_category      VARCHAR2(100) NOT NULL ,

   company_ceo           VARCHAR2(20) NOT NULL ,

   company_name          VARCHAR2(100) NOT NULL ,

   company_head_addr     VARCHAR2(300) NOT NULL ,

   company_type          VARCHAR2(300) NOT NULL , --????

    company_employees     NUMBER(5) NOT NULL,

   company_phone         VARCHAR2(18) NOT NULL ,

   company_estblish      VARCHAR2(100) NOT NULL , --??????

   company_page          VARCHAR2(200) NOT NULL,

    company_VIEWS        NUMBER(7)

);




--????ȸ??????

CREATE TABLE person_login

(

   person_id             VARCHAR2(20) NOT NULL PRIMARY KEY ,

   person_pwd            VARCHAR2(18) NOT NULL  ,

   person_phone          VARCHAR2(20) NOT NULL

);




--?????̷¼?

CREATE TABLE person__resume

(

   person_id             VARCHAR2(20) NOT NULL PRIMARY KEY references person_login(person_id) on delete cascade,

    person_name           VARCHAR2(30) NOT NULL ,

    person_occupation     VARCHAR2(30) NOT NULL , --???????

   person_career         VARCHAR2(4000) NOT NULL ,

   person_img            VARCHAR2(30) NOT NULL ,

   person_age            NUMBER(3)  NULL ,

   person_sex            VARCHAR2(10) NOT NULL ,

   person_birth          VARCHAR2(30) NOT NULL ,

   person_email          VARCHAR2(50) NOT NULL ,

   person_hope_place     VARCHAR2(100) NOT NULL ,

   person_job_status     VARCHAR2(50) NOT NULL 

);




--?? -> ?????޼???

CREATE TABLE message_box_c_p

(

   message_no            NUMBER(7) NOT NULL PRIMARY KEY ,

   message_date          DATE NOT NULL ,

   message_contents      VARCHAR2(20) NOT NULL ,

   message_flag          NUMBER(1) NOT NULL ,

   company_send_id       VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade,

   person_receive_id     VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade

);




--????-> ?? ?޼???

CREATE TABLE message_box_p_c

(

   message_no            NUMBER(7) NOT NULL PRIMARY KEY ,

   message_date          DATE NOT NULL ,

   message_contents      VARCHAR2(20) NOT NULL ,

   message_flag          NUMBER(1) NOT NULL ,

   person_send_id        VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade,

   company_receive_id    VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade

);




--??????? ??ũ??

CREATE TABLE scrap_company

(

   scrap_no              NUMBER(7) NOT NULL PRIMARY KEY ,

    scrap_date            DATE NOT NULL,

   person_scraper_id     VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade,

   company_target_id     VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade

);




--??????????ũ??

CREATE TABLE scrap_person

(

   scrap_no              NUMBER(7) NOT NULL PRIMARY KEY ,

    scrap_date            DATE NOT NULL,

    company_scraper_id    VARCHAR2(20) NOT NULL references company_login(company_id) on delete cascade,

   person_target_id      VARCHAR2(20) NOT NULL references person_login(person_id) on delete cascade

   

);




---?????

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




drop table message_box_c_p_seq;




------------------------ insert ---------------------------




--- PERSON

INSERT INTO person_login VALUES('AAA','011-000-0000','1234');

INSERT INTO PERSON__RESUME VALUES('AAA','NAME1','OCCUPATION1','CAREER1','IMG1','21','SEX1','BIRTH1','EMAIL1','HOPE1','JOB1');




INSERT INTO person_login VALUES('BBB','010-000-0000','1234');

INSERT INTO PERSON__RESUME VALUES('BBB','NAME2','OCCUPATION2','CAREER2','IMG2','22','SEX2','BIRTH2','EMAIL2','HOPE_P2','JOB_S2');




INSERT INTO person_login VALUES('CCC','017-000-0000','1234');

INSERT INTO PERSON__RESUME VALUES('CCC','NAME3','OCCUPATION3','CAREER3','IMG3','23','SEX3','BIRTH3','EMAIL3','HOPE_P3','JOB_S3');




---COMPANY

INSERT INTO COMPANY_LOGIN VALUES('DDD','1234','010-1111-0000');

INSERT INTO COMPANY_???????VALUES('DDD','WARKADDR1','EMPLOYMENT1','SALARY1','CAREER1','EDUCATION1','TITLE1','DEADLINE1');




INSERT INTO COMPANY_INFO VALUES('DDD','CATEGORY1','NAME1','CEO1','H_ADDR1','CORPORATE1',2000,'PHONE1','ESTBLISH1','PAGE1');










INSERT INTO COMPANY_LOGIN VALUES('EEE','1234','010-2222-0000');

INSERT INTO COMPANY_???????VALUES('EEE','WARKADDR2','EMPLOYMENT2','SALARY2','CAREER2','EDUCATION2','TITLE2','DEADLINE2');




INSERT INTO COMPANY_INFO VALUES('EEE','CATEGORY2','NAME2','CEO2','H_ADDR2','CORPORATE2',4000,'PHONE2','ESTBLISH2','PAGE2');










INSERT INTO COMPANY_LOGIN VALUES('FFF','1234','010-3333-0000');

INSERT INTO COMPANY_???????VALUES('FFF','WARKADDR3','EMPLOYMENT3','SALARY3','CAREER3','EDUCATION3','TITLE3','DEADLINE3');




INSERT INTO COMPANY_INFO VALUES('FFF','CATEGORY3','NAME3','CEO3','H_ADDR3','CORPORATE3',10000,'PHONE3','ESTBLISH3','PAGE3');










--MESSAGE

INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'CONTENTS1','0','EEE','AAA');

INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'CONTENTS1','0','DDD','BBB');

INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,'CONTENTS1','0','FFF','CCC');




INSERT INTO MESSAGE_BOX_P_C VALUES(message_box_p_c_seq.nextval,SYSDATE,'CONTENTS2','1','AAA','EEE');

INSERT INTO MESSAGE_BOX_P_C VALUES(message_box_p_c_seq.nextval,SYSDATE,'CONTENTS2','1','BBB','DDD');

INSERT INTO MESSAGE_BOX_P_C VALUES(message_box_p_c_seq.nextval,SYSDATE,'CONTENTS2','1','CCC','FFF');







---SCRAP

INSERT INTO SCRAP_COMPANY VALUES(scrap_company_seq.nextval,SYSDATE,'AAA','EEE');

INSERT INTO SCRAP_COMPANY VALUES(scrap_company_seq.nextval,SYSDATE,'BBB','DDD');

INSERT INTO SCRAP_COMPANY VALUES(scrap_company_seq.nextval,SYSDATE,'CCC','FFF');




INSERT INTO SCRAP_PERSON VALUES(scrap_person_seq.nextval,SYSDATE,'EEE','AAA');

INSERT INTO SCRAP_PERSON VALUES(scrap_person_seq.nextval,SYSDATE,'DDD','BBB');

INSERT INTO SCRAP_PERSON VALUES(scrap_person_seq.nextval,SYSDATE,'FFF','CCC');







--COMPANY_COUNT

INSERT INTO COMPANY_COUNT VALUES('DDD',100,77,50);

INSERT INTO COMPANY_COUNT VALUES('EEE',50,31,20);

INSERT INTO COMPANY_COUNT VALUES('FFF',20,15,10);







--- QUERY ?? -------




--?˻?

SELECT message_box_c_p_seq FROM MESSAGE_BOX_C_P WHERE company_send_id='DDD';




SELECT * FROM PERSON_RESUME 

WHERE PERSON_ID=(SELECT PERSON_ID FROM PERSON_LOGIN WHERE ID='AAA');




SELECT * FROM PERSON_RESUME 

WHERE PERSON_ID=(SELECT PERSON_RECEIVE_ID FROM MESSAGE_BOX_C_P WHERE PERSON_RECEIVE_ID='AAA');




select message_box_c_p_seq.CURRVAL from message_box_c_p;




--????

INSERT INTO PERSON_LOGIN VALUES('ABCD','1234','010-0000-0010');

INSERT INTO person__resume VALUES('ABCD','?̸?','?ǰ?,'??','?̹??','25','????','????,'?̸??,'????,'????');




--????

UPDATE PERSON__RESUME SET PERSON_SEX='????' WHERE PERSON_ID='AAA';




--???

DELETE person_LOGIN 

WHERE PERSON_ID='ABCD';




DELETE COMPANY_LOGIN 

WHERE COMPANY_ID='DDD';







------------------- SELECT ------------------------

SELECT * FROM COMPANY_LOGIN;




SELECT * FROM COMPANY_???????

SELECT * FROM COMPANY_INFO;

SELECT * FROM COMPANY_COUNT;







SELECT * FROM PERSON_LOGIN;

SELECT * FROM PERSON__RESUME;




SELECT * FROM MESSAGE_BOX_C_P;

SELECT * FROM MESSAGE_BOX_P_C;

SELECT * FROM SCRAP_COMPANY;

SELECT * FROM SCRAP_PERSON;




ROLLBACK;

COMMIT;










--??̺????

DROP TABLE PERSON_LOGIN;

DROP TABLE PERSON_RESUME;




DROP TABLE COMPANY_LOGIN;

DROP TABLE COMPANY_???????

DROP TABLE COMPANY_INFO;

DROP TABLE COMPANY_COUNT;










DROP TABLE MESSAGE_BOX_C_P;

DROP TABLE MESSAGE_BOX_P_C;

DROP TABLE SCRAP_COMPANY;

DROP TABLE SCRAP_PERSON;







---------------------------------------------

-- ??ȸ??????

INSERT INTO company_login VALUES(?,?,?)

-- ??̵??ߺ?üũ

SELECT * FROM company_login WHERE company_id = ?

-- ?α??

SELECT * FROM company_login WHERE company_id = ? AND company_pwd = ?

-- ??????????

INSERT INTO COMPANY_RECRUIT VALUES('DDD','WARKADDR1','EMPLOYMENT1','SALARY1','CAREER1','EDUCATION1','TITLE1','DEADLINE1');

-- ?????????ȸ (ȸ??̸???????ȸ)

SELECT A.* FROM COMPANY_RECRUIT A, company_login B WHERE A.company_id=B.company_id AND A.company_number LIKE '%?%'

-- ?????????ü??ȸ (??ü ??ȸ)

SELECT * FROM COMPANY_RECRUIT;

-- ?????? ???

INSERT INTO COMPANY_INFO VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0);

-- ?????? ??ȸ

SELECT * FROM COMPANY_INFO

-- ??ȸ?? ?ø???

INSERT INTO company_info SET company_VIEWS = company_VIEWS + 1 WHERE company_id=?

-- INSERT

INSERT INTO person_login VALUES(?,?,?);

-- ??̵?ߺ???ȸ

SELECT * FROM person_login WHERE person_id = ? 

-- ?α??

SELECT * FROM person_login WHERE person_id = ? AND person_pwd = ?

-- ?̷¼? ???

INSERT INTO PERSON__RESUME VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

-- ??ȸ

SELECT * FROM PERSON__RESUME

-- ???

INSERT INTO MESSAGE_BOX_C_P VALUES(message_box_c_p_seq.nextval,SYSDATE,?, 0, ?, ?);

-- ??ȸ

SELECT * FROM MESSAGE_BOX_C_P

-- ?о????????????

UPDATE MESSAGE_BOX_C_P SET message_flag = '1' WHERE message_no = ?

-- ???

INSERT INTO message_box_p_c VALUES(message_box_p_c_seq.nextval,SYSDATE,?, 0, ?, ?);

-- ??ȸ

SELECT * FROM message_box_p_c

-- ?о????????????

UPDATE message_box_p_c SET message_flag = '1' WHERE message_no = ?

-- ȸ?纰 ????????

SELECT COUNT(DISTINCT person_send_id) FROM message_box_p_c WHERE company_receive_id = ?

-- ??ũ??

INSERT INTO scrap_company VALUES(scrap_company_seq.nextval,SYSDATE,?, ?);

-- ??ũ?????

DELETE scrap_company WHERE scrap_no=?

-- ȸ?纰 ??ũ?? ??

SELECT COUNT(*) FROM scrap_company WHERE company_target_id = ?

-- ??ũ??

INSERT INTO scrap_person VALUES(scrap_person_seq.nextval,SYSDATE,?, ?);

-- ??ũ?????

DELETE scrap_person WHERE scrap_no=?
