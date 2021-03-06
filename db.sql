--------------------------------------------------------
--  DDL for Table IL
--------------------------------------------------------

  CREATE TABLE "ORS"."IL" 
   (	"ID" NUMBER(*,0), 
	"ILADI" VARCHAR2(20 BYTE), 
	"ULKEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUSTERI
--------------------------------------------------------

  CREATE TABLE "ORS"."MUSTERI" 
   (	"ID" NUMBER(*,0), 
	"ADI" VARCHAR2(20 BYTE), 
	"SOYADI" VARCHAR2(20 BYTE), 
	"ILID" NUMBER(*,0), 
	"POSTAKODU" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"FAKS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ODA
--------------------------------------------------------

  CREATE TABLE "ORS"."ODA" 
   (	"ID" NUMBER, 
	"ODAKAPASITEID" NUMBER, 
	"ODATIPID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ODAKAPASITE
--------------------------------------------------------

  CREATE TABLE "ORS"."ODAKAPASITE" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(20 BYTE), 
	"SAYISI" VARCHAR2(20 BYTE), 
	"ODATIPID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ODATIPI
--------------------------------------------------------

  CREATE TABLE "ORS"."ODATIPI" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(20 BYTE), 
	"RESIMI" VARCHAR2(20 BYTE), 
	"FIYAT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ODEMETIPI
--------------------------------------------------------

  CREATE TABLE "ORS"."ODEMETIPI" 
   (	"ID" NUMBER, 
	"ODEMEADI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OTEL
--------------------------------------------------------

  CREATE TABLE "ORS"."OTEL" 
   (	"OTELADI" VARCHAR2(20 BYTE), 
	"ILID" NUMBER, 
	"POSTAKODU" VARCHAR2(5 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"FAKS" VARCHAR2(20 BYTE), 
	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REZERVASYON
--------------------------------------------------------

  CREATE TABLE "ORS"."REZERVASYON" 
   (	"ID" NUMBER, 
	"MUSTERIID" NUMBER, 
	"GIRISTARIHI" DATE, 
	"CIKISTARIHI" DATE, 
	"TOPLAMTUTAR" NUMBER(*,0), 
	"REZERVASYONTARIHI" DATE, 
	"ODASAYISI" NUMBER, 
	"ODATIPIID" NUMBER, 
	"REZERVASYONDURUMID" NUMBER(*,0), 
	"ODEMETIPID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REZERVASYONDURUM
--------------------------------------------------------

  CREATE TABLE "ORS"."REZERVASYONDURUM" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ULKE
--------------------------------------------------------

  CREATE TABLE "ORS"."ULKE" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table YONETICI
--------------------------------------------------------

  CREATE TABLE "ORS"."YONETICI" 
   (	"KULLANICIADI" VARCHAR2(20 BYTE), 
	"PAROLA" VARCHAR2(20 BYTE), 
	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Procedure RAISE_ODA_FIYAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ORS"."RAISE_ODA_FIYAT" 
  (p_id      IN odatipi.id%type,
   p_percent IN NUMBER)
 IS
 BEGIN
  UPDATE odatipi
  SET    fiyat = fiyat * (1 + p_percent/100)
  WHERE  id = p_id;
 END raise_oda_fiyat;

/
--------------------------------------------------------
--  DDL for Procedure TOTAL_PRICE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ORS"."TOTAL_PRICE" 
(
  P_ID REZERVASYON.ID%TYPE
) IS
TOPLAMTUTAR NUMBER;
BEGIN
  SELECT (REZERVASYON.ODASAYISI * ODATIPI.FIYAT) INTO TOPLAMTUTAR FROM REZERVASYON
  JOIN ODATIPI ON REZERVASYON.ODATIPIID = ODATIPI.ID
  WHERE REZERVASYON.ID = P_ID;
END TOTAL_PRICE;

