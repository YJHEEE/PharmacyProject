-----------------------------------DROP&DELETE----------------------------------
DROP TABLE PHARMACY;
DROP TABLE QNA;
DROP SEQUENCE QNA_SEQ;
DROP TABLE LOCATION;
DROP TABLE USERS;
DROP TABLE PHAM_USER;
DROP TABLE DBOOK_MARK;
DROP TABLE PBOOK_MARK;
DROP TABLE DRUG;
DROP TABLE DRUG_SHAPES;

-------------------------------------CREATE-------------------------------------
CREATE TABLE PHARMACY (
	pham_no	VARCHAR2(30),
	pham_name	VARCHAR2(100),
	pham_tell	VARCHAR2(20),
	pham_s_1	VARCHAR2(50),
	pham_c_1	VARCHAR2(50),
	pham_s_2	VARCHAR2(50),
	pham_c_2	VARCHAR2(50),
	pham_s_3	VARCHAR2(50),
	pham_c_3	VARCHAR2(50),
	pham_s_4	VARCHAR2(50),
	pham_c_4	VARCHAR2(50),
	pham_s_5	VARCHAR2(50),
	pham_c_5	VARCHAR2(50),
	pham_s_6	VARCHAR2(50),
	pham_c_6	VARCHAR2(50),
	pham_s_7	VARCHAR2(50),
	pham_c_7	VARCHAR2(50),
	pham_s_8	VARCHAR2(50),
	pham_c_8	VARCHAR2(50)
);

CREATE TABLE QNA (
	q_num	VARCHAR2(20),
	pham_no	VARCHAR2(30),
	q_name	VARCHAR2(20),
	q_title	VARCHAR2(200),
	q_contents	VARCHAR2(1000)
);

CREATE TABLE LOCATION (
	PHAM_NO   VARCHAR2(10),
	LOCATION_GU   VARCHAR2(20),
	LOCATION_ADDRESS   VARCHAR2(500),
	LOCATION_SUMMARY   VARCHAR2(500),
	LOCATION_LATITUDE   VARCHAR2(200),
	LOCATION_LONGITUDE   VARCHAR2(200)
);

CREATE TABLE USERS (	
	USER_ID   VARCHAR2(50),
	USER_PW   VARCHAR2(20),
	USER_NAME   VARCHAR2(20),
	USER_TELL   VARCHAR2(20)
);

-- 회원정보(약사)
CREATE TABLE PHAM_USER (   
   PHAM_USER_ID   VARCHAR2(50),
   PHAM_NO   VARCHAR2(30),
   PHAM_USER_PW   VARCHAR2(20)
);

CREATE TABLE DBOOK_MARK (
	DRUG_CODE   VARCHAR2(100),
	USER_ID   VARCHAR2(100),
	DBOOK_SCORE   VARCHAR2(10)
);

CREATE TABLE PBOOK_MARK (
	PHAM_NO   VARCHAR2(100),
	USER_ID   VARCHAR2(50),
	PBOOK_SCORE   VARCHAR2(10)
);
    
CREATE TABLE DRUG (
    DRUG_CODE VARCHAR2(50),
    DRUG_NAME VARCHAR2(1000),
    DRUG_EFFECT VARCHAR2(1000),
    DRUG_USAGE VARCHAR2(1000),
    DRUG_PRECAUTIONS VARCHAR2(1000),
    DRUG_HOW_STORE VARCHAR2(1000),
    DRUG_MANUFACTOROR VARCHAR2(100),
    DRUG_PRICE VARCHAR2(100)
); 

CREATE TABLE DRUG_SHAPES (
    DRUG_CODE VARCHAR2(50),
    DRUG_SHAPE VARCHAR2(100),
    DRUG_COLOR VARCHAR2(20),
    DRUG_IMAGE VARCHAR2(500)
);

--시퀀스 QNA_SEQ
CREATE SEQUENCE QNA_SEQ MAXVALUE 100 CYCLE NOCACHE;

--------------------------------------ALTER-------------------------------------
--ALTER TABLE PHARMACY ADD CONSTRAINT PK_PHARMACY PRIMARY KEY ( pham_no );
--ALTER TABLE QNA ADD CONSTRAINT PK_QNA PRIMARY KEY ( q_num, pham_no );

--------------------------------------INSERT------------------------------------
INSERT INTO PHARMACY(pham_no, pham_name, pham_tell, pham_s_1, pham_c_1, pham_s_2, pham_c_2, pham_s_3, pham_c_3, pham_s_4, pham_c_4, pham_s_5, pham_c_5, 
                     pham_s_6, pham_c_6, pham_s_7, pham_c_7, pham_s_8, pham_c_8)
            VALUES('999999', 'KH약국', '02-1234-5678', '0900', '2000', '0900', '2000', '0900', '2000', '0900', '2000', '0900', '2000', '1000', '1500', '', '', '', '');
INSERT INTO QNA(q_num, pham_no, q_name, q_title, q_contents) VALUES (QNA_SEQ.NEXTVAL, '999999', '홍길동', '문의드립니다.', 'KF94 중형 마스크 살구색으로 50개 바로 구매가능할까요');
INSERT INTO LOCATION (PHAM_NO, LOCATION_GU, LOCATION_ADDRESS, LOCATION_SUMMARY, LOCATION_LATITUDE, LOCATION_LONGITUDE) 
            VALUES ('999999', '강남구', '서울특별시 강남구 테헤란로 14길 6', '남도빌딩 2F, 3F, 4F, 5F, 6F', '11.1234567', '111.1234567');
INSERT INTO USERS (USER_ID, USER_PW, USER_NAME, USER_TELL) VALUES('users_khtest', '0000', '김회원', '010-5766-7979');
INSERT INTO PHAM_USER (PHAM_USER_ID, PHAM_NO, PHAM_USER_PW) VALUES('pham_user_khtest', '999999','1234');
INSERT INTO DBOOK_MARK (DRUG_CODE, USER_ID, DBOOK_SCORE) VALUES ('1', 'users_khtest', '7.8');
INSERT INTO PBOOK_MARK (PHAM_NO, USER_ID, PBOOK_SCORE) VALUES ('999999', 'users_khtest', '9.0');
INSERT INTO DRUG (DRUG_CODE,DRUG_NAME,DRUG_EFFECT,DRUG_USAGE,DRUG_PRECAUTIONS,DRUG_HOW_STORE,DRUG_MANUFACTOROR, DRUG_PRICE) 
            VALUES ('1','타이레놀','해열제','식후30분','하루한개','냉장보관','당근약품','5000');
INSERT INTO DRUG (DRUG_CODE,DRUG_NAME,DRUG_EFFECT,DRUG_USAGE,DRUG_PRECAUTIONS,DRUG_HOW_STORE,DRUG_MANUFACTOROR, DRUG_PRICE) 
            VALUES ('2','후시딘','연고','소독 후 얇게 도포','수시로','실온보관','KH약품','3000');
INSERT INTO DRUG_SHAPES (DRUG_CODE,DRUG_SHAPE,DRUG_COLOR,DRUG_IMAGE) VALUES('1','타원형','흰색','');

--------------------------------------UPDATE------------------------------------
UPDATE DBOOK_MARK SET DBOOK_SCORE =? WHERE DRUG_CODE = ?;

--------------------------------------DELETE------------------------------------
DELETE FROM DBOOK_MARK WHERE DRUG_CODE = '1' AND USER_ID = 'users_khtest';

--------------------------------------SELECT------------------------------------
SELECT * FROM PHARMACY;
SELECT * FROM QNA;
SELECT * FROM LOCATION;
SELECT * FROM USERS;
SELECT * FROM DBOOK_MARK;
SELECT * FROM PBOOK_MARK;
SELECT * FROM PHAM_USER;
SELECT * FROM DRUG;
SELECT * FROM DRUG_SHAPES;