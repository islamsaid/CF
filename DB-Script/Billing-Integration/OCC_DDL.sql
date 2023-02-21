------------------------------------------
-----CREATE OCC VIEW
CREATE VIEW OCC_LOOKUPS_VIEWS
AS SELECT  f.ID                   AS ID,
           f.ACTION_CODE          AS ACTION_CODE,
           f.FEE_CLASS            AS FEE_CLASS,
           f.RPCODE                    AS RPCODE,
           f.RPCODE_PUB                   AS RPCODE_PUB,
f.SPCODE                   AS SPCODE,
f.SPCODE_PUB                   AS SPCODE_PUB,
f.SNCODE                   AS SNCODE,
f.SNCODE_PUB                   AS SNCODE_PUB,
f.RP_VSCODE                   AS RP_VSCODE,
f.EVENT_CODE                   AS EVENT_CODE,
f.AMOUNT                   AS AMOUNT,
f.AMOUNT_REL                   AS AMOUNT_REL,
f.NUM_PERIODS                   AS NUM_PERIODS,
f.PERIOD_END_DATE                   AS PERIOD_END_DATE,
f.FIRST_PERIOD_PRORATE                   AS FIRST_PERIOD_PRORATE,
f.VALID_FROM                   AS VALID_FROM,
f.GLCODE                   AS GLCODE,
f.REMARK                   AS REMARK,
f.SEQNO                   AS SEQNO,
f.FEE_TYPE                   AS FEE_TYPE,
f.BILL_FORMAT                   AS BILL_FORMAT,
f.JOBCOST                   AS JOBCOST,
f.JOBCOST_PUB                   AS JOBCOST_PUB,
f.JOBCOSTDISC                   AS JOBCOSTDISC,
f.JOBCOSTDISC_PUB                   AS JOBCOSTDISC_PUB,
f.JOBCOSTMIN                   AS JOBCOSTMIN,
f.JOBCOSTMIN_PUB                   AS JOBCOSTMIN_PUB,
f.GLCODEDISC                   AS GLCODEDISC,
f.GLCODEMIN                   AS GLCODEMIN,
f.IV_ID                   AS IV_ID,
f.SERVCAT_CODE                   AS SERVCAT_CODE,
f.SERV_CODE                   AS SERV_CODE,
f.SERV_TYPE                   AS SERV_TYPE,
f.FU_PACK_ID                   AS FU_PACK_ID,
f.FU_PACK_ID_PUB                   AS FU_PACK_ID_PUB,
f.FU_VER                   AS FU_VER,
f.FU_PKVER                   AS FU_PKVER,
f.FU_PKELSQ                   AS FU_PKELSQ,
f.FU_NUM                   AS FU_NUM,
f.RECORD_ID                   AS RECORD_ID,
f.RECORD_SUB_ID                   AS RECORD_SUB_ID,
f.RERATE_SEQNO                   AS RERATE_SEQNO,
f.RECORD_SUMMARY_ID                   AS RECORD_SUMMARY_ID,
f.BASE_PART_ID                   AS BASE_PART_ID,
f.CHARGE_PART_ID                   AS CHARGE_PART_ID,
f.DIRNUM                   AS DIRNUM,
f.DEVICENUM                   AS DEVICENUM,
f.CALL_DATE                   AS  CALL_DATE,
f.BILLING_ACCOUNT_CODE                   AS BILLING_ACCOUNT_CODE,
f.BILLING_ACCOUNT_ID                   AS BILLING_ACCOUNT_ID,
f.CS_ID                   AS CS_ID,
f.CS_ID_PUB                   AS CS_ID_PUB,
f.CO_ID                   AS CO_ID,
f.CO_ID_PUB                   AS CO_ID_PUB,
f.PAYER_CUSTOMER_ID                   AS PAYER_CUSTOMER_ID,
f.FEE_SEQ                   AS FEE_SEQ
      FROM LK_OCC  f



------------------------------------------------
---- INSERT NEW DATASOURCE
INSERT INTO  LK_PARAMETERS_DATASOURCE  VALUES  (13, 'Http request and has list');
INSERT INTO  LK_PARAMETERS_DATASOURCE  VALUES  (14 , 'Complex Lookup');


--------------------------------
----- INSERT LOOKUP DEFINITION
INSERT INTO   LK_LOOKUP_DEFINITION  VALUES  (2, 'OCC_LOOKUPS_VIEWS' ,'ID');

-------------------------------------------
