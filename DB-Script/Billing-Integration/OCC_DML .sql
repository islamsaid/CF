------- CREATE OCC LOOKUP 
CREATE TABLE LK_OCC (
	ID NUMBER NOT NULL
);

ALTER TABLE LK_OCC ADD ACTION_CODE CHAR(100) NOT NULL;
ALTER TABLE LK_OCC ADD FEE_CLASS  NUMBER(38,0) NOT NULL;
ALTER TABLE LK_OCC ADD RPCODE NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD RPCODE_PUB VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD SPCODE NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD SPCODE_PUB VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD SNCODE NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD SNCODE_PUB VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD RP_VSCODE NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD EVENT_CODE NUMBER NULL;
ALTER TABLE LK_OCC ADD AMOUNT NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD AMOUNT_REL NUMBER  NULL;
ALTER TABLE LK_OCC ADD NUM_PERIODS NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD GLCODE VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD REMARK VARCHAR2(100) NOT NULL;
ALTER TABLE LK_OCC ADD SEQNO NUMBER  NULL;

ALTER TABLE LK_OCC ADD FEE_TYPE VARCHAR2(100) NOT NULL;
ALTER TABLE LK_OCC ADD BILL_FORMAT VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD JOBCOST NUMBER   NULL;
ALTER TABLE LK_OCC ADD JOBCOST_PUB VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD JOBCOSTDISC NUMBER   NULL;
ALTER TABLE LK_OCC ADD JOBCOSTDISC_PUB VARCHAR2(100)   NULL;

ALTER TABLE LK_OCC ADD JOBCOSTMIN NUMBER   NULL;
ALTER TABLE LK_OCC ADD JOBCOSTMIN_PUB VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD GLCODEDISC VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD GLCODEMIN VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD IV_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD SERVCAT_CODE VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD SERV_CODE VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD SERV_TYPE VARCHAR2(100)   NULL;

ALTER TABLE LK_OCC ADD FU_PACK_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD FU_PACK_ID_PUB VARCHAR2(100)   NULL;
ALTER TABLE LK_OCC ADD FU_VER NUMBER   NULL;
ALTER TABLE LK_OCC ADD FU_PKVER NUMBER   NULL;
ALTER TABLE LK_OCC ADD FU_PKELSQ NUMBER   NULL;
ALTER TABLE LK_OCC ADD FU_NUM NUMBER   NULL;
ALTER TABLE LK_OCC ADD RECORD_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD RECORD_SUB_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD RERATE_SEQNO NUMBER   NULL;
ALTER TABLE LK_OCC ADD RECORD_SUMMARY_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD BASE_PART_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD CHARGE_PART_ID NUMBER   NULL;

ALTER TABLE LK_OCC ADD DIRNUM VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD DEVICENUM VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD BILLING_ACCOUNT_CODE VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD BILLING_ACCOUNT_ID NUMBER   NULL;
ALTER TABLE LK_OCC ADD CS_ID NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD CS_ID_PUB VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD CO_ID NUMBER NOT NULL;
ALTER TABLE LK_OCC ADD CO_ID_PUB VARCHAR2(100) NULL;
ALTER TABLE LK_OCC ADD PAYER_CUSTOMER_ID NUMBER  NULL;
ALTER TABLE LK_OCC ADD FEE_SEQ NUMBER  NULL;
ALTER TABLE LK_OCC 
ADD (FIRST_PERIOD_PRORATE NUMBER(2) );

ALTER TABLE LK_OCC 
ADD (PERIOD_END_DATE DATE );

ALTER TABLE LK_OCC 
ADD (VALID_FROM DATE );

ALTER TABLE LK_OCC 
ADD (CALL_DATE DATE );
