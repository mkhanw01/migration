-- // Adding Member Table

CREATE TABLE MEMBER_DETAILS (
   MEMBER_ID NUMERIC(20,0) NOT NULL,
   FIRST_NAME VARCHAR(255) NOT NULL,
   LAST_NAME VARCHAR(255) NULL,
   EMAIL VARCHAR(255) NOT NULL,
   DELETED CHAR(1) DEFAULT 'N'
);

ALTER TABLE MEMBER_DETAILS
ADD CONSTRAINT PK_MEMBER_DETAILS_ID
PRIMARY KEY (MEMBER_ID);

ALTER TABLE MEMBER_DETAILS
ADD CONSTRAINT UK_MEMBER_DETAILS_EMAIL
UNIQUE (EMAIL);



-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE MEMBER_DETAILS
DROP CONSTRAINT IF EXISTS UK_MEMBER_DETAILS_EMAIL;

ALTER TABLE MEMBER_DETAILS
DROP CONSTRAINT IF EXISTS PK_MEMBER_DETAILS_ID;

DROP TABLE MEMBER_DETAILS;

