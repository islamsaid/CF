--------------------------------------------------------
--  DDL for Table LK_PARENT_PRODUCTS
--------------------------------------------------------

  CREATE TABLE "LK_PARENT_PRODUCTS" 
   (	"ID" NUMBER(30,0), 
	"PRODUCT_NAME" VARCHAR2(400 BYTE), 
	"PRODUCT_TYPE" NUMBER, 
	"PRODUCT_RECURRENCE" VARCHAR2(400 BYTE), 
	"CONDITION" VARCHAR2(400 BYTE), 
	"MAIN_QUOTA_NAMES" VARCHAR2(2000 BYTE), 
	"MAIN_QUOTA_TYPE" VARCHAR2(400 BYTE), 
	"MAIN_ROUNDING_FACTOR" VARCHAR2(400 BYTE), 
	"MAIN_QUOTA_LOCATION" VARCHAR2(400 BYTE), 
	"MAIN_QUOTA_UNIT" VARCHAR2(2000 BYTE), 
	"PRODUCT_STATUS" VARCHAR2(2000 BYTE), 
	"PRODUCT_STATUS_COND" VARCHAR2(400 BYTE), 
	"START_DATE_FLAG" NUMBER(30,0), 
	"START_DATE_SOURCE_ID" VARCHAR2(400 BYTE), 
	"RENEWAL_DATE_FLAG" NUMBER(30,0), 
	"RENEWAL_DATE_SOURCE_ID" VARCHAR2(2000 BYTE), 
	"EXPIRY_DATE_FLAG" NUMBER(30,0), 
	"EXPIRY_DATE_SOURCE_ID" VARCHAR2(400 BYTE), 
	"CHILD_PRODUCTS_IDS" VARCHAR2(400 BYTE),
	CONSTRAINT "LK_PARENT_PRODUCTS_PK" PRIMARY KEY ("ID")
   );
