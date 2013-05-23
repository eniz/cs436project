--------------------------------------------------------
--  File created - Perþembe-Mayýs-02-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type REPORT_TEMPLATE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORS"."REPORT_TEMPLATE" AS OBJECT (reportType                 INTEGER, useDescriptionInfo          INTEGER, useQuantitativeInfo         INTEGER, useTableColumns             INTEGER, useTableColumnsComments     INTEGER, useTableIndexes             INTEGER, useTableConstraints         INTEGER, useTableFKReferringTo       INTEGER, useTableFKReferredFrom      INTEGER, useEntityAttributes         INTEGER, useEntityAttributesComments INTEGER, useEntityConstraints        INTEGER, useEntityIdentifiers        INTEGER, useEntityRelationships      INTEGER, useEntityIncomingProcesses  INTEGER, useEntityOutgoingProcesses  INTEGER, useDomainConstraints        INTEGER, useDomainUsedInTables       INTEGER, useDomainUsedInEntities     INTEGER, useSTAttributes             INTEGER, useSTAttributesComments     INTEGER, useSTMethods                INTEGER, useSTUsedInTables           INTEGER, useSTUsedInEntities         INTEGER, useCTUsedInTables           INTEGER, useCTUsedInEntities         INTEGER, useDTUsedInTables           INTEGER, useDTUsedInEntities         INTEGER, useCRImpactedObjects        INTEGER, useMRImpactedObjects        INTEGER)

/
--------------------------------------------------------
--  DDL for Sequence MUSTERI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."MUSTERI_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODAKAPASITE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."ODAKAPASITE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."ODA_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODATIPI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."ODATIPI_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODEMETIPI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."ODEMETIPI_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REZERVASYON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORS"."REZERVASYON_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
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
--  DDL for View DMRS_INSTALLATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRS_INSTALLATION" ("DMRS_PERSISTENCE_VERSION", "DMRS_REPORTS_VERSION", "CREATED_ON") AS 
  select 1.6 DMRS_Persistence_Version, 1.0 DMRS_Reports_Version, to_timestamp('2013/03/31 23:25:27','YYYY/MM/DD HH24:MI:SS') Created_On from dual with read only;
--------------------------------------------------------
--  DDL for View DMRS_VDIAGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRS_VDIAGRAMS" ("DIAGRAM_NAME", "OBJECT_ID", "OVID", "DIAGRAM_TYPE", "IS_DISPLAY", "VISIBLE", "MASTER_DIAGRAM_ID", "MASTER_DIAGRAM_OVID", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "NOTATION", "SHOW_ALL_DETAILS", "SHOW_NAMES_ONLY", "SHOW_ELEMENTS", "SHOW_DATATYPE", "SHOW_KEYS", "AUTOROUTE", "BOX_IN_BOX", "DIAGRAM_SVG", "DIAGRAM_PDF", "DESIGN_OVID", "PDF_NAME") AS 
  Select Diagram_Name, Object_Id, Ovid, Diagram_Type, Is_Display, Visible, Master_Diagram_Id, Master_Diagram_Ovid, Model_Id, Model_Ovid, Model_Name, Notation, Show_All_Details, Show_Names_Only, Show_Elements, Show_Datatype,Show_Keys, Autoroute, Box_In_Box, Diagram_Svg, Diagram_Pdf,  Design_Ovid, Diagram_Name||'.PDF' from DMRS_DIAGRAMS;
--------------------------------------------------------
--  DDL for View DMRV_AGGR_FUNC_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_AGGR_FUNC_DIMENSIONS" ("AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "DESIGN_OVID") AS 
  select  Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Design_OVID from DMRS_AGGR_FUNC_DIMENSIONS;
--------------------------------------------------------
--  DDL for View DMRV_AGGR_FUNC_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_AGGR_FUNC_LEVELS" ("AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_AGGR_FUNC_LEVELS;
--------------------------------------------------------
--  DDL for View DMRV_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ATTRIBUTES" ("ATTRIBUTE_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "MANDATORY", "DATATYPE_KIND", "VALUE_TYPE", "FORMULA", "SCOPEENTITY_ID", "SCOPEENTITY_OVID", "DOMAIN_ID", "DOMAIN_OVID", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "CHECK_CONSTRAINT_NAME", "DEFAULT_VALUE", "USE_DOMAIN_CONSTRAINT", "DOMAIN_NAME", "LOGICAL_TYPE_NAME", "STRUCTURED_TYPE_NAME", "DISTINCT_TYPE_NAME", "COLLECTION_TYPE_NAME", "SYNONYMS", "PREFERRED_ABBREVIATION", "RELATIONSHIP_ID", "RELATIONSHIP_OVID", "ENTITY_NAME", "PK_FLAG", "FK_FLAG", "RELATIONSHIP_NAME", "SEQUENCE", "T_SIZE", "T_PRECISION", "CHAR_UNITS", "NATIVE_TYPE", "T_SCALE", "DATA_SOURCE", "SCOPEENTITY_NAME", "DESIGN_OVID") AS 
  select  Attribute_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, Mandatory, DataType_Kind, Value_Type, Formula, ScopeEntity_ID, ScopeEntity_OVID, Domain_ID, Domain_OVID, Logical_Type_ID, Logical_Type_OVID, Distinct_Type_ID, Distinct_Type_OVID, Structured_Type_ID, Structured_Type_OVID, Collection_Type_ID, Collection_Type_OVID, Check_Constraint_Name, Default_Value, Use_Domain_Constraint, Domain_Name, Logical_Type_Name, Structured_Type_Name, Distinct_Type_Name, Collection_Type_Name, Synonyms, Preferred_Abbreviation, Relationship_ID, Relationship_OVID, Entity_Name, PK_Flag, FK_Flag, Relationship_Name, Sequence, T_Size, T_Precision, Char_Units, Native_Type, T_Scale, Data_Source, ScopeEntity_Name, Design_OVID from DMRS_ATTRIBUTES;
--------------------------------------------------------
--  DDL for View DMRV_AVT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_AVT" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "VALUE", "SHORT_DESCRIPTION", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Value, Short_Description, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_AVT;
--------------------------------------------------------
--  DDL for View DMRV_BUSINESS_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_BUSINESS_INFO" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME") AS 
  select  Design_ID, Design_OVID, Design_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name from DMRS_BUSINESS_INFO;
--------------------------------------------------------
--  DDL for View DMRV_CHANGE_REQUEST_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CHANGE_REQUEST_ELEMENTS" ("CHANGE_REQUEST_ID", "CHANGE_REQUEST_OVID", "CHANGE_REQUEST_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Change_Request_ID, Change_Request_OVID, Change_Request_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_CHANGE_REQUEST_ELEMENTS;
--------------------------------------------------------
--  DDL for View DMRV_CHANGE_REQUESTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CHANGE_REQUESTS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "CHANGE_REQUEST_ID", "CHANGE_REQUEST_OVID", "CHANGE_REQUEST_NAME", "REQUEST_STATUS", "REQUEST_DATE_STRING", "COMPLETION_DATE_STRING", "IS_COMPLETED", "REASON") AS 
  select  Design_ID, Design_OVID, Design_Name, Change_Request_ID, Change_Request_OVID, Change_Request_Name, Request_Status, Request_Date_String, Completion_Date_String, Is_Completed, Reason from DMRS_CHANGE_REQUESTS;
--------------------------------------------------------
--  DDL for View DMRV_CHECK_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CHECK_CONSTRAINTS" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "CONSTRAINT_NAME", "TEXT", "DATABASE_TYPE", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Constraint_Name, Text, Database_Type, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_CHECK_CONSTRAINTS;
--------------------------------------------------------
--  DDL for View DMRV_CLASSIFICATION_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CLASSIFICATION_TYPES" ("TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  Type_ID, Type_OVID, Type_Name, Design_ID, Design_OVID, Design_Name from DMRS_CLASSIFICATION_TYPES;
--------------------------------------------------------
--  DDL for View DMRV_COLLECTION_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_COLLECTION_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "COLLECTION_TYPE_NAME", "C_TYPE", "DATATYPE_ID", "DATATYPE_OVID", "DATATYPE_NAME", "DT_TYPE", "DT_REF", "MAX_ELEMENT", "PREDEFINED") AS 
  select  Design_ID, Design_OVID, Design_Name, Collection_Type_ID, Collection_Type_OVID, Collection_Type_Name, C_Type, DataType_ID, DataType_OVID, DataType_Name, DT_Type, DT_Ref, Max_Element, Predefined from DMRS_COLLECTION_TYPES;
--------------------------------------------------------
--  DDL for View DMRV_COLUMN_GROUPS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_COLUMN_GROUPS" ("TABLE_ID", "TABLE_OVID", "SEQUENCE", "COLUMNGROUP_ID", "COLUMNGROUP_OVID", "COLUMNGROUP_NAME", "COLUMNS", "NOTES", "TABLE_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Sequence, ColumnGroup_ID, ColumnGroup_OVID, ColumnGroup_Name, Columns, Notes, Table_Name, Design_OVID from DMRS_COLUMN_GROUPS;
--------------------------------------------------------
--  DDL for View DMRV_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_COLUMNS" ("COLUMN_NAME", "ABBREVIATION", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "MANDATORY", "DATATYPE_KIND", "VALUE_TYPE", "COMPUTED", "FORMULA", "SCOPEENTITY_ID", "SCOPEENTITY_OVID", "DOMAIN_ID", "DOMAIN_OVID", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "CHECK_CONSTRAINT_NAME", "DEFAULT_VALUE", "USE_DOMAIN_CONSTRAINT", "DOMAIN_NAME", "LOGICAL_TYPE_NAME", "STRUCTURED_TYPE_NAME", "DISTINCT_TYPE_NAME", "COLLECTION_TYPE_NAME", "USES_DEFAULT", "ENGINEER", "TABLE_NAME", "PK_FLAG", "FK_FLAG", "NATIVE_TYPE", "SEQUENCE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "T_SIZE", "T_PRECISION", "T_SCALE", "CHAR_UNITS", "PERSONALLY_ID_INFORMATION", "SENSITIVE_INFORMATION", "MASK_FOR_NONE_PRODUCTION", "SCOPEENTITY_NAME", "AUTO_INCREMENT_COLUMN", "IDENTITY_COLUMN", "AUTO_INCREMENT_GENERATE_ALWAYS", "AUTO_INCREMENT_START_WITH", "AUTO_INCREMENT_INCREMENT_BY", "AUTO_INCREMENT_MIN_VALUE", "AUTO_INCREMENT_MAX_VALUE", "AUTO_INCREMENT_CYCLE", "AUTO_INCREMENT_DISABLE_CACHE", "AUTO_INCREMENT_CACHE", "AUTO_INCREMENT_ORDER", "AUTO_INCREMENT_SEQUENCE_NAME", "AUTO_INCREMENT_TRIGGER_NAME", "DESIGN_OVID") AS 
  select  Column_Name, Abbreviation, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, Mandatory, DataType_Kind, Value_Type, Computed, Formula, ScopeEntity_ID, ScopeEntity_OVID, Domain_ID, Domain_OVID, Logical_Type_ID, Logical_Type_OVID, Distinct_Type_ID, Distinct_Type_OVID, Structured_Type_ID, Structured_Type_OVID, Collection_Type_ID, Collection_Type_OVID, Check_Constraint_Name, Default_Value, Use_Domain_Constraint, Domain_Name, Logical_Type_Name, Structured_Type_Name, Distinct_Type_Name, Collection_Type_Name, Uses_Default, Engineer, Table_Name, PK_Flag, FK_Flag, Native_Type, Sequence, Model_ID, Model_OVID, Model_Name, T_Size, T_Precision, T_Scale, Char_Units, Personally_ID_Information, Sensitive_Information, Mask_For_None_Production, ScopeEntity_Name, Auto_Increment_Column, Identity_Column, Auto_Increment_Generate_Always, Auto_Increment_Start_With, Auto_Increment_Increment_By, Auto_Increment_Min_Value, Auto_Increment_Max_Value, Auto_Increment_Cycle, Auto_Increment_Disable_Cache, Auto_Increment_Cache, Auto_Increment_Order, Auto_Increment_Sequence_Name, Auto_Increment_Trigger_Name, Design_OVID from DMRS_COLUMNS;
--------------------------------------------------------
--  DDL for View DMRV_COLUMN_UI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_COLUMN_UI" ("LABEL", "FORMAT_MASK", "FORM_DISPLAY_WIDTH", "FORM_MAXIMUM_WIDTH", "DISPLAY_AS", "FORM_HEIGHT", "DISPLAYED_ON_FORMS", "DISPLAYED_ON_REPORTS", "READ_ONLY", "HELP_TEXT", "OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "DESIGN_OVID") AS 
  select  Label, Format_Mask, Form_Display_Width, Form_Maximum_Width, Display_As, Form_Height, Displayed_On_Forms, Displayed_On_Reports, Read_Only, Help_Text, Object_ID, Object_OVID, Object_Name, Design_OVID from DMRS_COLUMN_UI;
--------------------------------------------------------
--  DDL for View DMRV_CONSTR_INDEX_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONSTR_INDEX_COLUMNS" ("INDEX_ID", "INDEX_OVID", "COLUMN_ID", "COLUMN_OVID", "TABLE_ID", "TABLE_OVID", "INDEX_NAME", "TABLE_NAME", "COLUMN_NAME", "SEQUENCE", "SORT_ORDER", "DESIGN_OVID") AS 
  select  Index_ID, Index_OVID, Column_ID, Column_OVID, Table_ID, Table_OVID, Index_Name, Table_Name, Column_Name, Sequence, Sort_Order, Design_OVID from DMRS_CONSTR_INDEX_COLUMNS;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_EMAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONTACT_EMAILS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "EMAIL_ID", "EMAIL_OVID", "EMAIL_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Email_ID, Email_OVID, Email_Name, Design_OVID from DMRS_CONTACT_EMAILS;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_LOCATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONTACT_LOCATIONS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "LOCATION_ID", "LOCATION_OVID", "LOCATION_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Location_ID, Location_OVID, Location_Name, Design_OVID from DMRS_CONTACT_LOCATIONS;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_RES_LOCATORS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONTACT_RES_LOCATORS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "RESOURCE_LOCATOR_ID", "RESOURCE_LOCATOR_OVID", "RESOURCE_LOCATOR_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Resource_Locator_ID, Resource_Locator_OVID, Resource_Locator_Name, Design_OVID from DMRS_CONTACT_RES_LOCATORS;
--------------------------------------------------------
--  DDL for View DMRV_CONTACTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONTACTS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Design_OVID from DMRS_CONTACTS;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_TELEPHONES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CONTACT_TELEPHONES" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "TELEPHONE_ID", "TELEPHONE_OVID", "TELEPHONE_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Telephone_ID, Telephone_OVID, Telephone_Name, Design_OVID from DMRS_CONTACT_TELEPHONES;
--------------------------------------------------------
--  DDL for View DMRV_CUBE_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CUBE_DIMENSIONS" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Design_OVID from DMRS_CUBE_DIMENSIONS;
--------------------------------------------------------
--  DDL for View DMRV_CUBES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_CUBES" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PART_DIMENSION_ID", "PART_DIMENSION_NAME", "PART_DIMENSION_OVID", "PART_HIERARCHY_ID", "PART_HIERARCHY_NAME", "PART_HIERARCHY_OVID", "PART_LEVEL_ID", "PART_LEVEL_NAME", "PART_LEVEL_OVID", "FULL_CUBE_SLICE_ID", "FULL_CUBE_SLICE_NAME", "FULL_CUBE_SLICE_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_COMPRESSED_COMPOSITES", "IS_GLOBAL_COMPOSITES", "IS_PARTITIONED", "IS_VIRTUAL", "PART_DESCRIPTION", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Model_ID, Model_Name, Model_OVID, Part_Dimension_ID, Part_Dimension_Name, Part_Dimension_OVID, Part_Hierarchy_ID, Part_Hierarchy_Name, Part_Hierarchy_OVID, Part_Level_ID, Part_Level_Name, Part_Level_OVID, Full_Cube_Slice_ID, Full_Cube_Slice_Name, Full_Cube_Slice_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Compressed_Composites, Is_Global_Composites, Is_Partitioned, Is_Virtual, Part_Description, Description, Design_OVID from DMRS_CUBES;
--------------------------------------------------------
--  DDL for View DMRV_DATA_FLOW_DIAGRAM_INFOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DATA_FLOW_DIAGRAM_INFOS" ("DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "DESIGN_OVID") AS 
  select  Diagram_ID, Diagram_OVID, Diagram_Name, Info_Store_ID, Info_Store_OVID, Info_Store_Name, Design_OVID from DMRS_DATA_FLOW_DIAGRAM_INFOS;
--------------------------------------------------------
--  DDL for View DMRV_DESIGNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DESIGNS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DATE_PUBLISHED", "PUBLISHED_BY", "PERSISTENCE_VERSION", "VERSION_COMMENTS") AS 
  select  Design_ID, Design_OVID, Design_Name, Date_Published, Published_By, Persistence_Version, Version_Comments from DMRS_DESIGNS;
--------------------------------------------------------
--  DDL for View DMRV_DIAGRAM_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DIAGRAM_ELEMENTS" ("NAME", "TYPE", "GEOMETRY_TYPE", "OBJECT_ID", "OVID", "VIEW_ID", "SOURCE_ID", "SOURCE_OVID", "SOURCE_VIEW_ID", "TARGET_ID", "TARGET_OVID", "TARGET_VIEW_ID", "MODEL_ID", "MODEL_OVID", "LOCATION_X", "HEIGHT", "WIDTH", "BG_COLOR", "FG_COLOR", "USE_DEFAULT_COLOR", "FORMATTING", "POINTS", "DIAGRAM_OVID", "DIAGRAM_ID", "DIAGRAM_NAME", "SOURCE_NAME", "TARGET_NAME", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Name, Type, Geometry_Type, Object_ID, OVID, View_ID, Source_ID, Source_OVID, Source_View_ID, Target_ID, Target_OVID, Target_View_ID, Model_ID, Model_OVID, Location_X, Height, Width, BG_Color, FG_Color, Use_Default_Color, Formatting, Points, Diagram_OVID, Diagram_ID, Diagram_Name, Source_Name, Target_Name, Model_Name, Design_OVID from DMRS_DIAGRAM_ELEMENTS;
--------------------------------------------------------
--  DDL for View DMRV_DIAGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DIAGRAMS" ("DIAGRAM_NAME", "OBJECT_ID", "OVID", "DIAGRAM_TYPE", "IS_DISPLAY", "VISIBLE", "MASTER_DIAGRAM_ID", "MASTER_DIAGRAM_OVID", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "SUBVIEW_ID", "SUBVIEW_OVID", "SUBVIEW_NAME", "DISPLAY_ID", "DISPLAY_OVID", "DISPLAY_NAME", "NOTATION", "SHOW_ALL_DETAILS", "SHOW_NAMES_ONLY", "SHOW_ELEMENTS", "SHOW_DATATYPE", "SHOW_KEYS", "AUTOROUTE", "BOX_IN_BOX", "MASTER_DIAGRAM_NAME", "DIAGRAM_SVG", "DIAGRAM_PDF", "DESIGN_OVID") AS 
  select  Diagram_Name, Object_ID, OVID, Diagram_Type, Is_Display, Visible, Master_Diagram_ID, Master_Diagram_OVID, Model_ID, Model_OVID, Model_Name, Subview_ID, Subview_OVID, Subview_Name, Display_ID, Display_OVID, Display_Name, Notation, Show_All_Details, Show_Names_Only, Show_Elements, Show_Datatype, Show_Keys, Autoroute, Box_In_box, Master_Diagram_Name, Diagram_SVG, Diagram_PDF, Design_OVID from DMRS_DIAGRAMS;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSION_CALC_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DIMENSION_CALC_ATTRS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "CALC_ATTRIBUTE_ID", "CALC_ATTRIBUTE_NAME", "CALC_ATTRIBUTE_OVID", "CALCULATED_EXPR", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Calc_Attribute_ID, Calc_Attribute_Name, Calc_Attribute_OVID, Calculated_Expr, Design_OVID from DMRS_DIMENSION_CALC_ATTRS;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSION_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DIMENSION_LEVELS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_DIMENSION_LEVELS;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DIMENSIONS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "BASE_ENTITY_ID", "BASE_ENTITY_NAME", "BASE_ENTITY_OVID", "BASE_LEVEL_ID", "BASE_LEVEL_NAME", "BASE_LEVEL_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Model_ID, Model_Name, Model_OVID, Base_Entity_ID, Base_Entity_Name, Base_Entity_OVID, Base_Level_ID, Base_Level_Name, Base_Level_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Description, Design_OVID from DMRS_DIMENSIONS;
--------------------------------------------------------
--  DDL for View DMRV_DISTINCT_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DISTINCT_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "DISTINCT_TYPE_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "T_SIZE", "T_PRECISION", "T_SCALE") AS 
  select  Design_ID, Design_OVID, Design_Name, Distinct_Type_ID, Distinct_Type_OVID, Distinct_Type_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, T_Size, T_Precision, T_Scale from DMRS_DISTINCT_TYPES;
--------------------------------------------------------
--  DDL for View DMRV_DOCUMENT_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOCUMENT_ELEMENTS" ("DOCUMENT_ID", "DOCUMENT_OVID", "DOCUMENT_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Document_ID, Document_OVID, Document_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_DOCUMENT_ELEMENTS;
--------------------------------------------------------
--  DDL for View DMRV_DOCUMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOCUMENTS" ("DOCUMENT_ID", "DOCUMENT_OVID", "DOCUMENT_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "DOC_REFERENCE", "DOC_TYPE", "DESIGN_OVID") AS 
  select  Document_ID, Document_OVID, Document_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Parent_ID, Parent_OVID, Parent_Name, Doc_Reference, Doc_Type, Design_OVID from DMRS_DOCUMENTS;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_AVT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOMAIN_AVT" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "VALUE", "SHORT_DESCRIPTION", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Value, Short_Description, Domain_Name, Design_OVID from DMRS_DOMAIN_AVT;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_CHECK_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOMAIN_CHECK_CONSTRAINTS" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "TEXT", "DATABASE_TYPE", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Text, Database_Type, Domain_Name, Design_OVID from DMRS_DOMAIN_CHECK_CONSTRAINTS;
--------------------------------------------------------
--  DDL for View DMRV_DOMAINS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOMAINS" ("DOMAIN_ID", "DOMAIN_NAME", "OVID", "SYNONYMS", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "T_SIZE", "T_PRECISION", "T_SCALE", "NATIVE_TYPE", "LT_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DEFAULT_VALUE", "UNIT_OF_MEASURE", "CHAR_UNITS") AS 
  select  Domain_ID, Domain_Name, OVID, Synonyms, Logical_Type_ID, Logical_Type_OVID, T_Size, T_Precision, T_Scale, Native_Type, LT_Name, Design_ID, Design_OVID, Design_Name, Default_Value, Unit_Of_Measure, Char_Units from DMRS_DOMAINS;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_VALUE_RANGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_DOMAIN_VALUE_RANGES" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "BEGIN_VALUE", "END_VALUE", "SHORT_DESCRIPTION", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Begin_Value, End_Value, Short_Description, Domain_Name, Design_OVID from DMRS_DOMAIN_VALUE_RANGES;
--------------------------------------------------------
--  DDL for View DMRV_EMAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EMAILS" ("EMAIL_ID", "EMAIL_OVID", "EMAIL_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "EMAIL_ADDRESS", "EMAIL_TYPE", "DESIGN_OVID") AS 
  select  Email_ID, Email_OVID, Email_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Email_Address, Email_Type, Design_OVID from DMRS_EMAILS;
--------------------------------------------------------
--  DDL for View DMRV_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ENTITIES" ("ENTITY_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "NUMBER_DATA_ELEMENTS", "CLASSIFICATION_TYPE_ID", "CLASSIFICATION_TYPE_OVID", "CLASSIFICATION_TYPE_NAME", "ALLOW_TYPE_SUBSTITUTION", "MIN_VOLUME", "EXPECTED_VOLUME", "MAX_VOLUME", "GROWTH_RATE_PERCENTS", "GROWTH_RATE_INTERVAL", "NORMAL_FORM", "TEMPORARY_OBJECT_SCOPE", "ADEQUATELY_NORMALIZED", "SUBSTITUTION_PARENT", "SUBSTITUTION_PARENT_OVID", "SYNONYMS", "SYNONYM_TO_DISPLAY", "PREFERRED_ABBREVIATION", "SUPERTYPEENTITY_ID", "SUPERTYPEENTITY_OVID", "ENGINEERING_STRATEGY", "OWNER", "ENTITY_SOURCE", "MODEL_NAME", "SUBSTITUTION_PARENT_NAME", "SUPERTYPEENTITY_NAME", "DESIGN_OVID") AS 
  select  Entity_Name, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Number_Data_Elements, Classification_Type_ID, Classification_Type_OVID, Classification_Type_Name, Allow_Type_Substitution, Min_Volume, Expected_Volume, Max_Volume, Growth_Rate_Percents, Growth_Rate_Interval, Normal_Form, Temporary_Object_Scope, Adequately_Normalized, Substitution_Parent, Substitution_Parent_OVID, Synonyms, Synonym_To_Display, Preferred_Abbreviation, SuperTypeEntity_ID, SuperTypeEntity_OVID, Engineering_Strategy, Owner, Entity_Source, Model_Name, Substitution_Parent_Name, SuperTypeEntity_Name, Design_OVID from DMRS_ENTITIES;
--------------------------------------------------------
--  DDL for View DMRV_ENTITYVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ENTITYVIEWS" ("ENTITYVIEW_NAME", "OBJECT_ID", "OVID", "MODEL_ID", "MODEL_OVID", "IMPORT_ID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "USER_DEFINED", "VIEW_TYPE", "MODEL_NAME", "DESIGN_OVID") AS 
  select  EntityView_Name, Object_ID, OVID, Model_ID, Model_OVID, Import_ID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, User_Defined, View_Type, Model_Name, Design_OVID from DMRS_ENTITYVIEWS;
--------------------------------------------------------
--  DDL for View DMRV_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EVENTS" ("EVENT_ID", "EVENT_OVID", "EVENT_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "FLOW_ID", "FLOW_OVID", "FLOW_NAME", "EVENT_TYPE", "TIMES_WHEN_RUN", "DAY_OF_WEEK", "MONTHS", "FREQUENCY", "TIME_FREQUENCY", "MINUTE", "HOUR", "DAY_OF_MONTH", "QUARTER", "YEAR", "ON_DAY", "AT_TIME", "FISCAL", "TEXT", "DESIGN_OVID") AS 
  select  Event_ID, Event_OVID, Event_Name, Model_ID, Model_OVID, Model_Name, Flow_ID, Flow_OVID, Flow_Name, Event_Type, Times_When_Run, Day_Of_Week, Months, Frequency, Time_Frequency, Minute, Hour, Day_Of_Month, Quarter, Year, On_Day, At_Time, Fiscal, Text, Design_OVID from DMRS_EVENTS;
--------------------------------------------------------
--  DDL for View DMRV_EXT_AGENT_EXT_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EXT_AGENT_EXT_DATAS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, External_Data_ID, External_Data_OVID, External_Data_Name, Design_OVID from DMRS_EXT_AGENT_EXT_DATAS;
--------------------------------------------------------
--  DDL for View DMRV_EXT_AGENT_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EXT_AGENT_FLOWS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "FLOW_ID", "FLOW_OVID", "FLOW_NAME", "INCOMING_OUTGOING_FLAG", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, Flow_ID, Flow_OVID, Flow_Name, Incoming_Outgoing_Flag, Design_OVID from DMRS_EXT_AGENT_FLOWS;
--------------------------------------------------------
--  DDL for View DMRV_EXTERNAL_AGENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EXTERNAL_AGENTS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "EXTERNAL_AGENT_TYPE", "FILE_LOCATION", "FILE_SOURCE", "FILE_NAME", "FILE_TYPE", "FILE_OWNER", "DATA_CAPTURE_TYPE", "FIELD_SEPARATOR", "TEXT_DELIMITER", "SKIP_RECORDS", "SELF_DESCRIBING", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, Diagram_ID, Diagram_OVID, Diagram_Name, External_Agent_Type, File_Location, File_Source, File_Name, File_Type, File_Owner, Data_Capture_Type, Field_Separator, Text_Delimiter, Skip_Records, Self_Describing, Design_OVID from DMRS_EXTERNAL_AGENTS;
--------------------------------------------------------
--  DDL for View DMRV_EXTERNAL_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_EXTERNAL_DATAS" ("EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "STARTING_POS", "DESCRIPTION", "DESIGN_OVID") AS 
  select  External_Data_ID, External_Data_OVID, External_Data_Name, Model_ID, Model_OVID, Model_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, Starting_Pos, Description, Design_OVID from DMRS_EXTERNAL_DATAS;
--------------------------------------------------------
--  DDL for View DMRV_FACT_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_FACT_ENTITIES" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Entity_ID, Entity_Name, Entity_OVID, Design_OVID from DMRS_FACT_ENTITIES;
--------------------------------------------------------
--  DDL for View DMRV_FACT_ENTITIES_JOINS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_FACT_ENTITIES_JOINS" ("JOIN_ID", "JOIN_NAME", "JOIN_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "LEFT_ENTITY_ID", "LEFT_ENTITY_NAME", "LEFT_ENTITY_OVID", "RIGHT_ENTITY_ID", "RIGHT_ENTITY_NAME", "RIGHT_ENTITY_OVID", "DESIGN_OVID") AS 
  select  Join_ID, Join_Name, Join_OVID, Cube_ID, Cube_Name, Cube_OVID, Left_Entity_ID, Left_Entity_Name, Left_Entity_OVID, Right_Entity_ID, Right_Entity_Name, Right_Entity_OVID, Design_OVID from DMRS_FACT_ENTITIES_JOINS;
--------------------------------------------------------
--  DDL for View DMRV_FLOW_INFO_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_FLOW_INFO_STRUCTURES" ("FLOW_ID", "FLOW_OVID", "FLOW_NAME", "INFO_STRUCTURE_ID", "INFO_STRUCTURE_OVID", "INFO_STRUCTURE_NAME", "DESIGN_OVID") AS 
  select  Flow_ID, Flow_OVID, Flow_Name, Info_Structure_ID, Info_Structure_OVID, Info_Structure_Name, Design_OVID from DMRS_FLOW_INFO_STRUCTURES;
--------------------------------------------------------
--  DDL for View DMRV_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_FLOWS" ("FLOW_ID", "FLOW_OVID", "FLOW_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "EVENT_ID", "EVENT_OVID", "EVENT_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "DESTINATION_ID", "DESTINATION_OVID", "DESTINATION_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "SOURCE_TYPE", "DESTINATION_TYPE", "SYSTEM_OBJECTIVE", "LOGGING", "OP_CREATE", "OP_READ", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "DESIGN_OVID") AS 
  select  Flow_ID, Flow_OVID, Flow_Name, Diagram_ID, Diagram_OVID, Diagram_Name, Event_ID, Event_OVID, Event_Name, Source_ID, Source_OVID, Source_Name, Destination_ID, Destination_OVID, Destination_Name, Parent_ID, Parent_OVID, Parent_Name, Source_Type, Destination_Type, System_Objective, Logging, Op_Create, Op_Read, Op_Update, Op_Delete, CRUD_Code, Design_OVID from DMRS_FLOWS;
--------------------------------------------------------
--  DDL for View DMRV_FOREIGNKEYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_FOREIGNKEYS" ("FK_NAME", "MODEL_ID", "MODEL_OVID", "OBJECT_ID", "OVID", "IMPORT_ID", "CHILD_TABLE_NAME", "REFERRED_TABLE_NAME", "ENGINEER", "DELETE_RULE", "CHILD_TABLE_ID", "CHILD_TABLE_OVID", "REFERRED_TABLE_ID", "REFERRED_TABLE_OVID", "REFERRED_KEY_ID", "REFERRED_KEY_OVID", "NUMBER_OF_COLUMNS", "MANDATORY", "TRANSFERABLE", "IN_ARC", "ARC_ID", "MODEL_NAME", "REFERRED_KEY_NAME", "DESIGN_OVID") AS 
  select  FK_Name, Model_ID, Model_OVID, Object_ID, OVID, Import_ID, Child_Table_Name, Referred_Table_Name, Engineer, Delete_Rule, Child_Table_ID, Child_Table_OVID, Referred_Table_ID, Referred_Table_OVID, Referred_Key_ID, Referred_Key_OVID, Number_Of_Columns, Mandatory, Transferable, In_Arc, Arc_ID, Model_Name, Referred_Key_Name, Design_OVID from DMRS_FOREIGNKEYS;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_GLOSSARIES" ("GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME", "FILE_NAME", "DESCRIPTION", "INCOMPLETE_MODIFIERS", "CASE_SENSITIVE", "UNIQUE_ABBREVS", "SEPARATOR_TYPE", "SEPARATOR_CHAR", "DATE_PUBLISHED", "PUBLISHED_BY", "PERSISTENCE_VERSION", "VERSION_COMMENTS") AS 
  select  Glossary_ID, Glossary_OVID, Glossary_Name, File_Name, Description, Incomplete_Modifiers, Case_Sensitive, Unique_Abbrevs, Separator_Type, Separator_Char, Date_Published, Published_By, Persistence_Version, Version_Comments from DMRS_GLOSSARIES;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARY_TERMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_GLOSSARY_TERMS" ("TERM_ID", "TERM_OVID", "TERM_NAME", "SHORT_DESCRIPTION", "ABBREV", "ALT_ABBREV", "PRIME_WORD", "CLASS_WORD", "MODIFIER", "QUALIFIER", "GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME") AS 
  select  Term_ID, Term_OVID, Term_Name, Short_Description, Abbrev, Alt_Abbrev, Prime_Word, Class_Word, Modifier, Qualifier, Glossary_ID, Glossary_OVID, Glossary_Name from DMRS_GLOSSARY_TERMS;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_HIERARCHIES" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_DEFAULT_HIERARCHY", "IS_RAGGED_HIERARCHY", "IS_VALUE_BASED_HIERARCHY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Model_ID, Model_Name, Model_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Default_Hierarchy, Is_Ragged_Hierarchy, Is_Value_Based_Hierarchy, Description, Design_OVID from DMRS_HIERARCHIES;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHY_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_HIERARCHY_LEVELS" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_HIERARCHY_LEVELS;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHY_ROLLUP_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_HIERARCHY_ROLLUP_LINKS" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Design_OVID from DMRS_HIERARCHY_ROLLUP_LINKS;
--------------------------------------------------------
--  DDL for View DMRV_INDEXES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_INDEXES" ("INDEX_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "STATE", "FUNCTIONAL", "EXPRESSION", "ENGINEER", "TABLE_NAME", "SPATIAL_INDEX", "SPATIAL_LAYER_TYPE", "GEODETIC_INDEX", "NUMBER_OF_DIMENSIONS", "DESIGN_OVID") AS 
  select  Index_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, State, Functional, Expression, Engineer, Table_Name, Spatial_Index, Spatial_Layer_Type, Geodetic_Index, Number_Of_Dimensions, Design_OVID from DMRS_INDEXES;
--------------------------------------------------------
--  DDL for View DMRV_INFO_STORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_INFO_STORES" ("INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "INFO_STORE_TYPE", "OBJECT_TYPE", "IMPLEMENTATION_NAME", "LOCATION", "SOURCE", "FILE_NAME", "FILE_TYPE", "OWNER", "RDBMS_SITE", "SCOPE", "TRANSFER_TYPE", "FIELD_SEPARATOR", "TEXT_DELIMITER", "SKIP_RECORDS", "SELF_DESCRIBING", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Info_Store_ID, Info_Store_OVID, Info_Store_Name, Model_ID, Model_OVID, Model_Name, Info_Store_Type, Object_Type, Implementation_Name, Location, Source, File_Name, File_Type, Owner, Rdbms_Site, Scope, Transfer_Type, Field_Separator, Text_Delimiter, Skip_Records, Self_Describing, System_Objective, Design_OVID from DMRS_INFO_STORES;
--------------------------------------------------------
--  DDL for View DMRV_INFO_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_INFO_STRUCTURES" ("INFO_STRUCTURE_ID", "INFO_STRUCTURE_OVID", "INFO_STRUCTURE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "GROWTH_RATE_UNIT", "GROWTH_RATE_PERCENT", "VOLUME", "DESIGN_OVID") AS 
  select  Info_Structure_ID, Info_Structure_OVID, Info_Structure_Name, Model_ID, Model_OVID, Model_Name, Growth_Rate_Unit, Growth_Rate_Percent, Volume, Design_OVID from DMRS_INFO_STRUCTURES;
--------------------------------------------------------
--  DDL for View DMRV_KEY_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_KEY_ATTRIBUTES" ("KEY_ID", "KEY_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ENTITY_ID", "ENTITY_OVID", "KEY_NAME", "ENTITY_NAME", "ATTRIBUTE_NAME", "SEQUENCE", "RELATIONSHIP_ID", "RELATIONSHIP_OVID", "RELATIONSHIP_NAME", "DESIGN_OVID") AS 
  select  Key_ID, Key_OVID, Attribute_ID, Attribute_OVID, Entity_ID, Entity_OVID, Key_Name, Entity_Name, Attribute_Name, Sequence, Relationship_ID, Relationship_OVID, Relationship_Name, Design_OVID from DMRS_KEY_ATTRIBUTES;
--------------------------------------------------------
--  DDL for View DMRV_KEY_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_KEY_ELEMENTS" ("KEY_ID", "KEY_OVID", "TYPE", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "SEQUENCE", "SOURCE_LABEL", "TARGET_LABEL", "ENTITY_ID", "KEY_NAME", "ENTITY_OVID", "ENTITY_NAME", "DESIGN_OVID") AS 
  select  Key_ID, Key_OVID, Type, Element_ID, Element_OVID, Element_Name, Sequence, Source_Label, Target_Label, Entity_ID, Key_Name, Entity_OVID, Entity_Name, Design_OVID from DMRS_KEY_ELEMENTS;
--------------------------------------------------------
--  DDL for View DMRV_KEYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_KEYS" ("KEY_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "STATE", "SYNONYMS", "ENTITY_NAME", "DESIGN_OVID") AS 
  select  Key_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, State, Synonyms, Entity_Name, Design_OVID from DMRS_KEYS;
--------------------------------------------------------
--  DDL for View DMRV_LARGE_TEXT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LARGE_TEXT" ("OBJECT_ID", "OVID", "OBJECT_NAME", "TYPE", "TEXT", "DESIGN_OVID") AS 
  select  Object_ID, OVID, Object_Name, Type, Text, Design_OVID from DMRS_LARGE_TEXT;
--------------------------------------------------------
--  DDL for View DMRV_LEVEL_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LEVEL_ATTRS" ("LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "IS_DEFAULT_ATTR", "IS_LEVEL_KEY_ATTR", "IS_PARENT_KEY_ATTR", "IS_DESCRIPTIVE_KEY_ATTR", "IS_CALCULATED_ATTR", "DESCRIPTIVE_NAME", "DESCRIPTIVE_IS_INDEXED", "DESCRIPTIVE_SLOW_CHANGING", "CALCULATED_EXPR", "DESIGN_OVID") AS 
  select  Level_ID, Level_Name, Level_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Is_Default_Attr, Is_Level_Key_Attr, Is_Parent_Key_Attr, Is_Descriptive_Key_Attr, Is_Calculated_Attr, Descriptive_Name, Descriptive_Is_Indexed, Descriptive_Slow_Changing, Calculated_Expr, Design_OVID from DMRS_LEVEL_ATTRS;
--------------------------------------------------------
--  DDL for View DMRV_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LEVELS" ("LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "NAME_COLUMN_ID", "NAME_COLUMN_NAME", "NAME_COLUMN_OVID", "VALUE_COLUMN_ID", "VALUE_COLUMN_NAME", "VALUE_COLUMN_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "ROOT_IDENTIFICATION", "IDENTIFICATION_VALUE", "SELECTION_CRITERIA", "SELECTION_CRITERIA_DESCRIPTION", "IS_VALUE_BASED_HIERARCHY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Level_ID, Level_Name, Level_OVID, Model_ID, Model_Name, Model_OVID, Entity_ID, Entity_Name, Entity_OVID, Name_Column_ID, Name_Column_Name, Name_Column_OVID, Value_Column_ID, Value_Column_Name, Value_Column_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Root_Identification, Identification_Value, Selection_Criteria, Selection_Criteria_Description, Is_Value_Based_Hierarchy, Description, Design_OVID from DMRS_LEVELS;
--------------------------------------------------------
--  DDL for View DMRV_LOCATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LOCATIONS" ("LOCATION_ID", "LOCATION_OVID", "LOCATION_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "LOC_ADDRESS", "LOC_CITY", "LOC_POST_CODE", "LOC_AREA", "LOC_COUNTRY", "LOC_TYPE", "DESIGN_OVID") AS 
  select  Location_ID, Location_OVID, Location_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Loc_Address, Loc_City, Loc_Post_Code, Loc_Area, Loc_Country, Loc_Type, Design_OVID from DMRS_LOCATIONS;
--------------------------------------------------------
--  DDL for View DMRV_LOGICAL_TO_NATIVE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LOGICAL_TO_NATIVE" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LT_NAME", "NATIVE_TYPE", "RDBMS_TYPE", "RDBMS_VERSION", "HAS_SIZE", "HAS_PRECISION", "HAS_SCALE") AS 
  select  Design_ID, Design_OVID, Design_Name, Logical_Type_ID, Logical_Type_OVID, LT_Name, Native_Type, RDBMS_Type, RDBMS_Version, Has_Size, Has_Precision, Has_Scale from DMRS_LOGICAL_TO_NATIVE;
--------------------------------------------------------
--  DDL for View DMRV_LOGICAL_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_LOGICAL_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "LOGICAL_TYPE_ID", "OVID", "LT_NAME") AS 
  select  Design_ID, Design_OVID, Design_Name, Logical_Type_ID, OVID, LT_Name from DMRS_LOGICAL_TYPES;
--------------------------------------------------------
--  DDL for View DMRV_MAPPINGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MAPPINGS" ("LOGICAL_MODEL_ID", "LOGICAL_MODEL_OVID", "LOGICAL_MODEL_NAME", "LOGICAL_OBJECT_ID", "LOGICAL_OBJECT_OVID", "LOGICAL_OBJECT_NAME", "LOGICAL_OBJECT_TYPE", "RELATIONAL_MODEL_ID", "RELATIONAL_MODEL_OVID", "RELATIONAL_MODEL_NAME", "RELATIONAL_OBJECT_ID", "RELATIONAL_OBJECT_OVID", "RELATIONAL_OBJECT_NAME", "RELATIONAL_OBJECT_TYPE", "ENTITY_ID", "ENTITY_OVID", "ENTITY_NAME", "TABLE_ID", "TABLE_OVID", "TABLE_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  Logical_Model_ID, Logical_Model_OVID, Logical_Model_Name, Logical_Object_ID, Logical_Object_OVID, Logical_Object_Name, Logical_Object_Type, Relational_Model_ID, Relational_Model_OVID, Relational_Model_Name, Relational_Object_ID, Relational_Object_OVID, Relational_Object_Name, Relational_Object_Type, Entity_ID, Entity_OVID, Entity_Name, Table_ID, Table_OVID, Table_Name, Design_ID, Design_OVID, Design_Name from DMRS_MAPPINGS;
--------------------------------------------------------
--  DDL for View DMRV_MAPPING_TARGETS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MAPPING_TARGETS" ("OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "TARGET_ID", "TARGET_OVID", "TARGET_NAME", "OBJECT_TYPE", "TARGET_TYPE", "TRANSFORMATION_TYPE", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Object_ID, Object_OVID, Object_Name, Target_ID, Target_OVID, Target_Name, Object_Type, Target_Type, Transformation_Type, Description, Design_OVID from DMRS_MAPPING_TARGETS;
--------------------------------------------------------
--  DDL for View DMRV_MAPPING_TARGET_SOURCES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MAPPING_TARGET_SOURCES" ("OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "TARGET_ID", "TARGET_OVID", "TARGET_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "OBJECT_TYPE", "TARGET_TYPE", "SOURCE_TYPE", "DESIGN_OVID") AS 
  select  Object_ID, Object_OVID, Object_Name, Target_ID, Target_OVID, Target_Name, Source_ID, Source_OVID, Source_Name, Object_Type, Target_Type, Source_Type, Design_OVID from DMRS_MAPPING_TARGET_SOURCES;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_AGGR_FUNCS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MEASURE_AGGR_FUNCS" ("MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "MEASURE_ALIAS", "IS_DEFAULT", "DESIGN_OVID") AS 
  select  Measure_ID, Measure_Name, Measure_OVID, Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Measure_Alias, Is_Default, Design_OVID from DMRS_MEASURE_AGGR_FUNCS;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_FOLDER_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MEASURE_FOLDER_MEASURES" ("MEASURE_FOLDER_ID", "MEASURE_FOLDER_NAME", "MEASURE_FOLDER_OVID", "MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "PARENT_OBJECT_ID", "PARENT_OBJECT_NAME", "PARENT_OBJECT_OVID", "PARENT_OBJECT_TYPE", "DESIGN_OVID") AS 
  select  Measure_Folder_ID, Measure_Folder_Name, Measure_Folder_OVID, Measure_ID, Measure_Name, Measure_OVID, Parent_Object_ID, Parent_Object_Name, Parent_Object_OVID, Parent_Object_Type, Design_OVID from DMRS_MEASURE_FOLDER_MEASURES;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_FOLDERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MEASURE_FOLDERS" ("MEASURE_FOLDER_ID", "MEASURE_FOLDER_NAME", "MEASURE_FOLDER_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_FOLDER_ID", "PARENT_FOLDER_NAME", "PARENT_FOLDER_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_LEAF", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Measure_Folder_ID, Measure_Folder_Name, Measure_Folder_OVID, Model_ID, Model_Name, Model_OVID, Parent_Folder_ID, Parent_Folder_Name, Parent_Folder_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Leaf, Description, Design_OVID from DMRS_MEASURE_FOLDERS;
--------------------------------------------------------
--  DDL for View DMRV_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MEASURES" ("MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "FACT_OBJECT_ID", "FACT_OBJECT_NAME", "FACT_OBJECT_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "FACT_OBJECT_TYPE", "ADDITIVITY_TYPE", "IS_FACT_DIMENSION", "IS_FORMULA", "IS_CUSTOM_FORMULA", "FORMULA", "WHERE_CLAUSE", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Measure_ID, Measure_Name, Measure_OVID, Model_ID, Model_Name, Model_OVID, Cube_ID, Cube_Name, Cube_OVID, Fact_Object_ID, Fact_Object_Name, Fact_Object_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Fact_Object_Type, Additivity_Type, Is_Fact_Dimension, Is_Formula, Is_Custom_Formula, Formula, Where_Clause, Description, Design_OVID from DMRS_MEASURES;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_DISPLAYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MODEL_DISPLAYS" ("DISPLAY_ID", "DISPLAY_OVID", "DISPLAY_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Display_ID, Display_OVID, Display_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_MODEL_DISPLAYS;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_NAMING_OPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MODEL_NAMING_OPTIONS" ("OBJECT_TYPE", "MAX_NAME_LENGTH", "CHARACTER_CASE", "VALID_CHARACTERS", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "MODEL_TYPE", "DESIGN_OVID") AS 
  select  Object_type, Max_Name_Length, Character_Case, Valid_Characters, Model_ID, Model_OVID, Model_Name, Model_Type, Design_OVID from DMRS_MODEL_NAMING_OPTIONS;
--------------------------------------------------------
--  DDL for View DMRV_MODELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MODELS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "MODEL_TYPE", "RDBMS_TYPE") AS 
  select  Design_ID, Design_OVID, Design_Name, Model_ID, Model_OVID, Model_Name, Model_Type, RDBMS_Type from DMRS_MODELS;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_SUBVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_MODEL_SUBVIEWS" ("SUBVIEW_ID", "SUBVIEW_OVID", "SUBVIEW_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Subview_ID, Subview_OVID, Subview_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_MODEL_SUBVIEWS;
--------------------------------------------------------
--  DDL for View DMRV_NATIVE_TO_LOGICAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_NATIVE_TO_LOGICAL" ("RDBMS_TYPE", "RDBMS_VERSION", "NATIVE_TYPE", "LT_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  RDBMS_Type, RDBMS_Version, Native_Type, LT_Name, Logical_Type_ID, Logical_Type_OVID, Design_ID, Design_OVID, Design_Name from DMRS_NATIVE_TO_LOGICAL;
--------------------------------------------------------
--  DDL for View DMRV_NOTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_NOTES" ("OBJECT_ID", "OVID", "OBJECT_NAME", "MODEL_OVID", "MODEL_ID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Object_ID, OVID, Object_Name, Model_OVID, Model_ID, Model_Name, Design_OVID from DMRS_NOTES;
--------------------------------------------------------
--  DDL for View DMRV_PK_OID_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_PK_OID_COLUMNS" ("COLUMN_ID", "COLUMN_OVID", "TABLE_ID", "TABLE_OVID", "TABLE_NAME", "COLUMN_NAME", "DESIGN_OVID") AS 
  select  Column_ID, Column_OVID, Table_ID, Table_OVID, Table_Name, Column_Name, Design_OVID from DMRS_PK_OID_COLUMNS;
--------------------------------------------------------
--  DDL for View DMRV_PROCESS_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_PROCESS_ATTRIBUTES" ("PROCESS_ID", "PROCESS_OVID", "ENTITY_ID", "ENTITY_OVID", "FLOW_ID", "FLOW_OVID", "DFD_ID", "DFD_OVID", "PROCESS_NAME", "ENTITY_NAME", "FLOW_NAME", "DFD_NAME", "OP_READ", "OP_CREATE", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "FLOW_DIRECTION", "ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ATTRIBUTE_NAME", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Entity_ID, Entity_OVID, Flow_ID, Flow_OVID, DFD_ID, DFD_OVID, Process_Name, Entity_Name, Flow_Name, DFD_Name, OP_Read, OP_Create, OP_Update, OP_Delete, CRUD_Code, Flow_Direction, Attribute_ID, Attribute_OVID, Attribute_Name, Design_OVID from DMRS_PROCESS_ATTRIBUTES;
--------------------------------------------------------
--  DDL for View DMRV_PROCESS_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_PROCESS_ENTITIES" ("PROCESS_ID", "PROCESS_OVID", "ENTITY_ID", "ENTITY_OVID", "FLOW_ID", "FLOW_OVID", "DFD_ID", "DFD_OVID", "PROCESS_NAME", "ENTITY_NAME", "FLOW_NAME", "DFD_NAME", "OP_READ", "OP_CREATE", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "FLOW_DIRECTION", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Entity_ID, Entity_OVID, Flow_ID, Flow_OVID, DFD_ID, DFD_OVID, Process_Name, Entity_Name, Flow_Name, DFD_Name, OP_Read, OP_Create, OP_Update, OP_Delete, CRUD_Code, Flow_Direction, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_PROCESS_ENTITIES;
--------------------------------------------------------
--  DDL for View DMRV_PROCESSES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_PROCESSES" ("PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "PARENT_PROCESS_ID", "PARENT_PROCESS_OVID", "PARENT_PROCESS_NAME", "PROCESS_NUMBER", "PROCESS_TYPE", "PROCESS_MODE", "PRIORITY", "FREQUENCY_TIMES", "FREQUENCY_TIME_UNIT", "PEAK_PERIODS_STRING", "PARAMETERS_WRAPPERS_STRING", "INTERACTIVE_MAX_RESPONSE_TIME", "INTERACTIVE_RESPONSE_TIME_UNIT", "BATCH_MIN_TRANSACTIONS", "BATCH_TIME_UNIT", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Process_Name, Diagram_ID, Diagram_OVID, Diagram_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Parent_Process_ID, Parent_Process_OVID, Parent_Process_Name, Process_Number, Process_Type, Process_Mode, Priority, Frequency_Times, Frequency_Time_Unit, Peak_Periods_String, Parameters_Wrappers_String, Interactive_Max_Response_Time, Interactive_Response_Time_Unit, Batch_Min_Transactions, Batch_Time_Unit, Design_OVID from DMRS_PROCESSES;
--------------------------------------------------------
--  DDL for View DMRV_RAGGED_HIER_LINK_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RAGGED_HIER_LINK_ATTRS" ("RAGGED_HIER_LINK_ID", "RAGGED_HIER_LINK_NAME", "RAGGED_HIER_LINK_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "DESIGN_OVID") AS 
  select  Ragged_Hier_Link_ID, Ragged_Hier_Link_Name, Ragged_Hier_Link_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Design_OVID from DMRS_RAGGED_HIER_LINK_ATTRS;
--------------------------------------------------------
--  DDL for View DMRV_RAGGED_HIER_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RAGGED_HIER_LINKS" ("RAGGED_HIER_LINK_ID", "RAGGED_HIER_LINK_NAME", "RAGGED_HIER_LINK_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_LEVEL_ID", "PARENT_LEVEL_NAME", "PARENT_LEVEL_OVID", "CHILD_LEVEL_ID", "CHILD_LEVEL_NAME", "CHILD_LEVEL_OVID", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Ragged_Hier_Link_ID, Ragged_Hier_Link_Name, Ragged_Hier_Link_OVID, Model_ID, Model_Name, Model_OVID, Parent_Level_ID, Parent_Level_Name, Parent_Level_OVID, Child_Level_ID, Child_Level_Name, Child_Level_OVID, Description, Design_OVID from DMRS_RAGGED_HIER_LINKS;
--------------------------------------------------------
--  DDL for View DMRV_RDBMS_SITES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RDBMS_SITES" ("SITE_NAME", "SITE_ID", "SITE_OVID", "RDBMS_TYPE", "DESIGN_OVID") AS 
  select  Site_Name, Site_ID, Site_OVID, RDBMS_Type, Design_OVID from DMRS_RDBMS_SITES;
--------------------------------------------------------
--  DDL for View DMRV_RECORD_STRUCT_EXT_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RECORD_STRUCT_EXT_DATAS" ("RECORD_STRUCTURE_ID", "RECORD_STRUCTURE_OVID", "RECORD_STRUCTURE_NAME", "EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "DESIGN_OVID") AS 
  select  Record_Structure_ID, Record_Structure_OVID, Record_Structure_Name, External_Data_ID, External_Data_OVID, External_Data_Name, Design_OVID from DMRS_RECORD_STRUCT_EXT_DATAS;
--------------------------------------------------------
--  DDL for View DMRV_RECORD_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RECORD_STRUCTURES" ("RECORD_STRUCTURE_ID", "RECORD_STRUCTURE_OVID", "RECORD_STRUCTURE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Record_Structure_ID, Record_Structure_OVID, Record_Structure_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_RECORD_STRUCTURES;
--------------------------------------------------------
--  DDL for View DMRV_RELATIONSHIPS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RELATIONSHIPS" ("RELATIONSHIP_NAME", "MODEL_ID", "MODEL_OVID", "OBJECT_ID", "OVID", "IMPORT_ID", "SOURCE_ENTITY_NAME", "TARGET_ENTITY_NAME", "SOURCE_LABEL", "TARGET_LABEL", "SOURCETO_TARGET_CARDINALITY", "TARGETTO_SOURCE_CARDINALITY", "SOURCE_OPTIONAL", "TARGET_OPTIONAL", "DOMINANT_ROLE", "IDENTIFYING", "SOURCE_ID", "SOURCE_OVID", "TARGET_ID", "TARGET_OVID", "NUMBER_OF_ATTRIBUTES", "TRANSFERABLE", "IN_ARC", "ARC_ID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Relationship_Name, Model_ID, Model_OVID, Object_ID, OVID, Import_ID, Source_Entity_Name, Target_Entity_Name, Source_Label, Target_Label, SourceTo_Target_Cardinality, TargetTo_Source_Cardinality, Source_Optional, Target_Optional, Dominant_Role, Identifying, Source_ID, Source_OVID, Target_ID, Target_OVID, Number_Of_Attributes, Transferable, In_Arc, Arc_ID, Model_Name, Design_OVID from DMRS_RELATIONSHIPS;
--------------------------------------------------------
--  DDL for View DMRV_REPORTS_VERSION_1_0
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_REPORTS_VERSION_1_0" ("DMRS_PERSISTENCE_VERSION", "DMRS_REPORTS_VERSION", "CREATED_ON") AS 
  select 1.6 DMRS_Persistence_Version, 1.0 DMRS_Reports_Version, to_timestamp('2013/03/31 23:25:27','YYYY/MM/DD HH24:MI:SS') Created_On from dual with read only;
--------------------------------------------------------
--  DDL for View DMRV_RESOURCE_LOCATORS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RESOURCE_LOCATORS" ("RESOURCE_LOCATOR_ID", "RESOURCE_LOCATOR_OVID", "RESOURCE_LOCATOR_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "URL", "DESIGN_OVID") AS 
  select  Resource_Locator_ID, Resource_Locator_OVID, Resource_Locator_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Url, Design_OVID from DMRS_RESOURCE_LOCATORS;
--------------------------------------------------------
--  DDL for View DMRV_RES_PARTY_CONTACTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RES_PARTY_CONTACTS" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Contact_ID, Contact_OVID, Contact_Name, Design_OVID from DMRS_RES_PARTY_CONTACTS;
--------------------------------------------------------
--  DDL for View DMRV_RES_PARTY_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RES_PARTY_ELEMENTS" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_RES_PARTY_ELEMENTS;
--------------------------------------------------------
--  DDL for View DMRV_RESPONSIBLE_PARTIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_RESPONSIBLE_PARTIES" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "RESPONSIBILITY", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Parent_ID, Parent_OVID, Parent_Name, Responsibility, Design_OVID from DMRS_RESPONSIBLE_PARTIES;
--------------------------------------------------------
--  DDL for View DMRV_ROLE_PROCESSES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ROLE_PROCESSES" ("ROLE_ID", "ROLE_OVID", "ROLE", "PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "DESIGN_OVID") AS 
  select  Role_ID, Role_OVID, Role_Name, Process_ID, Process_OVID, Process_Name, Design_OVID from DMRS_ROLE_PROCESSES;
--------------------------------------------------------
--  DDL for View DMRV_ROLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ROLES" ("ROLE_ID", "ROLE_OVID", "ROLE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Role_ID, Role_OVID, Role_Name, Model_ID, Model_OVID, Model_Name, Description, Design_OVID from DMRS_ROLES;
--------------------------------------------------------
--  DDL for View DMRV_ROLLUP_LINK_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ROLLUP_LINK_ATTRS" ("ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "DESIGN_OVID") AS 
  select  Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Design_OVID from DMRS_ROLLUP_LINK_ATTRS;
--------------------------------------------------------
--  DDL for View DMRV_ROLLUP_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_ROLLUP_LINKS" ("ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_OBJECT_ID", "PARENT_OBJECT_NAME", "PARENT_OBJECT_OVID", "CHILD_OBJECT_ID", "CHILD_OBJECT_NAME", "CHILD_OBJECT_OVID", "FACT_ENTITY_ID", "FACT_ENTITY_NAME", "FACT_ENTITY_OVID", "PARENT_OBJECT_TYPE", "CHILD_OBJECT_TYPE", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "DEFAULT_AGGR_OPERATOR", "IS_ROLE_PLAYING", "IS_SPARSE_DIMENSION", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Model_ID, Model_Name, Model_OVID, Parent_Object_ID, Parent_Object_Name, Parent_Object_OVID, Child_Object_ID, Child_Object_Name, Child_Object_OVID, Fact_Entity_ID, Fact_Entity_Name, Fact_Entity_OVID, Parent_Object_Type, Child_Object_Type, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Default_Aggr_Operator, Is_Role_Playing, Is_Sparse_Dimension, Description, Design_OVID from DMRS_ROLLUP_LINKS;
--------------------------------------------------------
--  DDL for View DMRV_SLICE_DIM_HIER_LEVEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SLICE_DIM_HIER_LEVEL" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_SLICE_DIM_HIER_LEVEL;
--------------------------------------------------------
--  DDL for View DMRV_SLICE_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SLICE_MEASURES" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "MEASURE_ALIAS", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Measure_ID, Measure_Name, Measure_OVID, Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Measure_Alias, Design_OVID from DMRS_SLICE_MEASURES;
--------------------------------------------------------
--  DDL for View DMRV_SLICES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SLICES" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_FULLY_REALIZED", "IS_READ_ONLY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Model_ID, Model_Name, Model_OVID, Cube_ID, Cube_Name, Cube_OVID, Entity_ID, Entity_Name, Entity_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Fully_Realized, Is_Read_Only, Description, Design_OVID from DMRS_SLICES;
--------------------------------------------------------
--  DDL for View DMRV_SOURCE_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SOURCE_INFO" ("SOURCE_INFO_OVID", "SOURCE_INFO_TYPE", "DDL_FILE_NAME", "DDL_PATH_NAME", "DDL_DB_TYPE", "DATADICT_CONNECTION_NAME", "DATADICT_CONNECTION_URL", "DATADICT_DB_TYPE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Source_Info_OVID, Source_Info_Type, DDL_File_Name, DDL_Path_Name, DDL_DB_Type, DataDict_Connection_Name, DataDict_Connection_Url, DataDict_DB_Type, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_SOURCE_INFO;
--------------------------------------------------------
--  DDL for View DMRV_SPATIAL_COLUMN_DEFINITION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SPATIAL_COLUMN_DEFINITION" ("TABLE_ID", "TABLE_OVID", "DEFINITION_ID", "DEFINITION_OVID", "DEFINITION_NAME", "TABLE_NAME", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "USE_FUNCTION", "FUNCTION_EXPRESSION", "COORDINATE_SYSTEM_ID", "HAS_SPATIAL_INDEX", "SPATIAL_INDEX_ID", "SPATIAL_INDEX_OVID", "SPATIAL_INDEX_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Definition_ID, Definition_OVID, Definition_Name, Table_Name, Column_ID, Column_OVID, Column_Name, Use_Function, Function_Expression, Coordinate_System_ID, Has_Spatial_Index, Spatial_Index_ID, Spatial_Index_OVID, Spatial_Index_Name, Design_OVID from DMRS_SPATIAL_COLUMN_DEFINITION;
--------------------------------------------------------
--  DDL for View DMRV_SPATIAL_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_SPATIAL_DIMENSIONS" ("DEFINITION_ID", "DEFINITION_OVID", "DEFINITION_NAME", "DIMENSION_NAME", "LOW_BOUNDARY", "UPPER_BOUNDARY", "TOLERANCE", "DESIGN_OVID") AS 
  select  Definition_ID, Definition_OVID, Definition_Name, Dimension_Name, Low_Boundary, Upper_Boundary, Tolerance, Design_OVID from DMRS_SPATIAL_DIMENSIONS;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_STRUCT_TYPE_ATTRS" ("ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ATTRIBUTE_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "MANDATORY", "REFERENCE", "T_SIZE", "T_PRECISION", "T_SCALE", "TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_OVID") AS 
  SELECT Attribute_ID, Attribute_OVID, Attribute_Name, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Mandatory, Reference, T_Size, T_Precision, T_Scale, Type_ID, Type_OVID, Type_Name, Design_OVID FROM DMRS_STRUCT_TYPE_ATTRS;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_METHOD_PARS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_STRUCT_TYPE_METHOD_PARS" ("PARAMETER_ID", "PARAMETER_OVID", "PARAMETER_NAME", "METHOD_ID", "METHOD_OVID", "METHOD_NAME", "RETURN_VALUE", "REFERENCE", "SEQ", "T_SIZE", "T_PRECISION", "T_SCALE", "TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_OVID") AS 
  SELECT  Parameter_ID, Parameter_OVID, Parameter_Name, Method_ID, Method_OVID, Method_Name, Return_Value, Reference, Seq, T_Size, T_Precision, T_Scale, Type_ID, Type_OVID, Type_Name, Design_OVID FROM DMRS_STRUCT_TYPE_METHOD_PARS;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_METHODS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_STRUCT_TYPE_METHODS" ("METHOD_ID", "METHOD_OVID", "METHOD_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "BODY", "CONSTRUCTOR", "OVERRIDDEN_METHOD_ID", "OVERRIDDEN_METHOD_OVID", "OVERRIDDEN_METHOD_NAME", "DESIGN_OVID") AS 
  SELECT stm.Method_ID, stm.Method_OVID, stm.Method_Name, stm.Structured_Type_ID, stm.Structured_Type_OVID, stm.Structured_Type_Name, lt.Text, stm.Constructor, stm.Overridden_Method_ID, stm.Overridden_Method_OVID, stm.Overridden_Method_Name, stm.Design_OVID FROM DMRS_STRUCT_TYPE_METHODS stm, DMRS_LARGE_TEXT lt WHERE stm.Method_id  = lt.Object_id;
--------------------------------------------------------
--  DDL for View DMRV_STRUCTURED_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_STRUCTURED_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "MODEL_OVID", "MODEL_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "SUPER_TYPE_ID", "SUPER_TYPE_OVID", "SUPER_TYPE_NAME", "PREDEFINED", "ST_FINAL", "ST_INSTANTIABLE") AS 
  select  Design_ID, Design_OVID, Design_Name, Model_OVID, Model_Name, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Super_Type_ID, Super_Type_OVID, Super_Type_Name, Predefined, ST_Final, ST_Instantiable from DMRS_STRUCTURED_TYPES;
--------------------------------------------------------
--  DDL for View DMRV_TABLE_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TABLE_CONSTRAINTS" ("TABLE_ID", "TABLE_OVID", "SEQUENCE", "CONSTRAINT_ID", "CONSTRAINT_OVID", "CONSTRAINT_NAME", "TEXT", "TABLE_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Sequence, Constraint_ID, Constraint_OVID, Constraint_Name, Text, Table_Name, Design_OVID from DMRS_TABLE_CONSTRAINTS;
--------------------------------------------------------
--  DDL for View DMRV_TABLE_INCLUDE_SCRIPTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TABLE_INCLUDE_SCRIPTS" ("TABLE_ID", "TABLE_OVID", "TABLE_NAME", "TYPE", "SEQUENCE", "TEXT", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Table_Name, Type, Sequence, Text, Design_OVID from DMRS_TABLE_INCLUDE_SCRIPTS;
--------------------------------------------------------
--  DDL for View DMRV_TABLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TABLES" ("TABLE_NAME", "ABBREVIATION", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "NUMBER_DATA_ELEMENTS", "CLASSIFICATION_TYPE_ID", "CLASSIFICATION_TYPE_OVID", "CLASSIFICATION_TYPE_NAME", "ALLOW_TYPE_SUBSTITUTION", "MIN_VOLUME", "EXPECTED_VOLUME", "MAX_VOLUME", "GROWTH_RATE_PERCENTS", "GROWTH_RATE_INTERVAL", "NORMAL_FORM", "TEMPORARY_OBJECT_SCOPE", "ADEQUATELY_NORMALIZED", "SUBSTITUTION_PARENT", "SUBSTITUTION_PARENT_OVID", "ENGINEER", "SPATIAL_TABLE", "OID_IS_PK", "OID_IS_USER_DEFINED", "INCLUDE_SCRIPTS_INTO_DDL", "MODEL_NAME", "SUBSTITUTION_PARENT_NAME", "SOURCE_INFO_OVID", "SOURCE_DATADICT_SCHEMA_NAME", "SOURCE_DATADICT_OBJECT_NAME", "DESIGN_OVID") AS 
  select  Table_Name, Abbreviation, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Number_Data_Elements, Classification_Type_ID, Classification_Type_OVID, Classification_Type_Name, Allow_Type_Substitution, Min_Volume, Expected_Volume, Max_Volume, Growth_Rate_Percents, Growth_Rate_Interval, Normal_Form, Temporary_Object_Scope, Adequately_Normalized, Substitution_Parent, Substitution_Parent_OVID, Engineer, Spatial_Table, OID_is_PK, OID_is_User_Defined, Include_Scripts_Into_DDL, Model_Name, Substitution_Parent_Name, Source_Info_OVID, Source_DataDict_Schema_Name, Source_DataDict_Object_Name, Design_OVID from DMRS_TABLES;
--------------------------------------------------------
--  DDL for View DMRV_TABLEVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TABLEVIEWS" ("TABLEVIEW_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "WHERE_CLAUSE", "HAVING_CLAUSE", "USER_DEFINED", "ENGINEER", "ALLOW_TYPE_SUBSTITUTION", "OID_COLUMNS", "MODEL_NAME", "DESIGN_OVID") AS 
  select  TableView_Name, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Where_Clause, Having_Clause, User_Defined, Engineer, Allow_Type_Substitution, OID_Columns, Model_Name, Design_OVID from DMRS_TABLEVIEWS;
--------------------------------------------------------
--  DDL for View DMRV_TASK_PARAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TASK_PARAMS" ("TASK_PARAMS_ID", "TASK_PARAMS_OVID", "TASK_PARAMS_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "TASK_PARAMS_TYPE", "MULTIPLICITY", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Task_Params_ID, Task_Params_OVID, Task_Params_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Task_Params_Type, Multiplicity, System_Objective, Design_OVID from DMRS_TASK_PARAMS;
--------------------------------------------------------
--  DDL for View DMRV_TASK_PARAMS_ITEMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TASK_PARAMS_ITEMS" ("TASK_PARAMS_ITEM_ID", "TASK_PARAMS_ITEM_OVID", "TASK_PARAMS_ITEM_NAME", "TASK_PARAMS_ID", "TASK_PARAMS_OVID", "TASK_PARAMS_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "TASK_PARAMS_ITEM_TYPE", "DESIGN_OVID") AS 
  select  Task_Params_Item_ID, Task_Params_Item_OVID, Task_Params_Item_Name, Task_Params_ID, Task_Params_OVID, Task_Params_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, Task_Params_Item_Type, Design_OVID from DMRS_TASK_PARAMS_ITEMS;
--------------------------------------------------------
--  DDL for View DMRV_TELEPHONES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TELEPHONES" ("TELEPHONE_ID", "TELEPHONE_OVID", "TELEPHONE_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PHONE_NUMBER", "PHONE_TYPE", "DESIGN_OVID") AS 
  select  Telephone_ID, Telephone_OVID, Telephone_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Phone_Number, Phone_Type, Design_OVID from DMRS_TELEPHONES;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TRANSFORMATION_FLOWS" ("TRANSFORMATION_FLOW_ID", "TRANSFORMATION_FLOW_OVID", "TRANSFORMATION_FLOW_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "DESTINATION_ID", "DESTINATION_OVID", "DESTINATION_NAME", "SOURCE_TYPE", "DESTINATION_TYPE", "SYSTEM_OBJECTIVE", "LOGGING", "OP_CREATE", "OP_READ", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "DESIGN_OVID") AS 
  select  Transformation_Flow_ID, Transformation_Flow_OVID, Transformation_Flow_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Source_ID, Source_OVID, Source_Name, Destination_ID, Destination_OVID, Destination_Name, Source_Type, Destination_Type, System_Objective, Logging, Op_Create, Op_Read, Op_Update, Op_Delete, CRUD_Code, Design_OVID from DMRS_TRANSFORMATION_FLOWS;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_PACKAGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TRANSFORMATION_PACKAGES" ("TRANSFORMATION_PACKAGE_ID", "TRANSFORMATION_PACKAGE_OVID", "TRANSFORMATION_PACKAGE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Transformation_Package_ID, Transformation_Package_OVID, Transformation_Package_Name, Model_ID, Model_OVID, Model_Name, System_Objective, Design_OVID from DMRS_TRANSFORMATION_PACKAGES;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TRANSFORMATIONS" ("TRANSFORMATION_ID", "TRANSFORMATION_OVID", "TRANSFORMATION_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "FILTER_CONDITION", "JOIN_CONDITION", "PRIMARY", "DESIGN_OVID") AS 
  select  Transformation_ID, Transformation_OVID, Transformation_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Filter_Condition, Join_Condition, Primary, Design_OVID from DMRS_TRANSFORMATIONS;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_TASK_INFOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TRANSFORMATION_TASK_INFOS" ("TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "SOURCE_TARGET_FLAG", "DESIGN_OVID") AS 
  select  Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Info_Store_ID, Info_Store_OVID, Info_Store_Name, Source_Target_Flag, Design_OVID from DMRS_TRANSFORMATION_TASK_INFOS;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_TASKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_TRANSFORMATION_TASKS" ("TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "TRANSFORMATION_PACKAGE_ID", "TRANSFORMATION_PACKAGE_OVID", "TRANSFORMATION_PACKAGE_NAME", "PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "TOP_LEVEL", "DESIGN_OVID") AS 
  select  Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Transformation_Package_ID, Transformation_Package_OVID, Transformation_Package_Name, Process_ID, Process_OVID, Process_Name, Top_Level, Design_OVID from DMRS_TRANSFORMATION_TASKS;
--------------------------------------------------------
--  DDL for View DMRV_VALUE_RANGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_VALUE_RANGES" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "BEGIN_VALUE", "END_VALUE", "SHORT_DESCRIPTION", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Begin_Value, End_Value, Short_Description, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_VALUE_RANGES;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_VIEW_COLUMNS" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "CONTAINER_ALIAS", "IS_EXPRESSION", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "COLUMN_ALIAS", "NATIVE_TYPE", "TYPE", "EXPRESSION", "SEQUENCE", "PERSONALLY_ID_INFORMATION", "SENSITIVE_INFORMATION", "MASK_FOR_NONE_PRODUCTION", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Container_Alias, Is_Expression, Column_ID, Column_OVID, Column_Name, Column_Alias, Native_Type, Type, Expression, Sequence, Personally_ID_Information, Sensitive_Information, Mask_For_None_Production, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_VIEW_COLUMNS;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_CONTAINERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_VIEW_CONTAINERS" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "TYPE", "ALIAS", "SEQUENCE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Type, Alias, Sequence, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_VIEW_CONTAINERS;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_ORDER_GROUPBY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORS"."DMRV_VIEW_ORDER_GROUPBY" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "CONTAINER_ALIAS", "IS_EXPRESSION", "USAGE", "SEQUENCE", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "COLUMN_ALIAS", "SORT_ORDER", "EXPRESSION", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Container_Alias, Is_Expression, Usage, Sequence, Column_ID, Column_OVID, Column_Name, Column_Alias, Sort_Order, Expression, Design_OVID from DMRS_VIEW_ORDER_GROUPBY;
REM INSERTING into ORS.IL
SET DEFINE OFF;
Insert into ORS.IL (ID,ILADI,ULKEID) values ('1','Adana','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('2','Adýyaman','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('3','Afyon','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('4','Aðrý','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('5','Amasya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('6','Ankara','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('7','Antalya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('8','Artvin','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('9','Aydýn','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('10','Balýkesir','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('11','Bilecik','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('12','Bingöl','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('13','Bitlis','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('14','Bolu','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('15','Burdur','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('16','Bursa','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('17','Çanakkale','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('18','Çankýrý','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('19','Çorum','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('20','Denizli','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('21','Diyarbakýr','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('22','Edirne','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('23','Elazýð','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('24','Erzincan','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('25','Erzurum','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('26','Eskiþehir','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('27','Gaziantep','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('28','Giresun','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('29','Gümüþhane','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('30','Hakkari','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('31','Hatay','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('32','Isparta','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('33','Mersin','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('34','Ýstanbul','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('35','Ýzmir','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('36','Kars','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('37','Kastamonu','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('38','Kayseri','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('39','Kýrklareli','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('40','Kýrþehir','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('41','Kocaeli','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('42','Konya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('43','Kütahya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('44','Malatya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('45','Manisa','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('46','Kahramanmaraþ','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('47','Mardin','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('48','Muðla','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('49','Muþ','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('50','Nevþehir','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('51','Niðde','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('52','Ordu','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('53','Rize','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('54','Sakarya','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('55','Samsun','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('56','Siirt
','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('57','Sinop','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('58','Sivas','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('59','Tekirdað','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('60','Tokat','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('61','Trabzon','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('62','Tunceli','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('63','Þanlýurfa','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('64','Uþak','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('65','Van','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('66','Yozgat','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('67','Zonguldak','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('68','Aksaray','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('69','Bayburt','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('70','Karaman','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('71','Kýrýkkale','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('72','Batman','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('73','Þýrnak','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('74','Bartýn','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('75','Ardahan','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('76','Iðdýr','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('77','Yalova','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('78','Karabük','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('79','Kilis','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('80','Osmaniye','1');
Insert into ORS.IL (ID,ILADI,ULKEID) values ('81','Düzce','1');
REM INSERTING into ORS.MUSTERI
SET DEFINE OFF;
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('1','Eniz','Gülek','34','34160','enizgulek@gmail.com','0554540260','02121234567');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('3','Ahmet','Bilir','1','78945','ahmetb@ors.com','001234543','445453131');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('6','Ali','Yazar','1','45613','ali@ors.com','456465','4646546');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('7','Abdulrezzak','Kerim','16','45654','fenasi@ors.com','7894561','4561232');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('4','Sevim','Kendi','31','31050','ebru@ors.com','456789','7894561');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('9','Mark','Zukerberg','20','7894561','mark@ors.com','7894561','1234565');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('8','Sabri','Sarýoðlu','55','55055','zabri@ors.com','4561232','7894561');
Insert into ORS.MUSTERI (ID,ADI,SOYADI,ILID,POSTAKODU,EMAIL,TELEFON,FAKS) values ('10','Veli','Bozar','34','34160','veli@ors.com','3216549','4561233');
REM INSERTING into ORS.ODA
SET DEFINE OFF;
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('15','1','1');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('16','2','2');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('8','1','1');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('9','2','1');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('10','3','1');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('11','1','2');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('12','2','2');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('13','3','2');
Insert into ORS.ODA (ID,ODAKAPASITEID,ODATIPID) values ('14','3','2');
REM INSERTING into ORS.ODAKAPASITE
SET DEFINE OFF;
Insert into ORS.ODAKAPASITE (ID,ADI,SAYISI,ODATIPID) values ('1','Tek Kiþilik
','10','1');
Insert into ORS.ODAKAPASITE (ID,ADI,SAYISI,ODATIPID) values ('2','Çift Kiþilik','20','1');
Insert into ORS.ODAKAPASITE (ID,ADI,SAYISI,ODATIPID) values ('3','Üç Kiþilik','5','2');
REM INSERTING into ORS.ODATIPI
SET DEFINE OFF;
Insert into ORS.ODATIPI (ID,ADI,RESIMI,FIYAT) values ('1','Suite Oda',null,'500');
Insert into ORS.ODATIPI (ID,ADI,RESIMI,FIYAT) values ('2','Standart Oda',null,'200');
REM INSERTING into ORS.ODEMETIPI
SET DEFINE OFF;
Insert into ORS.ODEMETIPI (ID,ODEMEADI) values ('1','Nakit');
Insert into ORS.ODEMETIPI (ID,ODEMEADI) values ('2','Kredi Kartý');
Insert into ORS.ODEMETIPI (ID,ODEMEADI) values ('3','PayPal');
REM INSERTING into ORS.OTEL
SET DEFINE OFF;
Insert into ORS.OTEL (OTELADI,ILID,POSTAKODU,TELEFON,EMAIL,FAKS,ID) values ('Butik Otel','7','45646','4654645','butikotel@ors.com','4865463','1');
REM INSERTING into ORS.REZERVASYON
SET DEFINE OFF;
Insert into ORS.REZERVASYON (ID,MUSTERIID,GIRISTARIHI,CIKISTARIHI,TOPLAMTUTAR,REZERVASYONTARIHI,ODASAYISI,ODATIPIID,REZERVASYONDURUMID,ODEMETIPID) values ('4','4',to_date('21/03/2013','DD/MM/RRRR'),to_date('28/03/2013','DD/MM/RRRR'),'200',to_date('20/03/2013','DD/MM/RRRR'),'1','2','1','2');
Insert into ORS.REZERVASYON (ID,MUSTERIID,GIRISTARIHI,CIKISTARIHI,TOPLAMTUTAR,REZERVASYONTARIHI,ODASAYISI,ODATIPIID,REZERVASYONDURUMID,ODEMETIPID) values ('5','1',to_date('21/03/2013','DD/MM/RRRR'),to_date('26/03/2013','DD/MM/RRRR'),'500',to_date('20/03/2013','DD/MM/RRRR'),'15','1','1','2');
Insert into ORS.REZERVASYON (ID,MUSTERIID,GIRISTARIHI,CIKISTARIHI,TOPLAMTUTAR,REZERVASYONTARIHI,ODASAYISI,ODATIPIID,REZERVASYONDURUMID,ODEMETIPID) values ('6','6',to_date('21/03/2013','DD/MM/RRRR'),to_date('26/03/2013','DD/MM/RRRR'),'500',to_date('20/03/2013','DD/MM/RRRR'),'1','1','1','1');
Insert into ORS.REZERVASYON (ID,MUSTERIID,GIRISTARIHI,CIKISTARIHI,TOPLAMTUTAR,REZERVASYONTARIHI,ODASAYISI,ODATIPIID,REZERVASYONDURUMID,ODEMETIPID) values ('7','3',to_date('21/03/2013','DD/MM/RRRR'),to_date('26/03/2013','DD/MM/RRRR'),'200',to_date('20/03/2013','DD/MM/RRRR'),'5','2','2','3');
REM INSERTING into ORS.REZERVASYONDURUM
SET DEFINE OFF;
Insert into ORS.REZERVASYONDURUM (ID,ADI) values ('1','Aktif');
Insert into ORS.REZERVASYONDURUM (ID,ADI) values ('2','Pasif');
REM INSERTING into ORS.ULKE
SET DEFINE OFF;
Insert into ORS.ULKE (ID,ADI) values ('1','Türkiye');
Insert into ORS.ULKE (ID,ADI) values ('2','Almanya');
Insert into ORS.ULKE (ID,ADI) values ('3','ABD');
Insert into ORS.ULKE (ID,ADI) values ('4','Ýspanya');
Insert into ORS.ULKE (ID,ADI) values ('5','Ýtalya');
Insert into ORS.ULKE (ID,ADI) values ('6','Fransa
');
REM INSERTING into ORS.YONETICI
SET DEFINE OFF;
Insert into ORS.YONETICI (KULLANICIADI,PAROLA,ID) values ('admin','123','1');
--------------------------------------------------------
--  DDL for Index IL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."IL_PK" ON "ORS"."IL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUSTERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."MUSTERI_PK" ON "ORS"."MUSTERI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ODAKAPASITE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."ODAKAPASITE_PK" ON "ORS"."ODAKAPASITE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ODA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."ODA_PK" ON "ORS"."ODA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ODATIPI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."ODATIPI_PK" ON "ORS"."ODATIPI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ODEMETIPI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."ODEMETIPI_PK" ON "ORS"."ODEMETIPI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OTEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."OTEL_PK" ON "ORS"."OTEL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REZERVASYONDURUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."REZERVASYONDURUM_PK" ON "ORS"."REZERVASYONDURUM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REZERVASYON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."REZERVASYON_PK" ON "ORS"."REZERVASYON" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ULKE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORS"."ULKE_PK" ON "ORS"."ULKE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table IL
--------------------------------------------------------

  ALTER TABLE "ORS"."IL" ADD CONSTRAINT "IL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."IL" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."IL" MODIFY ("ILADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."IL" MODIFY ("ULKEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUSTERI
--------------------------------------------------------

  ALTER TABLE "ORS"."MUSTERI" ADD CONSTRAINT "MUSTERI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."MUSTERI" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."MUSTERI" MODIFY ("ADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."MUSTERI" MODIFY ("SOYADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."MUSTERI" MODIFY ("ILID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODA
--------------------------------------------------------

  ALTER TABLE "ORS"."ODA" ADD CONSTRAINT "ODA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."ODA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODA" MODIFY ("ODAKAPASITEID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODA" MODIFY ("ODATIPID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODAKAPASITE
--------------------------------------------------------

  ALTER TABLE "ORS"."ODAKAPASITE" ADD CONSTRAINT "ODAKAPASITE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."ODAKAPASITE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODAKAPASITE" MODIFY ("ADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODAKAPASITE" MODIFY ("SAYISI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODATIPI
--------------------------------------------------------

  ALTER TABLE "ORS"."ODATIPI" ADD CONSTRAINT "ODATIPI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."ODATIPI" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODATIPI" MODIFY ("ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODEMETIPI
--------------------------------------------------------

  ALTER TABLE "ORS"."ODEMETIPI" ADD CONSTRAINT "ODEMETIPI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."ODEMETIPI" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ODEMETIPI" MODIFY ("ODEMEADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OTEL
--------------------------------------------------------

  ALTER TABLE "ORS"."OTEL" ADD CONSTRAINT "OTEL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."OTEL" MODIFY ("OTELADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."OTEL" MODIFY ("ILID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."OTEL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZERVASYON
--------------------------------------------------------

  ALTER TABLE "ORS"."REZERVASYON" ADD CONSTRAINT "REZERVASYON_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("MUSTERIID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("GIRISTARIHI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("CIKISTARIHI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("TOPLAMTUTAR" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("REZERVASYONTARIHI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("ODASAYISI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("ODATIPIID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("REZERVASYONDURUMID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYON" MODIFY ("ODEMETIPID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZERVASYONDURUM
--------------------------------------------------------

  ALTER TABLE "ORS"."REZERVASYONDURUM" ADD CONSTRAINT "REZERVASYONDURUM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ORS"."REZERVASYONDURUM" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."REZERVASYONDURUM" MODIFY ("ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ULKE
--------------------------------------------------------

  ALTER TABLE "ORS"."ULKE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."ULKE" ADD CONSTRAINT "ULKE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table YONETICI
--------------------------------------------------------

  ALTER TABLE "ORS"."YONETICI" MODIFY ("KULLANICIADI" NOT NULL ENABLE);
 
  ALTER TABLE "ORS"."YONETICI" MODIFY ("PAROLA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table IL
--------------------------------------------------------

  ALTER TABLE "ORS"."IL" ADD CONSTRAINT "IL_ULKE_FK1" FOREIGN KEY ("ULKEID")
	  REFERENCES "ORS"."ULKE" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUSTERI
--------------------------------------------------------

  ALTER TABLE "ORS"."MUSTERI" ADD CONSTRAINT "MUSTERI_IL_FK1" FOREIGN KEY ("ILID")
	  REFERENCES "ORS"."IL" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ODA
--------------------------------------------------------

  ALTER TABLE "ORS"."ODA" ADD CONSTRAINT "ODA_ODAKAPASITE_FK1" FOREIGN KEY ("ODAKAPASITEID")
	  REFERENCES "ORS"."ODAKAPASITE" ("ID") ENABLE;
 
  ALTER TABLE "ORS"."ODA" ADD CONSTRAINT "ODA_ODATIPI_FK1" FOREIGN KEY ("ODATIPID")
	  REFERENCES "ORS"."ODATIPI" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ODAKAPASITE
--------------------------------------------------------

  ALTER TABLE "ORS"."ODAKAPASITE" ADD CONSTRAINT "ODAKAPASITE_ODATIPI_FK1" FOREIGN KEY ("ODATIPID")
	  REFERENCES "ORS"."ODATIPI" ("ID") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table OTEL
--------------------------------------------------------

  ALTER TABLE "ORS"."OTEL" ADD CONSTRAINT "OTEL_IL_FK1" FOREIGN KEY ("ILID")
	  REFERENCES "ORS"."IL" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REZERVASYON
--------------------------------------------------------

  ALTER TABLE "ORS"."REZERVASYON" ADD CONSTRAINT "REZERVASYON_MUSTERI_FK1" FOREIGN KEY ("MUSTERIID")
	  REFERENCES "ORS"."MUSTERI" ("ID") ENABLE;
 
  ALTER TABLE "ORS"."REZERVASYON" ADD CONSTRAINT "REZERVASYON_ODATIPI_FK1" FOREIGN KEY ("ODATIPIID")
	  REFERENCES "ORS"."ODATIPI" ("ID") ENABLE;
 
  ALTER TABLE "ORS"."REZERVASYON" ADD CONSTRAINT "REZERVASYON_ODEMETIPI_FK1" FOREIGN KEY ("ODEMETIPID")
	  REFERENCES "ORS"."ODEMETIPI" ("ID") ENABLE;
 
  ALTER TABLE "ORS"."REZERVASYON" ADD CONSTRAINT "REZERVASYON_REZERVASYONDU_FK1" FOREIGN KEY ("REZERVASYONDURUMID")
	  REFERENCES "ORS"."REZERVASYONDURUM" ("ID") ENABLE;



--------------------------------------------------------
--  DDL for Trigger MUSTERI_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."MUSTERI_TRIG" 
before insert on MUSTERI
for each row
begin
select MUSTERI_SEQ.nextval into :new.ID from dual;
end MUSTERI_TRIG;
/
ALTER TRIGGER "ORS"."MUSTERI_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ODAKAPASITE_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."ODAKAPASITE_TRIG" 
before insert on ODAKAPASITE
for each row
begin
select ODAKAPASITE_SEQ.nextval into :new.ID from dual;
end ODAKAPASITE_TRIG;
/
ALTER TRIGGER "ORS"."ODAKAPASITE_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ODATIPI_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."ODATIPI_TRIG" 
before insert on ODATIPI
for each row
begin
select ODATIPI_SEQ.nextval into :new.ID from dual;
end ODATIPI_TRIG;
/
ALTER TRIGGER "ORS"."ODATIPI_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ODA_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."ODA_TRIG" 
before insert on ODA
for each row
begin
select ODA_SEQ.nextval into :new.ID from dual;
end ODA_TRIG;
/
ALTER TRIGGER "ORS"."ODA_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ODEMETIPI_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."ODEMETIPI_TRIG" 
before insert on ODEMETIPI
for each row
begin
select ODEMETIPI_SEQ.nextval into :new.ID from dual;
end ODEMETIPI_TRIG;
/
ALTER TRIGGER "ORS"."ODEMETIPI_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REZERVASYONSIL_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."REZERVASYONSIL_TRIG" 
AFTER DELETE ON MUSTERI
FOR EACH ROW
BEGIN
delete from REZERVASYON where
MUSTERIID=:old.ID;
end REZERVASYONSIL_TRIG;
/
ALTER TRIGGER "ORS"."REZERVASYONSIL_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REZERVASYON_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ORS"."REZERVASYON_TRIG" 
before insert on REZERVASYON
for each row
begin
select REZERVASYON_SEQ.nextval into :new.ID from dual;
end REZERVASYON_TRIG;
/
ALTER TRIGGER "ORS"."REZERVASYON_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Function TOPLAM_TUTAR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ORS"."TOPLAM_TUTAR" 
(
  P_ID REZERVASYON.ID%TYPE
) RETURN NUMBER IS
TOPLAMTUTAR NUMBER;
BEGIN
  SELECT (REZERVASYON.ODASAYISI * ODATIPI.FIYAT) INTO TOPLAMTUTAR FROM REZERVASYON
  JOIN ODATIPI ON REZERVASYON.ODATIPIID = ODATIPI.ID
  WHERE REZERVASYON.ID = P_ID;
END TOPLAM_TUTAR;

/
--------------------------------------------------------
--  DDL for Package PKG_OSDM_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORS"."PKG_OSDM_UTILS" AS

PROCEDURE Generate_Report(v_rep_id           IN NUMBER,
                          v_obj_ovid         IN VARCHAR2,
                          v_mode             IN NUMBER,
                          v_reports_dir      IN VARCHAR2,
                          v_compress         IN NUMBER, 
                          reportTemplate     IN REPORT_TEMPLATE,
                          v_raw_xml         OUT BFILE, 
                          v_status          OUT NUMBER, 
                          osddm_reports_dir OUT VARCHAR2);

FUNCTION Gather_Constraint_Details_XML(col_attr_ovid IN VARCHAR2, 
                                       namespace     IN VARCHAR2) RETURN CLOB;

FUNCTION Gather_Domain_Constraints_XML(domain_ovid VARCHAR2) RETURN CLOB;

FUNCTION Gather_Constraint_Details_HTML(col_attr_ovid VARCHAR2) RETURN CLOB;

FUNCTION Gather_Domain_Constraints_HTML (domain_ovid VARCHAR2) RETURN CLOB;

END PKG_OSDM_UTILS;

/
--------------------------------------------------------
--  DDL for Package Body PKG_OSDM_UTILS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORS"."PKG_OSDM_UTILS" AS

log_file   UTL_FILE.File_Type;
temp_file  UTL_FILE.File_Type;

PROCEDURE Generate_OS_File(v_blob IN BLOB, filename IN VARCHAR2, v_compressed IN NUMBER) IS

result_file     UTL_FILE.File_Type;
compressed_blob BLOB;
len             NUMBER;
l_pos           INTEGER := 1;
l_amount        BINARY_INTEGER := 32767;
l_buffer        RAW(32767);

BEGIN

 result_file := UTL_FILE.FOpen('OSDDM_REPORTS_DIR',filename,'wb', 32767); 

 len := DBMS_LOB.getlength(v_blob);
 
 WHILE l_pos < len LOOP
      DBMS_LOB.read(v_blob, l_amount, l_pos, l_buffer);
      UTL_FILE.put_raw(result_file, l_buffer, TRUE);
      l_pos := l_pos + l_amount;
 END LOOP;

 UTL_FILE.fclose(result_file);
 
EXCEPTION

 WHEN others THEN
 
  IF UTL_FILE.Is_Open(result_file) THEN
     UTL_FILE.FClose(result_file);
  END IF;

  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_OS_File Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_OS_File Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  
END Generate_OS_File;

FUNCTION Gather_Constraint_Details_XML(col_attr_ovid VARCHAR2, namespace VARCHAR2) RETURN CLOB IS

res        CLOB;
v_vl_value VARCHAR2(50) := namespace||':VLValue';
v_s_descr  VARCHAR2(50) := namespace||':VLShortDescription';

CURSOR cur_c_constraints(v_ovid IN VARCHAR2, v_ns IN VARCHAR2) IS
 SELECT cc.text text,
        DECODE(v_ns, 'osdm_t',  XMLElement("osdm_t:DatabaseType", XMLCDATA(cc.database_type)).getClobVal(),
                     'osdm_at', XMLElement("osdm_at:DatabaseType", XMLCDATA(cc.database_type)).getClobVal(),
                     'osdm_e',  XMLElement("osdm_e:DatabaseType", XMLCDATA(cc.database_type)).getClobVal(),
                     'osdm_ae', XMLElement("osdm_ae:DatabaseType", XMLCDATA(cc.database_type)).getClobVal())  db_type,
       COUNT(cc.text) over()                                                                                  total_row_count
 FROM   dmrs_check_constraints cc
 WHERE  cc.dataelement_ovid = v_ovid
 ORDER BY sequence;
rec_c_constraints cur_c_constraints%rowtype;

CURSOR cur_vr_constraints(v_ovid IN VARCHAR2, v_ns IN VARCHAR2) IS
 SELECT DECODE(v_ns, 'osdm_t', XMLElement("osdm_t:RangeBeginValue", XMLCDATA(vr.begin_value)).getClobVal(),
                     'osdm_at',XMLElement("osdm_at:RangeBeginValue", XMLCDATA(vr.begin_value)).getClobVal(),
                     'osdm_e', XMLElement("osdm_e:RangeBeginValue", XMLCDATA(vr.begin_value)).getClobVal(),
                     'osdm_ae',XMLElement("osdm_ae:RangeBeginValue", XMLCDATA(vr.begin_value)).getClobVal())              begin_value,
        DECODE(v_ns, 'osdm_t', XMLElement("osdm_t:RangeEndValue", XMLCDATA(vr.end_value)).getClobVal(),
                     'osdm_at',XMLElement("osdm_at:RangeEndValue", XMLCDATA(vr.end_value)).getClobVal(),
                     'osdm_e', XMLElement("osdm_e:RangeEndValue", XMLCDATA(vr.end_value)).getClobVal(),
                     'osdm_ae',XMLElement("osdm_ae:RangeEndValue", XMLCDATA(vr.end_value)).getClobVal())                  end_value,
        DECODE(v_ns, 'osdm_t', XMLElement("osdm_t:RangeShortDescription", XMLCDATA(vr.short_description)).getClobVal(),  
                     'osdm_at',XMLElement("osdm_at:RangeShortDescription", XMLCDATA(vr.short_description)).getClobVal(),  
                     'osdm_e', XMLElement("osdm_e:RangeShortDescription", XMLCDATA(vr.short_description)).getClobVal(),
                     'osdm_ae',XMLElement("osdm_ae:RangeShortDescription", XMLCDATA(vr.short_description)).getClobVal())  short_description,
        COUNT(vr.begin_value) over()                                                                                      total_row_count
 FROM   dmrs_value_ranges vr
 WHERE  vr.dataelement_ovid = v_ovid
 ORDER BY sequence;
rec_vr_constraints cur_vr_constraints%rowtype;

CURSOR cur_vl_constraints(v_ovid IN VARCHAR2, v_ns IN VARCHAR2) IS
 SELECT DECODE(v_ns, 'osdm_t', XMLElement("osdm_t:VLValue", XMLCDATA(av.value)).getClobVal(),
                     'osdm_at',XMLElement("osdm_at:VLValue", XMLCDATA(av.value)).getClobVal(),
                     'osdm_e', XMLElement("osdm_e:VLValue", XMLCDATA(av.value)).getClobVal(),
                     'osdm_ae',XMLElement("osdm_ae:VLValue", XMLCDATA(av.value)).getClobVal())                         av_value,
        DECODE(v_ns, 'osdm_t', XMLElement("osdm_t:VLShortDescription", XMLCDATA(av.short_description)).getClobVal(),
                     'osdm_at',XMLElement("osdm_at:VLShortDescription", XMLCDATA(av.short_description)).getClobVal(),
                     'osdm_e', XMLElement("osdm_e:VLShortDescription", XMLCDATA(av.short_description)).getClobVal(),
                     'osdm_ae',XMLElement("osdm_ae:VLShortDescription", XMLCDATA(av.short_description)).getClobVal())  short_description,
        COUNT(av.value) over()                                                                                         total_row_count
 FROM   dmrs_avt av,
        dmrs_columns c
 WHERE  c.ovid = av.dataelement_ovid
 AND    av.dataelement_ovid = v_ovid;
rec_vl_constraints cur_vl_constraints%rowtype;

BEGIN

  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  FOR rec_vr_constraints IN cur_vr_constraints(col_attr_ovid, namespace) LOOP
     IF (cur_vr_constraints%ROWCOUNT = 1) THEN
       DBMS_LOB.APPEND (res, '<'||namespace||':RangesCollection>');
     END IF;

       DBMS_LOB.APPEND (res, '<'||namespace||':RangeDetails>');
       DBMS_LOB.APPEND (res, rec_vr_constraints.begin_value);
       DBMS_LOB.APPEND (res, rec_vr_constraints.end_value);
       DBMS_LOB.APPEND (res, rec_vr_constraints.short_description);
       DBMS_LOB.APPEND (res, '</'||namespace||':RangeDetails>');
    
     IF (cur_vr_constraints%ROWCOUNT = rec_vr_constraints.total_row_count) THEN
       DBMS_LOB.APPEND (res, '</'||namespace||':RangesCollection>');
     END IF;
  END LOOP;
 
  FOR rec_vl_constraints IN cur_vl_constraints(col_attr_ovid, namespace) LOOP
     IF (cur_vl_constraints%ROWCOUNT = 1) THEN
       DBMS_LOB.APPEND (res, '<'||namespace||':ValueListsCollection>');
     END IF;
   
       DBMS_LOB.APPEND (res, '<'||namespace||':ValueListDetails>');
       DBMS_LOB.APPEND (res, rec_vl_constraints.av_value);
       DBMS_LOB.APPEND (res, rec_vl_constraints.short_description);
       DBMS_LOB.APPEND (res, '</'||namespace||':ValueListDetails>');
     
     IF (cur_vl_constraints%ROWCOUNT = rec_vl_constraints.total_row_count) THEN
       DBMS_LOB.APPEND (res, '</'||namespace||':ValueListsCollection>');
     END IF;
  END LOOP;

  FOR rec_c_constraints IN cur_c_constraints(col_attr_ovid, namespace) LOOP
     IF (cur_c_constraints%ROWCOUNT = 1) THEN
       DBMS_LOB.APPEND (res, '<'||namespace||':CheckConstraintsCollection>');
     END IF;

       DBMS_LOB.APPEND (res, '<'||namespace||':CheckConstraintDetails>');

     IF LENGTH(rec_c_constraints.text)>0 THEN
       DBMS_LOB.APPEND (res, '<'||namespace||':CheckConstraintText>');
       DBMS_LOB.APPEND (res, '<'||namespace||':CheckConstraintTextDetails>');
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(XMLCDATA(rec_c_constraints.text) || Chr(10), '(.*' || Chr(10) || ')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_c_constraints.text||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
     
         DBMS_LOB.APPEND (res, '<'||namespace||':CheckConstraintTextRow>');
         DBMS_LOB.APPEND (res, TO_CLOB(NVL(token.t,' ')));
         DBMS_LOB.APPEND (res, '</'||namespace||':CheckConstraintTextRow>');
     
       END LOOP;
       DBMS_LOB.APPEND (res, '</'||namespace||':CheckConstraintTextDetails>');
       DBMS_LOB.APPEND (res, '</'||namespace||':CheckConstraintText>');
     END IF;
    
       DBMS_LOB.APPEND (res, rec_c_constraints.db_type);
       DBMS_LOB.APPEND (res, '</'||namespace||':CheckConstraintDetails>');
   
     IF (cur_c_constraints%ROWCOUNT = rec_c_constraints.total_row_count) THEN
       DBMS_LOB.APPEND (res, '</'||namespace||':CheckConstraintsCollection>');
     END IF;
  END LOOP;

  RETURN res;

EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Constraint_Details_XML Exception : : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Constraint_Details_XML Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;

END Gather_Constraint_Details_XML;

FUNCTION Gather_SingleTable_Data(v_table_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res             CLOB;
v_description   VARCHAR2(32767);
v_notes         VARCHAR2(32767);
v_cc_created    BOOLEAN := FALSE;
token_value     CLOB;

-- Common Data
CURSOR cur_common_data(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:DesignName",d.design_name).getClobVal()                                      design_name,
        XMLElement("osdm_t:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal() version_date,
        d.version_comments                                                                              version_comment,
        XMLElement("osdm_t:ModelName",m.model_name).getClobVal()                                        model_name
 FROM   dmrs_designs d, 
        dmrs_models m,
        dmrs_tables t
 WHERE  d.design_ovid = m.design_ovid
 AND   t.model_ovid = m.model_ovid
 AND   t.ovid = v_t_ovid;
rec_common_data cur_common_data%ROWTYPE;

-- Table General Data
CURSOR cur_table(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:TableName",t.table_name).getClobVal()                                 table_name,
        XMLElement("osdm_t:Abbreviation",t.abbreviation).getClobVal()                            abbreviation,
        XMLElement("osdm_t:ClassificationTypeName",t.classification_type_name).getClobVal()      class_type_name,
        XMLElement("osdm_t:ObjectTypeName",t.structured_type_name).getClobVal()                  obj_type_name,
        XMLElement("osdm_t:NumberOfColumns",t.number_data_elements).getClobVal()                 number_cols,
        XMLElement("osdm_t:NumberOfRowsMin",t.min_volume).getClobVal()                           number_rows_min,
        XMLElement("osdm_t:NumberOfRowsMax",t.max_volume).getClobVal()                           number_rows_max,
        XMLElement("osdm_t:ExpectedNumberOfRows",t.expected_volume).getClobVal()                 number_rows_expected,
        XMLElement("osdm_t:ExpectedGrowth",t.growth_rate_percents).getClobVal()                  growth_expected,
        XMLElement("osdm_t:GrowthInterval",t.growth_rate_interval).getClobVal()                  growth_interval,
        XMLElement("osdm_t:FunctionalName", (SELECT NVL(e.entity_name,'')                        
                                              FROM   dmrs_entities e,
                                                     dmrs_mappings m
                                              WHERE  m.relational_object_ovid = t.ovid
                                              AND    m.logical_object_ovid  = e.ovid
                                              AND    ROWNUM = 1)).getClobVal()                    functional_name
 FROM	 dmrs_tables t
 WHERE  t.ovid = v_t_ovid;
rec_table cur_table%ROWTYPE;

-- Columns Data
CURSOR cur_columns(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:Sequence",c.sequence).getClobVal()                                                                                              seq,
        XMLElement("osdm_t:ColumnName",c.column_name).getClobVal()                                                                                         column_name,
        XMLElement("osdm_t:PK",c.pk_flag).getClobVal()                                                                                                     pk,
        XMLElement("osdm_t:FK",c.fk_flag).getClobVal()                                                                                                     fk,
        XMLElement("osdm_t:M",DECODE(c.mandatory,'N',' ',c.mandatory)).getClobVal()                                                                        m,
        XMLElement("osdm_t:DataTypeKind",DECODE(c.datatype_kind,                                                                                           
                                                 'Domain',         'DOM',
                                                 'Logical Type',   'LT',
                                                 'Distinct Type',  'DT',
                                                 'Ref Struct Type','RST',
                                                 'Structured Type','ST',
                                                 'Collection Type','CT')
                  ).getClobVal()                                                                                                                             dt_kind,
         XMLElement("osdm_t:DataType", 
            DECODE(c.datatype_kind, 
                  'Domain', c.logical_type_name ||' '||
                           DECODE (NVL(c.t_size,''),'',
                              DECODE(NVL(c.t_scale,0),0,
                                 DECODE(NVL(c.t_precision,0),0,null,'('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) ||')'),
                                   '('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) || ',' || DECODE(NVL(c.t_scale,0),0,null,c.t_scale)||')'),
                                   '('||TRIM(DECODE(c.t_size,'',null,c.t_size||' '||c.char_units ))||')'),
                   'Logical Type', c.logical_type_name  ||' '|| 
                           DECODE (NVL(c.t_size,''),'',
                              DECODE(NVL(c.t_scale,0),0,
                                 DECODE(NVL(c.t_precision,0),0,null,'('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) ||')'),
                                   '('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) || ',' || DECODE(NVL(c.t_scale,0),0,null,c.t_scale)||')'),
                                   '('||TRIM(DECODE(c.t_size,'',null,c.t_size||' '||c.char_units ))||')')
            ) ||
            DECODE (c.auto_increment_column,'Y', ' - AI','') ||
            DECODE (c.identity_column,'Y', ' - ID','')
          ).getClobVal()                                                                                                                                    data_type,
        XMLElement("osdm_t:DomainName",DECODE(c.domain_name,'Unknown',null,c.domain_name)).getClobVal()                                                     domain_name,
        XMLElement("osdm_t:Formula", TRIM(c.formula||' '||c.default_value)).getClobVal()                                                                    formula,
        XMLElement("osdm_t:Security",DECODE(c.personally_id_information ||'/'||c.sensitive_information||'/'||c.mask_for_none_production,'//',
                                      null,c.personally_id_information ||'/'||c.sensitive_information||'/'||c.mask_for_none_production)).getClobVal()       security,
        XMLElement("osdm_t:PreferredAbbreviation",c.abbreviation).getClobVal()                                                                              abbreviation,
        COUNT(c.column_name) over()                                                                                                                         total_row_count
 FROM 	dmrs_columns c
 WHERE  c.container_ovid = v_t_ovid
 ORDER BY c.sequence;
rec_columns cur_columns%ROWTYPE;

-- Columns Comments Data
CURSOR cur_columns_comments(v_t_ovid IN VARCHAR2) IS
 SELECT a.seq                       seq, 
        a.column_name               column_name, 
        a.description               description, 
        a.notes                     notes,
        COUNT(a.column_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_t:ColumnCommentsSequence",c.sequence).getStringVal()  seq,
         XMLElement("osdm_t:ColumnCommentsName",c.column_name).getStringVal()   column_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='CommentsInRDBMS'))                                       description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='Note')                                                   notes
  FROM   dmrs_columns c
  WHERE  c.container_ovid = v_t_ovid
  ORDER BY c.sequence
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_columns_comments cur_columns_comments%ROWTYPE;

--Indexes
CURSOR cur_indexes(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:IndexName",i.index_name).getClobVal()                                                                                        idx_name,
        XMLElement("osdm_t:IndexState",DECODE(i.state,'Unique Plain Index','UN','Unique Constraint','UK','Primary Constraint','PK',null)).getClobVal()  state,
        XMLElement("osdm_t:IndexFunctional",DECODE(i.functional,'N',' ',i.functional)).getClobVal()                                                     functional,
        XMLElement("osdm_t:IndexSpatial",DECODE(i.spatial_index,'N',' ',i.spatial_index)).getClobVal()                                                  spatial,
        XMLElement("osdm_t:IndexExpression",i.expression).getClobVal()                                                                                  expression,
        XMLElement("osdm_t:IndexColumnName",c.column_name).getClobVal()                                                                                 col_name,
        XMLElement("osdm_t:IndexSortOrder",c.sort_order).getClobVal()                                                                                   sort_order,
        c.sequence                                                                                                                                      idx_sequence,
        COUNT(c.column_name) over()                                                                                                                     total_row_count
 FROM   dmrs_tables t,
        dmrs_indexes i,
        dmrs_constr_index_columns c
 WHERE  t.ovid = i.container_ovid
 AND    i.ovid = c.index_ovid
 AND    t.ovid = v_t_ovid
 ORDER BY i.index_name, c.sequence, c.sort_order;
rec_indexes cur_indexes%ROWTYPE;

-- Table Level Constraints
CURSOR cur_tl_constraints(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:TLConstraintType", CASE WHEN rownum>1 THEN ''
                                               ELSE 'Table Level'
                                               END ).getClobVal()               c_type,
        XMLElement("osdm_t:TLConstraintName", tc.constraint_name).getClobVal() c_name,
        tc.text                                                                 c_details,
        COUNT(tc.constraint_name) over()                                        total_row_count
 FROM   dmrs_table_constraints tc
 WHERE  tc.table_ovid = v_t_ovid;
rec_tl_constraints cur_tl_constraints%ROWTYPE;

-- Column Level Constraints
CURSOR cur_cl_constraints(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:ContstraintType", CASE WHEN rownum>1 THEN ''
                                              ELSE 'Column Level'
                                              END).getClobVal()                                        c_type,
        XMLElement("osdm_t:ALCConstraintName", c.column_name || 
                                                DECODE((SELECT DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE c.ovid = dataelement_ovid),NULL,'',
                                               ' / '|| (SELECT  DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE c.ovid = dataelement_ovid))).getClobVal() c_name,
        Gather_Constraint_Details_XML(c.ovid, 'osdm_t')                                                 c_details,
        COUNT(c.column_name) over()                                                                     total_row_count
 FROM   dmrs_columns c
 WHERE  c.container_ovid = v_t_ovid
 AND    (c.ovid IN (SELECT dataelement_ovid FROM dmrs_avt) OR 
         c.ovid IN (SELECT dataelement_ovid FROM dmrs_value_ranges) OR 
         c.ovid IN (SELECT dataelement_ovid FROM dmrs_check_constraints));
rec_cl_constraints cur_cl_constraints%ROWTYPE;

--Foreign keys referring to other tables
CURSOR cur_fk_referring_to(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:FKName",CASE WHEN ic.sequence>1 THEN ' '
                                    ELSE fk.fk_name
                                    END
                   ).getClobVal()                                               fk_name,
        XMLElement("osdm_t:FKReferringTo",CASE WHEN ic.sequence>1 THEN ' '
                                          ELSE fk.referred_table_name
                                          END
                  ).getClobVal()                                                referring_to,
        XMLElement("osdm_t:FKMandatory",CASE WHEN ic.sequence>1 THEN ' '
                                         ELSE DECODE(fk.mandatory,'Y',fk.mandatory,' ')
                                         END
                  ).getClobVal()                                                mandatory,
        XMLElement("osdm_t:FKTransferable",CASE WHEN ic.sequence>1 THEN ' '
                                            ELSE DECODE(fk.transferable,'Y',fk.transferable,' ')
                                            END
                  ).getClobVal()                                                transferable,
        XMLElement("osdm_t:FKInArc",CASE WHEN ic.sequence>1 THEN ' '
                                     ELSE DECODE(fk.in_arc,'Y',fk.in_arc,' ')
                                     END
                  ).getClobVal()                                                in_arc,
        XMLElement("osdm_t:FKColumnName",ic.column_name).getClobVal()          col_name,
        ic.sequence                                                             seq,
        COUNT(ic.column_name) over()                                            total_row_count
 FROM   dmrs_foreignkeys fk,
        dmrs_constr_index_columns ic
 WHERE  fk.child_table_ovid = v_t_ovid
 AND    fk.ovid = ic.index_ovid
 ORDER BY fk.referred_table_name,fk.fk_name, ic.sequence;
rec_fk_referring_to cur_fk_referring_to%ROWTYPE;

--Foreign keys referred from other tables
CURSOR cur_fk_referred_from(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_t:FKName",CASE WHEN ic.sequence>1 THEN ' '
                                    ELSE fk.fk_name
                                    END
                   ).getClobVal()                                              fk_name,
        XMLElement("osdm_t:FKReferredFrom",CASE WHEN ic.sequence>1 THEN ' '
                                           ELSE fk.child_table_name
                                           END
                  ).getClobVal()                                                referred_from,
        XMLElement("osdm_t:FKMandatory",CASE WHEN ic.sequence>1 THEN ' '
                                         ELSE DECODE(fk.mandatory,'Y',fk.mandatory,' ')
                                         END
                  ).getClobVal()                                                mandatory,
        XMLElement("osdm_t:FKTransferable",CASE WHEN ic.sequence>1 THEN ' '
                                            ELSE DECODE(fk.transferable,'Y',fk.transferable,' ')
                                            END
                  ).getClobVal()                                                transferable,
        XMLElement("osdm_t:FKInArc",CASE WHEN ic.sequence>1 THEN ' '
                                     ELSE DECODE(fk.in_arc,'Y',fk.in_arc,' ')
                                     END
                  ).getClobVal()                                                in_arc,
        XMLElement("osdm_t:FKColumnName",ic.column_name).getClobVal()           col_name,
        ic.sequence                                                             seq,
        COUNT(ic.column_name) over()                                            total_row_count
 FROM   dmrs_foreignkeys fk,
        dmrs_constr_index_columns ic
 WHERE  fk.referred_table_ovid = v_t_ovid
 AND    fk.ovid = ic.index_ovid
 ORDER BY fk.child_table_name,fk.fk_name, ic.sequence;
rec_fk_referred_from cur_fk_referred_from%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering single table data started ...');

   DBMS_LOB.CREATETEMPORARY(res, TRUE);
   DBMS_LOB.APPEND (res,'<osdm_t:root xmlns:osdm_t="osdm_t">');

   -- Common Data
   FOR rec_common_data IN cur_common_data(v_table_ovid) LOOP

      DBMS_LOB.APPEND (res, rec_common_data.design_name);
      DBMS_LOB.APPEND (res, rec_common_data.version_date);  
      DBMS_LOB.APPEND (res, '<osdm_t:VersionComment>');
      DBMS_LOB.APPEND (res, '<osdm_t:VersionCommentDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
 
          SELECT XMLElement("osdm_t:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_t:VersionCommentDetails>');
      DBMS_LOB.APPEND (res, '</osdm_t:VersionComment>');
      DBMS_LOB.APPEND (res, rec_common_data.model_name);
 
   END LOOP;

   -- Description / Notes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN

      DBMS_LOB.APPEND (res, '<osdm_t:DescriptionNotes>');

      SELECT 
            NVL(
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_table_ovid
                AND    t.type='Comments'),
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_table_ovid
                AND    t.type='CommentsInRDBMS'))        description, 
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_table_ovid
                AND    t.type='Note')                     notes
      INTO   v_description, 
             v_notes
      FROM  dual;
      
      DBMS_LOB.APPEND (res, '<osdm_t:Description>');
      DBMS_LOB.APPEND (res, '<osdm_t:DescriptionDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_t:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_t:DescriptionDetails>');
      DBMS_LOB.APPEND (res, '</osdm_t:Description>');
      
      DBMS_LOB.APPEND (res, '<osdm_t:Notes>');
      DBMS_LOB.APPEND (res, '<osdm_t:NotesDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_t:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_t:NotesDetails>');
      DBMS_LOB.APPEND (res, '</osdm_t:Notes>');
      DBMS_LOB.APPEND (res, '</osdm_t:DescriptionNotes>');
   END IF;

   --Table General Data
   FOR rec_table IN cur_table(v_table_ovid) LOOP
      DBMS_LOB.APPEND (res, rec_table.table_name);
      DBMS_LOB.APPEND (res, rec_table.functional_name);      
      DBMS_LOB.APPEND (res, rec_table.abbreviation);
      DBMS_LOB.APPEND (res, rec_table.class_type_name);
      DBMS_LOB.APPEND (res, rec_table.obj_type_name);

      IF (reportTemplate.reportType = 0 OR reportTemplate.useQuantitativeInfo = 1) THEN
        DBMS_LOB.APPEND (res, '<osdm_t:QuantitativeInfoCollection>');
        DBMS_LOB.APPEND (res, rec_table.number_cols);
        DBMS_LOB.APPEND (res, rec_table.number_rows_min);
        DBMS_LOB.APPEND (res, rec_table.number_rows_max);
        DBMS_LOB.APPEND (res, rec_table.number_rows_expected);
        DBMS_LOB.APPEND (res, rec_table.growth_expected);
        DBMS_LOB.APPEND (res, rec_table.growth_interval);
        DBMS_LOB.APPEND (res, '</osdm_t:QuantitativeInfoCollection>');
      END IF;
   END LOOP;
   
   -- Columns
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableColumns = 1) THEN
     FOR rec_columns IN cur_columns(v_table_ovid) LOOP
        IF (cur_columns%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_t:ColumnsCollection>');
        END IF;
        
          DBMS_LOB.APPEND (res, '<osdm_t:ColumnDetails>');
          DBMS_LOB.APPEND (res, rec_columns.seq);
          DBMS_LOB.APPEND (res, rec_columns.column_name);
          DBMS_LOB.APPEND (res, rec_columns.pk);
          DBMS_LOB.APPEND (res, rec_columns.fk);
          DBMS_LOB.APPEND (res, rec_columns.m);
          IF (INSTR(LOWER(rec_columns.data_type),'unknown') = 0) THEN
            DBMS_LOB.APPEND (res, rec_columns.data_type);
          ELSE
            SELECT XMLElement("osdm_t:DataType", '').getClobVal() INTO token_value FROM dual;
            DBMS_LOB.APPEND (res, token_value);
          END IF;
          DBMS_LOB.APPEND (res, rec_columns.dt_kind);
          DBMS_LOB.APPEND (res, rec_columns.domain_name);
          DBMS_LOB.APPEND (res, rec_columns.formula);
          DBMS_LOB.APPEND (res, rec_columns.security);
          DBMS_LOB.APPEND (res, rec_columns.abbreviation);
          DBMS_LOB.APPEND (res,'</osdm_t:ColumnDetails>');
        
        IF (cur_columns%ROWCOUNT = rec_columns.total_row_count) THEN
         DBMS_LOB.APPEND (res, '</osdm_t:ColumnsCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Columns Comments
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableColumnsComments = 1) THEN
     FOR rec_columns_comments IN cur_columns_comments(v_table_ovid) LOOP
        IF (cur_columns_comments%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_t:ColumnsCommentsCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_t:ColumnCommentsDetails>');
          DBMS_LOB.APPEND (res, rec_columns_comments.seq);
          DBMS_LOB.APPEND (res, rec_columns_comments.column_name);

          DBMS_LOB.APPEND (res, '<osdm_t:ColumnDescription>');
          DBMS_LOB.APPEND (res, '<osdm_t:ColumnDescriptionDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_columns_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                           FROM   dual
                           CONNECT BY REGEXP_INSTR(rec_columns_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
              SELECT XMLElement("osdm_t:ColumnDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnDescriptionDetails>');
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnDescription>');

          DBMS_LOB.APPEND (res, '<osdm_t:ColumnNotes>');
          DBMS_LOB.APPEND (res, '<osdm_t:ColumnNotesDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_columns_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                           FROM   dual
                           CONNECT BY REGEXP_INSTR(rec_columns_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
              SELECT XMLElement("osdm_t:ColumnNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnNotesDetails>');
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnNotes>');

          DBMS_LOB.APPEND (res,'</osdm_t:ColumnCommentsDetails>');

        IF (cur_columns_comments%ROWCOUNT = rec_columns_comments.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnsCommentsCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Indexes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableIndexes = 1) THEN
     FOR rec_indexes IN cur_indexes(v_table_ovid) LOOP
        IF (cur_indexes%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_t:IndexesCollection>');
        END IF;
     
          DBMS_LOB.APPEND (res, '<osdm_t:IndexDetails>');
          DBMS_LOB.APPEND (res, rec_indexes.idx_name);
          DBMS_LOB.APPEND (res, rec_indexes.state);
          DBMS_LOB.APPEND (res, rec_indexes.functional);
          DBMS_LOB.APPEND (res, rec_indexes.spatial);
          DBMS_LOB.APPEND (res, rec_indexes.expression);
          DBMS_LOB.APPEND (res, rec_indexes.col_name);
          DBMS_LOB.APPEND (res, rec_indexes.sort_order);
          DBMS_LOB.APPEND (res,'</osdm_t:IndexDetails>');
     
        IF (cur_indexes%ROWCOUNT = rec_indexes.total_row_count) THEN
         DBMS_LOB.APPEND (res, '</osdm_t:IndexesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Constraints
   v_cc_created := FALSE;
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableConstraints = 1) THEN
     -- Table Level Constraints
     FOR rec_tl_constraints IN cur_tl_constraints(v_table_ovid) LOOP
        IF (cur_tl_constraints%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_t:ConstraintsCollection>');
          v_cc_created := TRUE;
          DBMS_LOB.APPEND (res,'<osdm_t:TableLevelConstraintsCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_t:TableLevelConstraintDetails>');
          DBMS_LOB.APPEND (res, rec_tl_constraints.c_type);
          DBMS_LOB.APPEND (res, rec_tl_constraints.c_name);

          DBMS_LOB.APPEND (res, '<osdm_t:TLConstraintRule>');
          DBMS_LOB.APPEND (res, '<osdm_t:TLConstraintRuleDetails>');
          -- Tokenize rows
           FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR( rec_tl_constraints.c_details||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                          FROM   dual
                          CONNECT BY REGEXP_INSTR(rec_tl_constraints.c_details||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
               SELECT XMLElement("osdm_t:TLConstraintRuleRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
               DBMS_LOB.APPEND (res, token_value);
           END LOOP;
           DBMS_LOB.APPEND (res, '</osdm_t:TLConstraintRuleDetails>');       
           DBMS_LOB.APPEND (res, '</osdm_t:TLConstraintRule>');

           DBMS_LOB.APPEND (res, '</osdm_t:TableLevelConstraintDetails>');

        IF (cur_tl_constraints%ROWCOUNT = rec_tl_constraints.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_t:TableLevelConstraintsCollection>');
        END IF;

     END LOOP;

     -- Column Level Constraints
     FOR rec_cl_constraints IN cur_cl_constraints(v_table_ovid) LOOP
        IF (cur_cl_constraints%ROWCOUNT = 1) THEN
          IF NOT v_cc_created THEN
             DBMS_LOB.APPEND (res,'<osdm_t:ConstraintsCollection>');
             v_cc_created := TRUE;
          END IF;

         DBMS_LOB.APPEND (res,'<osdm_t:ColumnLevelConstraintsCollection>');
         v_cc_created := TRUE;
        END IF;

         DBMS_LOB.APPEND (res, '<osdm_t:ConstraintDetails>');
         DBMS_LOB.APPEND (res, rec_cl_constraints.c_type);
         DBMS_LOB.APPEND (res, rec_cl_constraints.c_name);
         DBMS_LOB.APPEND (res, rec_cl_constraints.c_details);
         DBMS_LOB.APPEND (res,'</osdm_t:ConstraintDetails>');

        IF (cur_cl_constraints%ROWCOUNT = rec_cl_constraints.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_t:ColumnLevelConstraintsCollection>');
        END IF;
     END LOOP;

     IF v_cc_created THEN
       DBMS_LOB.APPEND (res,'</osdm_t:ConstraintsCollection>');
     END IF;
   END IF;

   -- Foreign Keys Referring To
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableFKReferringTo = 1) THEN
     FOR rec_fk_referring_to IN cur_fk_referring_to(v_table_ovid) LOOP
        IF (cur_fk_referring_to%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_t:FKRTCollection>');
        END IF;

         DBMS_LOB.APPEND (res, '<osdm_t:FKRTDetails>');
         DBMS_LOB.APPEND (res, rec_fk_referring_to.fk_name);
         DBMS_LOB.APPEND (res, rec_fk_referring_to.referring_to);
         DBMS_LOB.APPEND (res, rec_fk_referring_to.mandatory);
         DBMS_LOB.APPEND (res, rec_fk_referring_to.transferable);
         DBMS_LOB.APPEND (res, rec_fk_referring_to.in_arc);
         DBMS_LOB.APPEND (res, rec_fk_referring_to.col_name);
         DBMS_LOB.APPEND (res,'</osdm_t:FKRTDetails>');
         
        IF (cur_fk_referring_to%ROWCOUNT = rec_fk_referring_to.total_row_count) THEN
         DBMS_LOB.APPEND (res, '</osdm_t:FKRTCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Foreign Keys Referred From
   IF (reportTemplate.reportType = 0 OR reportTemplate.useTableFKReferredFrom = 1) THEN
     FOR rec_fk_referred_from IN cur_fk_referred_from(v_table_ovid) LOOP
        IF (cur_fk_referred_from%ROWCOUNT = 1) THEN
            DBMS_LOB.APPEND (res,'<osdm_t:FKRFCollection>');
        END IF;

         DBMS_LOB.APPEND (res, '<osdm_t:FKRFDetails>');
         DBMS_LOB.APPEND (res, rec_fk_referred_from.fk_name);
         DBMS_LOB.APPEND (res, rec_fk_referred_from.referred_from);
         DBMS_LOB.APPEND (res, rec_fk_referred_from.mandatory);
         DBMS_LOB.APPEND (res, rec_fk_referred_from.transferable);
         DBMS_LOB.APPEND (res, rec_fk_referred_from.in_arc);
         DBMS_LOB.APPEND (res, rec_fk_referred_from.col_name);
         DBMS_LOB.APPEND (res,'</osdm_t:FKRFDetails>');
        
        IF (cur_fk_referred_from%ROWCOUNT = rec_fk_referred_from.total_row_count) THEN
         DBMS_LOB.APPEND (res, '</osdm_t:FKRFCollection>');
        END IF;
     END LOOP;
   END IF;

   DBMS_LOB.APPEND (res,'</osdm_t:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering single table data ended');

RETURN res;

 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleTable_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleTable_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
	
END Gather_SingleTable_Data;

FUNCTION Gather_AllTables_Data(v_model_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res             CLOB;
v_description   VARCHAR2(32767);
v_notes         VARCHAR2(32767);
v_cc_created    BOOLEAN := FALSE;
token_value     CLOB;

-- Common Data
CURSOR cur_common_data(v_m_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:DesignName",d.design_name).getClobVal()                                      design_name,
        XMLElement("osdm_at:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal() version_date,
        d.version_comments                                                                               version_comment,
        XMLElement("osdm_at:ModelName",m.model_name).getClobVal()                                        model_name
 FROM   dmrs_designs d, 
        dmrs_models m
 WHERE  d.design_ovid = m.design_ovid
 AND    m.model_ovid = v_m_ovid;
rec_common_data cur_common_data%ROWTYPE;

-- All Tables General Data
CURSOR cur_all_tables(v_m_ovid IN VARCHAR2) IS
 SELECT /*+ index(t TABLES_FK_IDXV1) */
        XMLElement("osdm_at:TableName",t.table_name).getClobVal()                                 table_name,
        XMLElement("osdm_at:Abbreviation",t.abbreviation).getClobVal()                            abbreviation,
        XMLElement("osdm_at:ClassificationTypeName",t.classification_type_name).getClobVal()      class_type_name,
        XMLElement("osdm_at:ObjectTypeName",t.structured_type_name).getClobVal()                  obj_type_name,
        XMLElement("osdm_at:NumberOfColumns",t.number_data_elements).getClobVal()                 number_cols,
        XMLElement("osdm_at:NumberOfRowsMin",t.min_volume).getClobVal()                           number_rows_min,
        XMLElement("osdm_at:NumberOfRowsMax",t.max_volume).getClobVal()                           number_rows_max,
        XMLElement("osdm_at:ExpectedNumberOfRows",t.expected_volume).getClobVal()                 number_rows_expected,
        XMLElement("osdm_at:ExpectedGrowth",t.growth_rate_percents).getClobVal()                  growth_expected,
        XMLElement("osdm_at:GrowthInterval",t.growth_rate_interval).getClobVal()                  growth_interval,
        XMLElement("osdm_at:FunctionalName", (SELECT NVL(e.entity_name,'')                        
                                              FROM   dmrs_entities e,
                                                     dmrs_mappings m
                                              WHERE  m.relational_object_ovid = t.ovid
                                              AND    m.logical_object_ovid  = e.ovid
                                              AND    ROWNUM = 1)).getClobVal()                    functional_name, 
       t.ovid                                                                                     table_ovid,
       COUNT(t.table_name) over()                                                                 total_row_count
 FROM 	 dmrs_tables t
 WHERE  t.model_ovid = v_m_ovid
 ORDER BY t.table_name;
rec_all_tables cur_all_tables%ROWTYPE;

-- Columns Data
CURSOR cur_columns(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:Sequence",c.sequence).getClobVal()                                                                                              seq,
        XMLElement("osdm_at:ColumnName",c.column_name).getClobVal()                                                                                         column_name,
        XMLElement("osdm_at:PK",c.pk_flag).getClobVal()                                                                                                     pk,
        XMLElement("osdm_at:FK",c.fk_flag).getClobVal()                                                                                                     fk,
        XMLElement("osdm_at:M",DECODE(c.mandatory,'N',' ',c.mandatory)).getClobVal()                                                                        m,
        XMLElement("osdm_at:DataTypeKind",DECODE(c.datatype_kind,                                                                                           
                                                 'Domain',         'DOM',                                                                                   
                                                 'Logical Type',   'LT',                                                                                    
                                                 'Distinct Type',  'DT',                                                                                    
                                                 'Ref Struct Type','RST',                                                                                   
                                                 'Structured Type','ST',                                                                                    
                                                 'Collection Type','CT')                                                                                    
                  ).getClobVal()                                                                                                                             dt_kind,
         XMLElement("osdm_at:DataType", 
            DECODE(c.datatype_kind, 
                  'Domain', c.logical_type_name ||' '||
                           DECODE (NVL(c.t_size,''),'',
                              DECODE(NVL(c.t_scale,0),0,
                                 DECODE(NVL(c.t_precision,0),0,null,'('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) ||')'),
                                   '('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) || ',' || DECODE(NVL(c.t_scale,0),0,null,c.t_scale)||')'),
                                   '('||TRIM(DECODE(c.t_size,'',null,c.t_size||' '||c.char_units ))||')'),
                   'Logical Type', c.logical_type_name  ||' '|| 
                           DECODE (NVL(c.t_size,''),'',
                              DECODE(NVL(c.t_scale,0),0,
                                 DECODE(NVL(c.t_precision,0),0,null,'('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) ||')'),
                                   '('|| DECODE(NVL(c.t_precision,0),0,null,c.t_precision) || ',' || DECODE(NVL(c.t_scale,0),0,null,c.t_scale)||')'),
                                   '('||TRIM(DECODE(c.t_size,'',null,c.t_size||' '||c.char_units ))||')')
            ) ||
            DECODE (c.auto_increment_column,'Y', ' - AI','') ||
            DECODE (c.identity_column,'Y', ' - ID','')
          ).getClobVal()                                                                                                                                     data_type,
        XMLElement("osdm_at:DomainName",DECODE(c.domain_name,'Unknown',null,c.domain_name)).getClobVal()                                                     domain_name,
        XMLElement("osdm_at:Formula",TRIM(c.formula||' '||c.default_value)).getClobVal()                                                                     formula,
        XMLElement("osdm_at:Security",DECODE(c.personally_id_information ||'/'||c.sensitive_information||'/'||c.mask_for_none_production,'//',
                                      null,c.personally_id_information ||'/'||c.sensitive_information||'/'||c.mask_for_none_production)).getClobVal()        security,
        XMLElement("osdm_at:PreferredAbbreviation",c.abbreviation).getClobVal()                                                                              abbreviation,
        COUNT(c.column_name) over()                                                                                                                          total_row_count
 FROM 	dmrs_columns c
 WHERE  c.container_ovid = v_t_ovid
 ORDER BY c.sequence;
rec_columns cur_columns%ROWTYPE;

-- Columns Comments Data
CURSOR cur_columns_comments(v_t_ovid IN VARCHAR2) IS
 SELECT a.seq                       seq, 
        a.column_name               column_name, 
        a.description               description, 
        a.notes                     notes,
        COUNT(a.column_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_at:ColumnCommentsSequence",c.sequence).getStringVal()  seq,
         XMLElement("osdm_at:ColumnCommentsName",c.column_name).getStringVal()   column_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='CommentsInRDBMS'))                                       description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = c.ovid
         AND    t.type='Note')                                                   notes
  FROM   dmrs_columns c
  WHERE  c.container_ovid = v_t_ovid
  ORDER BY c.sequence
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_columns_comments cur_columns_comments%ROWTYPE;

--Indexes
CURSOR cur_indexes(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:IndexName",i.index_name).getClobVal()                                                                                        idx_name,
        XMLElement("osdm_at:IndexState",DECODE(i.state,'Unique Plain Index','UN','Unique Constraint','UK','Primary Constraint','PK',null)).getClobVal()  state,
        XMLElement("osdm_at:IndexFunctional",DECODE(i.functional,'N',' ',i.functional)).getClobVal()                                                     functional,
        XMLElement("osdm_at:IndexSpatial",DECODE(i.spatial_index,'N',' ',i.spatial_index)).getClobVal()                                                  spatial,
        XMLElement("osdm_at:IndexExpression",i.expression).getClobVal()                                                                                  expression,
        XMLElement("osdm_at:IndexColumnName",c.column_name).getClobVal()                                                                                 col_name,
        XMLElement("osdm_at:IndexSortOrder",c.sort_order).getClobVal()                                                                                   sort_order,
        c.sequence                                                                                                                                       idx_sequence,
        COUNT(c.column_name) over()                                                                                                                      total_row_count
 FROM   dmrs_tables t,
        dmrs_indexes i,
        dmrs_constr_index_columns c
 WHERE  t.ovid = i.container_ovid
 AND    i.ovid = c.index_ovid
 AND    t.ovid = v_t_ovid
 ORDER BY i.index_name, c.sequence, c.sort_order;
rec_indexes cur_indexes%ROWTYPE;

-- Table Level Constraints
CURSOR cur_tl_constraints(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:TLConstraintType", CASE WHEN rownum>1 THEN ''
                                               ELSE 'Table Level'
                                               END ).getClobVal()               c_type,
        XMLElement("osdm_at:TLConstraintName", tc.constraint_name).getClobVal() c_name,
        tc.text                                                                 c_details,
        COUNT(tc.constraint_name) over()                                        total_row_count
 FROM   dmrs_table_constraints tc
 WHERE  tc.table_ovid = v_t_ovid;
rec_tl_constraints cur_tl_constraints%ROWTYPE;

-- Column Level Constraints
CURSOR cur_cl_constraints(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:ContstraintType", CASE WHEN rownum>1 THEN ''
                                              ELSE 'Column Level'
                                              END).getClobVal()                                        c_type,
        XMLElement("osdm_at:ALCConstraintName", c.column_name || 
                                                DECODE((SELECT DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE c.ovid = dataelement_ovid),NULL,'',
                                               ' / '|| (SELECT  DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE c.ovid = dataelement_ovid))).getClobVal() c_name,
        Gather_Constraint_Details_XML(c.ovid, 'osdm_at')                                                c_details,
        COUNT(c.column_name) over()                                                                     total_row_count
 FROM   dmrs_columns c
 WHERE  c.container_ovid = v_t_ovid
 AND    (c.ovid IN (SELECT dataelement_ovid FROM dmrs_avt) OR 
         c.ovid IN (SELECT dataelement_ovid FROM dmrs_value_ranges) OR 
         c.ovid IN (SELECT dataelement_ovid FROM dmrs_check_constraints));
rec_cl_constraints cur_cl_constraints%ROWTYPE;

--Foreign keys referring to other tables
CURSOR cur_fk_referring_to(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:FKName",CASE WHEN ic.sequence>1 THEN ' '
                                    ELSE fk.fk_name
                                    END
                   ).getClobVal()                                               fk_name,
        XMLElement("osdm_at:FKReferringTo",CASE WHEN ic.sequence>1 THEN ' '
                                          ELSE fk.referred_table_name
                                          END
                  ).getClobVal()                                                referring_to,
        XMLElement("osdm_at:FKMandatory",CASE WHEN ic.sequence>1 THEN ' '
                                         ELSE DECODE(fk.mandatory,'Y',fk.mandatory,' ')
                                         END
                  ).getClobVal()                                                mandatory,
        XMLElement("osdm_at:FKTransferable",CASE WHEN ic.sequence>1 THEN ' '
                                            ELSE DECODE(fk.transferable,'Y',fk.transferable,' ')
                                            END
                  ).getClobVal()                                                transferable,
        XMLElement("osdm_at:FKInArc",CASE WHEN ic.sequence>1 THEN ' '
                                     ELSE DECODE(fk.in_arc,'Y',fk.in_arc,' ')
                                     END
                  ).getClobVal()                                                in_arc,
        XMLElement("osdm_at:FKColumnName",ic.column_name).getClobVal()          col_name,
        ic.sequence                                                             seq,
        COUNT(ic.column_name) over()                                            total_row_count
 FROM   dmrs_foreignkeys fk,
        dmrs_constr_index_columns ic
 WHERE  fk.child_table_ovid = v_t_ovid
 AND    fk.ovid = ic.index_ovid
 ORDER BY fk.referred_table_name,fk.fk_name, ic.sequence;
rec_fk_referring_to cur_fk_referring_to%ROWTYPE;

--Foreign keys referring from other tables
CURSOR cur_fk_referred_from(v_t_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_at:FKName",CASE WHEN ic.sequence>1 THEN ' '
                                    ELSE fk.fk_name
                                    END
                   ).getClobVal()                                               fk_name,
        XMLElement("osdm_at:FKReferredFrom",CASE WHEN ic.sequence>1 THEN ' '
                                           ELSE fk.child_table_name
                                           END
                  ).getClobVal()                                                referred_from,
        XMLElement("osdm_at:FKMandatory",CASE WHEN ic.sequence>1 THEN ' '
                                         ELSE DECODE(fk.mandatory,'Y',fk.mandatory,' ')
                                         END
                  ).getClobVal()                                                mandatory,
        XMLElement("osdm_at:FKTransferable",CASE WHEN ic.sequence>1 THEN ' '
                                            ELSE DECODE(fk.transferable,'Y',fk.transferable,' ')
                                            END
                  ).getClobVal()                                                transferable,
        XMLElement("osdm_at:FKInArc",CASE WHEN ic.sequence>1 THEN ' '
                                     ELSE DECODE(fk.in_arc,'Y',fk.in_arc,' ')
                                     END
                  ).getClobVal()                                                in_arc,
        XMLElement("osdm_at:FKColumnName",ic.column_name).getClobVal()          col_name,
        ic.sequence                                                             seq,
        COUNT(ic.column_name) over()                                            total_row_count
 FROM   dmrs_foreignkeys fk,
        dmrs_constr_index_columns ic
 WHERE  fk.referred_table_ovid = v_t_ovid
 AND    fk.ovid = ic.index_ovid
 ORDER BY fk.child_table_name,fk.fk_name, ic.sequence;
rec_fk_referred_from cur_fk_referred_from%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering all tables data started ...');

  DBMS_LOB.CREATETEMPORARY(res, TRUE);
  DBMS_LOB.APPEND (res,'<osdm_at:root xmlns:osdm_at="osdm_at">');

   -- Common Data
   FOR rec_common_data IN cur_common_data(v_model_ovid) LOOP

      DBMS_LOB.APPEND (res, rec_common_data.design_name);
      DBMS_LOB.APPEND (res, rec_common_data.version_date);  
      DBMS_LOB.APPEND (res, '<osdm_at:VersionComment>');
      DBMS_LOB.APPEND (res, '<osdm_at:VersionCommentDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
 
          SELECT XMLElement("osdm_at:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_at:VersionCommentDetails>');
      DBMS_LOB.APPEND (res, '</osdm_at:VersionComment>');
      DBMS_LOB.APPEND (res, rec_common_data.model_name);
 
   END LOOP;

   FOR rec_all_tables IN cur_all_tables(v_model_ovid) LOOP

      IF (cur_all_tables%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_at:TablesCollection>');
      END IF;
      
      DBMS_LOB.APPEND (res,'<osdm_at:TableDetails>');

      -- Description / Notes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
      
         DBMS_LOB.APPEND (res, '<osdm_at:DescriptionNotes>');
         
         SELECT 
               NVL(
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_tables.table_ovid
                   AND    t.type='Comments'),
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_tables.table_ovid
                   AND    t.type='CommentsInRDBMS'))        description, 
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_tables.table_ovid
                   AND    t.type='Note')                     notes
         INTO   v_description, 
                v_notes
         FROM  dual;
         
         DBMS_LOB.APPEND (res, '<osdm_at:Description>');
         DBMS_LOB.APPEND (res, '<osdm_at:DescriptionDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_at:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_at:DescriptionDetails>');
         DBMS_LOB.APPEND (res, '</osdm_at:Description>');
         
         DBMS_LOB.APPEND (res, '<osdm_at:Notes>');
         DBMS_LOB.APPEND (res, '<osdm_at:NotesDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_at:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_at:NotesDetails>');
         DBMS_LOB.APPEND (res, '</osdm_at:Notes>');
         DBMS_LOB.APPEND (res, '</osdm_at:DescriptionNotes>');
         
       END IF;

         DBMS_LOB.APPEND (res, rec_all_tables.table_name);
         DBMS_LOB.APPEND (res, rec_all_tables.functional_name);      
         DBMS_LOB.APPEND (res, rec_all_tables.abbreviation);
         DBMS_LOB.APPEND (res, rec_all_tables.class_type_name);
         DBMS_LOB.APPEND (res, rec_all_tables.obj_type_name);
       IF (reportTemplate.reportType = 0 OR reportTemplate.useQuantitativeInfo = 1) THEN
         DBMS_LOB.APPEND (res, '<osdm_at:QuantitativeInfoCollection>');
         DBMS_LOB.APPEND (res, rec_all_tables.number_cols);
         DBMS_LOB.APPEND (res, rec_all_tables.number_rows_min);
         DBMS_LOB.APPEND (res, rec_all_tables.number_rows_max);
         DBMS_LOB.APPEND (res, rec_all_tables.number_rows_expected);
         DBMS_LOB.APPEND (res, rec_all_tables.growth_expected);
         DBMS_LOB.APPEND (res, rec_all_tables.growth_interval);
         DBMS_LOB.APPEND (res, '</osdm_at:QuantitativeInfoCollection>');
       END IF;

       -- Columns
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableColumns = 1) THEN
         FOR rec_columns IN cur_columns(rec_all_tables.table_ovid) LOOP
            IF (cur_columns%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_at:ColumnsCollection>');
            END IF;

              DBMS_LOB.APPEND (res, '<osdm_at:ColumnDetails>');
              DBMS_LOB.APPEND (res, rec_columns.seq);
              DBMS_LOB.APPEND (res, rec_columns.column_name);
              DBMS_LOB.APPEND (res, rec_columns.pk);
              DBMS_LOB.APPEND (res, rec_columns.fk);
              DBMS_LOB.APPEND (res, rec_columns.m);
              IF (INSTR(LOWER(rec_columns.data_type),'unknown') = 0) THEN
                DBMS_LOB.APPEND (res, rec_columns.data_type);
              ELSE
                SELECT XMLElement("osdm_at:DataType", '').getClobVal() INTO token_value FROM dual;
                DBMS_LOB.APPEND (res, token_value);
              END IF;
              DBMS_LOB.APPEND (res, rec_columns.dt_kind);
              DBMS_LOB.APPEND (res, rec_columns.domain_name);
              DBMS_LOB.APPEND (res, rec_columns.formula);
              DBMS_LOB.APPEND (res, rec_columns.security);
              DBMS_LOB.APPEND (res, rec_columns.abbreviation);
              DBMS_LOB.APPEND (res,'</osdm_at:ColumnDetails>');

            IF (cur_columns%ROWCOUNT = rec_columns.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_at:ColumnsCollection>');
            END IF;
         END LOOP;
       END IF;

       -- Columns Comments
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableColumnsComments = 1) THEN
         FOR rec_columns_comments IN cur_columns_comments(rec_all_tables.table_ovid) LOOP
            IF (cur_columns_comments%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_at:ColumnsCommentsCollection>');
            END IF;

              DBMS_LOB.APPEND (res, '<osdm_at:ColumnCommentsDetails>');
              DBMS_LOB.APPEND (res, rec_columns_comments.seq);
              DBMS_LOB.APPEND (res, rec_columns_comments.column_name);

              DBMS_LOB.APPEND (res, '<osdm_at:ColumnDescription>');
              DBMS_LOB.APPEND (res, '<osdm_at:ColumnDescriptionDetails>');
              -- Tokenize rows
              FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_columns_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                               FROM   dual
                               CONNECT BY REGEXP_INSTR(rec_columns_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                  SELECT XMLElement("osdm_at:ColumnDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                  DBMS_LOB.APPEND (res, token_value);
              END LOOP;
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnDescriptionDetails>');
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnDescription>');

              DBMS_LOB.APPEND (res, '<osdm_at:ColumnNotes>');
              DBMS_LOB.APPEND (res, '<osdm_at:ColumnNotesDetails>');
              -- Tokenize rows
              FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_columns_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                               FROM   dual
                               CONNECT BY REGEXP_INSTR(rec_columns_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                  SELECT XMLElement("osdm_at:ColumnNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                  DBMS_LOB.APPEND (res, token_value);
              END LOOP;
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnNotesDetails>');
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnNotes>');

              DBMS_LOB.APPEND (res,'</osdm_at:ColumnCommentsDetails>');

            IF (cur_columns_comments%ROWCOUNT = rec_columns_comments.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnsCommentsCollection>');
            END IF;
         END LOOP;
       END IF;

       -- Indexes
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableIndexes = 1) THEN
       		FOR rec_indexes IN cur_indexes(rec_all_tables.table_ovid) LOOP
       		   IF (cur_indexes%ROWCOUNT = 1) THEN
       		     DBMS_LOB.APPEND (res,'<osdm_at:IndexesCollection>');
       		   END IF;

       		     DBMS_LOB.APPEND (res, '<osdm_at:IndexDetails>');
       		     DBMS_LOB.APPEND (res, rec_indexes.idx_name);
       		     DBMS_LOB.APPEND (res, rec_indexes.state);
       		     DBMS_LOB.APPEND (res, rec_indexes.functional);
       		     DBMS_LOB.APPEND (res, rec_indexes.spatial);
       		     DBMS_LOB.APPEND (res, rec_indexes.expression);
       		     DBMS_LOB.APPEND (res, rec_indexes.col_name);
       		     DBMS_LOB.APPEND (res, rec_indexes.sort_order);
       		     DBMS_LOB.APPEND (res,'</osdm_at:IndexDetails>');

       		   IF (cur_indexes%ROWCOUNT = rec_indexes.total_row_count) THEN
       		    DBMS_LOB.APPEND (res, '</osdm_at:IndexesCollection>');
       		   END IF;
       		END LOOP;
       END IF;

       v_cc_created := FALSE;
       -- Constraints
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableConstraints = 1) THEN
         -- Table Level Constraints
         FOR rec_tl_constraints IN cur_tl_constraints(rec_all_tables.table_ovid) LOOP
            IF (cur_tl_constraints%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_at:ConstraintsCollection>');
              v_cc_created := TRUE;
              DBMS_LOB.APPEND (res,'<osdm_at:TableLevelConstraintsCollection>');
            END IF;

              DBMS_LOB.APPEND (res, '<osdm_at:TableLevelConstraintDetails>');
              DBMS_LOB.APPEND (res, rec_tl_constraints.c_type);
              DBMS_LOB.APPEND (res, rec_tl_constraints.c_name);

              DBMS_LOB.APPEND (res, '<osdm_at:TLConstraintRule>');
              DBMS_LOB.APPEND (res, '<osdm_at:TLConstraintRuleDetails>');
              -- Tokenize rows
               FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR( rec_tl_constraints.c_details||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                              FROM   dual
                              CONNECT BY REGEXP_INSTR(rec_tl_constraints.c_details||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                   SELECT XMLElement("osdm_at:TLConstraintRuleRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                   DBMS_LOB.APPEND (res, token_value);
               END LOOP;
               DBMS_LOB.APPEND (res, '</osdm_at:TLConstraintRuleDetails>');       
               DBMS_LOB.APPEND (res, '</osdm_at:TLConstraintRule>');

               DBMS_LOB.APPEND (res, '</osdm_at:TableLevelConstraintDetails>');

            IF (cur_tl_constraints%ROWCOUNT = rec_tl_constraints.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_at:TableLevelConstraintsCollection>');
            END IF;

         END LOOP;

         -- Column Level Constraints
         FOR rec_cl_constraints IN cur_cl_constraints(rec_all_tables.table_ovid) LOOP
            IF (cur_cl_constraints%ROWCOUNT = 1) THEN
              IF NOT v_cc_created THEN
                 DBMS_LOB.APPEND (res,'<osdm_at:ConstraintsCollection>');
                 v_cc_created := TRUE;
              END IF;

             DBMS_LOB.APPEND (res,'<osdm_at:ColumnLevelConstraintsCollection>');
             v_cc_created := TRUE;
            END IF;

             DBMS_LOB.APPEND (res, '<osdm_at:ConstraintDetails>');
             DBMS_LOB.APPEND (res, rec_cl_constraints.c_type);
             DBMS_LOB.APPEND (res, rec_cl_constraints.c_name);
             DBMS_LOB.APPEND (res, rec_cl_constraints.c_details);
             DBMS_LOB.APPEND (res,'</osdm_at:ConstraintDetails>');

            IF (cur_cl_constraints%ROWCOUNT = rec_cl_constraints.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_at:ColumnLevelConstraintsCollection>');
            END IF;
         END LOOP;
         
         IF v_cc_created THEN
           DBMS_LOB.APPEND (res,'</osdm_at:ConstraintsCollection>');
         END IF;
       END IF;

       -- Foreign Keys Referring To
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableFKReferringTo = 1) THEN
         FOR rec_fk_referring_to IN cur_fk_referring_to(rec_all_tables.table_ovid) LOOP
            IF (cur_fk_referring_to%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_at:FKRTCollection>');
            END IF;
         
             DBMS_LOB.APPEND (res, '<osdm_at:FKRTDetails>');
             DBMS_LOB.APPEND (res, rec_fk_referring_to.fk_name);
             DBMS_LOB.APPEND (res, rec_fk_referring_to.referring_to);
             DBMS_LOB.APPEND (res, rec_fk_referring_to.mandatory);
             DBMS_LOB.APPEND (res, rec_fk_referring_to.transferable);
             DBMS_LOB.APPEND (res, rec_fk_referring_to.in_arc);
             DBMS_LOB.APPEND (res, rec_fk_referring_to.col_name);
             DBMS_LOB.APPEND (res,'</osdm_at:FKRTDetails>');
            
            IF (cur_fk_referring_to%ROWCOUNT = rec_fk_referring_to.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_at:FKRTCollection>');
            END IF;
         END LOOP;
      END IF;
         
       -- Foreign Keys Referred From
       IF (reportTemplate.reportType = 0 OR reportTemplate.useTableFKReferredFrom = 1) THEN         
         FOR rec_fk_referred_from IN cur_fk_referred_from(rec_all_tables.table_ovid) LOOP
            IF (cur_fk_referred_from%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_at:FKRFCollection>');
            END IF;
           
             DBMS_LOB.APPEND (res, '<osdm_at:FKRFDetails>');
             DBMS_LOB.APPEND (res, rec_fk_referred_from.fk_name);
             DBMS_LOB.APPEND (res, rec_fk_referred_from.referred_from);
             DBMS_LOB.APPEND (res, rec_fk_referred_from.mandatory);
             DBMS_LOB.APPEND (res, rec_fk_referred_from.transferable);
             DBMS_LOB.APPEND (res, rec_fk_referred_from.in_arc);
             DBMS_LOB.APPEND (res, rec_fk_referred_from.col_name);
             DBMS_LOB.APPEND (res,'</osdm_at:FKRFDetails>');

            IF (cur_fk_referred_from%ROWCOUNT = rec_fk_referred_from.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_at:FKRFCollection>');
            END IF;
         END LOOP;
       END IF;

      DBMS_LOB.APPEND (res,'</osdm_at:TableDetails>');

      IF (cur_all_tables%ROWCOUNT = rec_all_tables.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_at:TablesCollection>');
      END IF;

   END LOOP;

  DBMS_LOB.APPEND (res,'</osdm_at:root>');
  
  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering all tables data ended.');
	
RETURN res;
	
 EXCEPTION
  WHEN others THEN
   UTL_FILE.PUT_LINE(log_file, 'Gathering all tables Exception : : ' || SQLERRM);  
   UTL_FILE.PUT_LINE(log_file, 'Gathering all tables Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
  
END Gather_AllTables_Data;

FUNCTION Gather_SingleEntity_Data(v_entity_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;

CURSOR cur_general_data(v_e_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_e:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_e:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                comments,
        XMLElement("osdm_e:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m,
        dmrs_entities e
 WHERE  d.design_ovid = m.design_ovid
 AND    e.model_ovid = m.model_ovid
 AND    e.ovid = v_e_ovid;
rec_general_data cur_general_data%ROWTYPE;

CURSOR cur_entity(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:EntityName",e.entity_name).getClobVal()                                                                        entity_name,
        XMLElement("osdm_e:ClassificationTypeName",e.classification_type_name).getClobVal()                                               classification_type_name,
        XMLElement("osdm_e:Abbreviation",e.preferred_abbreviation).getClobVal()                                                           pref_abbreviation, 
        XMLElement("osdm_e:SuperType",(SELECT e1.entity_name FROM  dmrs_entities e1 WHERE e.supertypeentity_ovid = e1.ovid)).getClobVal() super_type,
        XMLElement("osdm_e:Synonyms", e.synonyms).getClobVal()                                                                            table_synonyms,
        XMLElement("osdm_e:ObjectTypeName",e.structured_type_name).getClobVal()                                                           object_type_name,
        XMLElement("osdm_e:NumberOfAttributes",e.number_data_elements).getClobVal()                                                       number_of_attributes, 
        XMLElement("osdm_e:NumberOfRowsMin",e.min_volume).getClobVal()                                                                    number_rows_min, 
        XMLElement("osdm_e:NumberOfRowsMax",e.max_volume).getClobVal()                                                                    number_rows_max, 
        XMLElement("osdm_e:ExpectedNumberOfRows",e.expected_volume).getClobVal()                                                          expected_number_of_rows, 
        XMLElement("osdm_e:ExpectedGrowth",e.growth_rate_percents).getClobVal()                                                           expected_growth,
        XMLElement("osdm_e:GrowthInterval",e.growth_rate_interval).getClobVal()                                                           growth_interval
 FROM   dmrs_entities e
 WHERE  e.ovid = v_e_ovid;
rec_entity cur_entity%ROWTYPE;

CURSOR cur_mapped_tables(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:TableName",t.model_name||'.'||t.table_name).getClobVal() table_name,
        COUNT(t.table_name) over()                                total_row_count
 FROM   dmrs_entities e,
        dmrs_tables t,
        dmrs_mappings m
 WHERE  m.relational_object_ovid = t.ovid
 AND    m.logical_object_ovid = e.ovid
 AND    e.ovid = v_e_ovid;
rec_mapped_tables cur_mapped_tables%ROWTYPE;

CURSOR cur_attributes(v_e_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_e:Sequence",a.sequence).getClobVal()                                                                                             seq, 
         XMLElement("osdm_e:AttributeName",a.attribute_name).getClobVal()                                                                                  attr_name,
         XMLElement("osdm_e:DataTypeKind",DECODE(a.datatype_kind,
                                                 'Domain',         'DOM',
                                                 'Logical Type',   'LT',
                                                 'Distinct Type',  'DT',
                                                 'Ref Struct Type','RST',
                                                 'Structured Type','ST',
                                                 'Collection Type','CT')                                                                                
                   ).getClobVal()                                                                                                                           dt_kind,
         XMLElement("osdm_e:DomainName",DECODE(a.domain_name,'Unknown',null,a.domain_name)).getClobVal()                                                   domain_name,
         XMLElement("osdm_e:DataType", 
            DECODE(a.datatype_kind, 
                  'Domain', a.logical_type_name ||' '||
                           DECODE (NVL(a.t_size,''),'',
                              DECODE(NVL(a.t_scale,0),0,
                                 DECODE(NVL(a.t_precision,0),0,null,'('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) ||')'),
                                   '('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) || ',' || DECODE(NVL(a.t_scale,0),0,null,a.t_scale)||')'),
                                   '('||TRIM(DECODE(a.t_size,'',null,a.t_size||' '||a.char_units ))||')'),
                   'Logical Type', a.logical_type_name  ||' '|| 
                           DECODE (NVL(a.t_size,''),'',
                              DECODE(NVL(a.t_scale,0),0,
                                 DECODE(NVL(a.t_precision,0),0,null,'('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) ||')'),
                                   '('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) || ',' || DECODE(NVL(a.t_scale,0),0,null,a.t_scale)||')'),
                                   '('||TRIM(DECODE(a.t_size,'',null,a.t_size||' '||a.char_units ))||')')
            )
          ).getClobVal()                                                                                                                                   data_type,
         XMLElement("osdm_e:PK",a.pk_flag).getClobVal()                                                                                                    pk,
         XMLElement("osdm_e:FK",a.fk_flag).getClobVal()                                                                                                    fk,
         XMLElement("osdm_e:M",DECODE(a.mandatory,'N',' ',a.mandatory)).getClobVal()                                                                       m,
         XMLElement("osdm_e:Formula",TRIM(a.formula||' '||a.default_value)).getClobVal()                                                                   formula,
         XMLElement("osdm_e:AttributeSynonyms",a.synonyms).getClobVal()                                                                                    synonyms,
         XMLElement("osdm_e:PreferredAbbreviation",a.preferred_abbreviation).getClobVal()                                                                  pref_abbr,
         COUNT(a.sequence) over()                                                                                                                           total_row_count
  FROM   dmrs_attributes a
  WHERE  a.container_ovid = v_e_ovid
  ORDER BY a.sequence;
rec_attributes cur_attributes%ROWTYPE;

-- Attributes Comments Data
CURSOR cur_attributes_comments(v_e_ovid IN VARCHAR2) IS
 SELECT a.seq                          seq, 
        a.attribute_name               attribute_name, 
        a.description                  description, 
        a.notes                        notes,
        COUNT(a.attribute_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_e:AttributeCommentsSequence",a.sequence).getStringVal()  seq,
         XMLElement("osdm_e:AttributeCommentsName",a.attribute_name).getStringVal()   attribute_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='CommentsInRDBMS'))  description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='Note')              notes
  FROM   dmrs_entities e, 
         dmrs_attributes a
  WHERE  e.ovid = a.container_ovid
  and    e.ovid = v_e_ovid
  ORDER BY a.sequence
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_attributes_comments cur_attributes_comments%ROWTYPE;

CURSOR cur_identifiers(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:IdentifierName",CASE WHEN ke.sequence>1 THEN ' ' ELSE ke.key_name END).getClobVal()                          nn,
        XMLElement("osdm_e:PrimaryIdentifier",CASE WHEN ke.sequence>1 THEN ' ' ELSE DECODE(k.state,'Primary Key','Y') END).getClobVal() pi, 
        XMLElement("osdm_e:ElementName",ke.element_name).getClobVal()                                                                   element_name,
        XMLElement("osdm_e:ElementType",ke.type).getClobVal()                                                                           type,
        XMLElement("osdm_e:SourceLabel",ke.source_label).getClobVal()                                                                   source_label,
        XMLElement("osdm_e:TargetLabel",ke.target_label).getClobVal()                                                                   target_label,
        COUNT(ke.sequence) over()                                                                                                        total_row_count
 FROM   dmrs_keys          k,
        dmrs_key_elements ke
 WHERE  k.container_ovid = v_e_ovid
 AND   ke.key_ovid = k.ovid
 ORDER BY ke.sequence;
rec_identifiers cur_identifiers%ROWTYPE;

CURSOR cur_relationships(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:SourceName",r.target_entity_name).getClobVal()                                                                  source_name, 
        XMLElement("osdm_e:SourceRole",r.source_label).getClobVal()                                                                        source_role,
        XMLElement("osdm_e:TargetRole",r.target_label).getClobVal()                                                                        target_role,
        XMLElement("osdm_e:InArc",DECODE(r.in_arc,'N','',r.in_arc)).getClobVal()                                                           in_arc,
        XMLElement("osdm_e:Cardinality",
           DECODE(r.source_optional,'Y',0,'1') || '..' || r.sourceto_target_cardinality
           ||':'||
           DECODE(r.target_optional,'Y',0,'1') || '..' || r.targetto_source_cardinality
           ).getClobVal()                                                                                                                  cardinality,
        XMLElement("osdm_e:DominantRole",DECODE(r.dominant_role,'None','')).getClobVal()                                                   dominant_role,
        XMLElement("osdm_e:Identifying",DECODE(r.identifying,'N','',r.identifying)).getClobVal()                                           identifying,
        XMLElement("osdm_e:Transferable",DECODE(r.transferable,'N','',r.transferable)).getClobVal()                                        transferable
 FROM   dmrs_relationships r
 WHERE  r.source_ovid  = v_e_ovid
 UNION ALL
 SELECT XMLElement("osdm_e:SourceName",r.source_entity_name).getClobVal()                                                                  source_name, 
        XMLElement("osdm_e:SourceRole",r.source_label).getClobVal()                                                                        source_role,
        XMLElement("osdm_e:TargetRole",r.target_label).getClobVal()                                                                        target_role,
        XMLElement("osdm_e:InArc",DECODE(r.in_arc,'N','',r.in_arc)).getClobVal()                                                           in_arc,
        XMLElement("osdm_e:Cardinality",
           DECODE(r.source_optional,'Y',0,'1') || '..' || r.sourceto_target_cardinality
           ||':'||
           DECODE(r.target_optional,'Y',0,'1') || '..' || r.targetto_source_cardinality
           ).getClobVal()                                                                                                                  cardinality,
        XMLElement("osdm_e:DominantRole",DECODE(r.dominant_role,'None','')).getClobVal()                                                   dominant_role,
        XMLElement("osdm_e:Identifying",DECODE(r.identifying,'N','',r.identifying)).getClobVal()                                           identifying,
        XMLElement("osdm_e:Transferable",DECODE(r.transferable,'N','',r.transferable)).getClobVal()                                        transferable
 FROM   dmrs_relationships r
 WHERE  r.target_ovid  = v_e_ovid;
rec_relationships cur_relationships%ROWTYPE;

CURSOR cur_incoming_processes(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:IncomingProcessName", NVL(pe.process_name,' ')).getClobVal()  ipr_name,
         XMLElement("osdm_e:IncomingFlowName", NVL(pe.flow_name,' ')).getClobVal()       ipr_flow_name,
         XMLElement("osdm_e:IncomingCRUDCode", NVL(pe.crud_code,' ')).getClobVal()       ipr_crud_code,
         XMLElement("osdm_e:IncomingDFDName", NVL(pe.dfd_name,' ')).getClobVal()         ipr_dfd_name,
         COUNT(pe.process_name) over()                                                    total_row_count
  FROM   dmrs_process_entities pe
  WHERE  pe.entity_ovid = v_e_ovid
  AND    pe.flow_direction = 'IN'
  ORDER BY pe.process_name;
rec_incoming_processes cur_incoming_processes%ROWTYPE;

CURSOR cur_outgoing_processes(v_e_ovid IN VARCHAR2) IS
  SELECT XMLElement("osdm_e:OutgoingProcessName", pe.process_name).getClobVal() opr_name,
         XMLElement("osdm_e:OutgoingFlowName", pe.flow_name).getClobVal()       opr_flow_name,
         XMLElement("osdm_e:OutgoingCRUDCode", pe.crud_code).getClobVal()       opr_crud_code,
         XMLElement("osdm_e:OutgoingDFDName", pe.dfd_name).getClobVal()         opr_dfd_name,
         COUNT(pe.process_name) over()                                           total_row_count
  FROM   dmrs_process_entities pe
  WHERE  pe.entity_ovid = v_e_ovid
  AND    pe.flow_direction = 'OUT'
  ORDER BY pe.process_name;
rec_outgoing_processes cur_outgoing_processes%ROWTYPE;

-- Constraints
CURSOR cur_constraints(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_e:ContstraintType", CASE WHEN rownum>1 THEN ''
                                              ELSE 'Attribute Level'
                                              END).getClobVal()                                        c_type,
        XMLElement("osdm_e:ALCConstraintName", a.attribute_name || 
                                                DECODE((SELECT DISTINCT(constraint_name)
                                                        FROM dmrs_check_constraints 
                                                        WHERE a.ovid = dataelement_ovid),NULL,'',
                                               ' / '|| (SELECT  DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE a.ovid = dataelement_ovid))).getClobVal() c_name,
        Gather_Constraint_Details_XML(a.ovid, 'osdm_e')                                                 c_details,
        COUNT(a.attribute_name) over()                                                                  total_row_count
 FROM   dmrs_attributes a
 WHERE a.container_ovid = v_e_ovid
 AND  (a.ovid IN (SELECT dataelement_ovid FROM dmrs_avt) OR 
       a.ovid IN (SELECT dataelement_ovid FROM dmrs_value_ranges) OR 
       a.ovid IN (SELECT dataelement_ovid FROM dmrs_check_constraints));
rec_constraints cur_constraints%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering single entity data started ...');

  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_e:root xmlns:osdm_e="osdm_e">');

   FOR rec_general_data IN cur_general_data(v_entity_ovid) LOOP
   
      DBMS_LOB.APPEND (res, rec_general_data.design_name);
      DBMS_LOB.APPEND (res, rec_general_data.version_date);
   
      DBMS_LOB.APPEND (res, '<osdm_e:VersionComment>');
      DBMS_LOB.APPEND (res, '<osdm_e:VersionCommentDetails>');
         -- Tokenize rows
        FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                       FROM   dual
                       CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
            SELECT XMLElement("osdm_e:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
            DBMS_LOB.APPEND (res, token_value);
        END LOOP;
          
        DBMS_LOB.APPEND (res, '</osdm_e:VersionCommentDetails>');
        DBMS_LOB.APPEND (res, '</osdm_e:VersionComment>');       
      
        DBMS_LOB.APPEND (res, rec_general_data.model_name);
   END LOOP;

   -- Mapped tables
   FOR rec_mapped_tables IN cur_mapped_tables(v_entity_ovid) LOOP
      IF (cur_mapped_tables%ROWCOUNT = 1) THEN
        DBMS_LOB.APPEND (res,'<osdm_e:MappedTablesCollection>');
      END IF;

        DBMS_LOB.APPEND (res, '<osdm_e:MappedTablesDetails>');
        DBMS_LOB.APPEND (res, rec_mapped_tables.table_name);
        DBMS_LOB.APPEND (res, '</osdm_e:MappedTablesDetails>');

      IF (cur_mapped_tables%ROWCOUNT = rec_mapped_tables.total_row_count) THEN
        DBMS_LOB.APPEND (res, '</osdm_e:MappedTablesCollection>');
      END IF;
   END LOOP;

   -- Description / Notes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
   
     DBMS_LOB.APPEND (res, '<osdm_e:DescriptionNotes>');
     
     SELECT NVL(
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_entity_ovid
               AND    t.type='Comments'),
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_entity_ovid
               AND    t.type='CommentsInRDBMS'))                      description, 
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_entity_ovid
              AND    t.type='Note')                                   notes
     INTO   v_description, 
            v_notes
     FROM dual;
     
     DBMS_LOB.APPEND (res, '<osdm_e:Description>');
     DBMS_LOB.APPEND (res, '<osdm_e:DescriptionDetails>');
     -- Tokenize rows
     FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                    FROM   dual
                    CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
         SELECT XMLElement("osdm_e:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
         DBMS_LOB.APPEND (res, token_value);
     END LOOP;
     DBMS_LOB.APPEND (res, '</osdm_e:DescriptionDetails>');
     DBMS_LOB.APPEND (res, '</osdm_e:Description>');
     
     DBMS_LOB.APPEND (res, '<osdm_e:Notes>');
     DBMS_LOB.APPEND (res, '<osdm_e:NotesDetails>');
     -- Tokenize rows
     FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                    FROM   dual
                    CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
         SELECT XMLElement("osdm_e:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
         DBMS_LOB.APPEND (res, token_value);
     END LOOP;
     DBMS_LOB.APPEND (res, '</osdm_e:NotesDetails>');
     DBMS_LOB.APPEND (res, '</osdm_e:Notes>');
     DBMS_LOB.APPEND (res, '</osdm_e:DescriptionNotes>');
     
   END IF;

   FOR rec_entity IN cur_entity(v_entity_ovid) LOOP
      DBMS_LOB.APPEND (res, rec_entity.entity_name);
      DBMS_LOB.APPEND (res, rec_entity.pref_abbreviation);      
      DBMS_LOB.APPEND (res, rec_entity.classification_type_name);
      DBMS_LOB.APPEND (res, rec_entity.object_type_name);
      DBMS_LOB.APPEND (res, rec_entity.super_type);
      DBMS_LOB.APPEND (res, rec_entity.table_synonyms);
      IF (reportTemplate.reportType = 0 OR reportTemplate.useQuantitativeInfo = 1) THEN
        DBMS_LOB.APPEND (res, '<osdm_e:QuantitativeInfoCollection>');
        DBMS_LOB.APPEND (res, rec_entity.number_of_attributes);
        DBMS_LOB.APPEND (res, rec_entity.number_rows_min);
        DBMS_LOB.APPEND (res, rec_entity.number_rows_max);
        DBMS_LOB.APPEND (res, rec_entity.expected_number_of_rows);
        DBMS_LOB.APPEND (res, rec_entity.expected_growth);
        DBMS_LOB.APPEND (res, rec_entity.growth_interval);
        DBMS_LOB.APPEND (res, '</osdm_e:QuantitativeInfoCollection>');
      END IF;
   END LOOP;

   -- Attributes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityAttributes = 1) THEN
     FOR rec_attributes IN cur_attributes(v_entity_ovid) LOOP
        IF (cur_attributes%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_e:AttributesCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_e:AttributeDetails>');
          DBMS_LOB.APPEND (res, rec_attributes.seq);
          DBMS_LOB.APPEND (res, rec_attributes.attr_name);
          DBMS_LOB.APPEND (res, rec_attributes.pk);
          DBMS_LOB.APPEND (res, rec_attributes.fk);
          DBMS_LOB.APPEND (res, rec_attributes.m);
          IF (INSTR(LOWER(rec_attributes.data_type),'unknown') = 0) THEN
             DBMS_LOB.APPEND (res, rec_attributes.data_type);
          ELSE
             SELECT XMLElement("osdm_e:DataType", '').getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END IF;
          DBMS_LOB.APPEND (res, rec_attributes.dt_kind);
          DBMS_LOB.APPEND (res, rec_attributes.domain_name);
          DBMS_LOB.APPEND (res, rec_attributes.formula);
          DBMS_LOB.APPEND (res, rec_attributes.pref_abbr);
          DBMS_LOB.APPEND (res, rec_attributes.synonyms);
          DBMS_LOB.APPEND (res,'</osdm_e:AttributeDetails>');

        IF (cur_attributes%ROWCOUNT = rec_attributes.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_e:AttributesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Attribute Comments
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityAttributesComments = 1) THEN
     FOR rec_attributes_comments IN cur_attributes_comments(v_entity_ovid) LOOP
        IF (cur_attributes_comments%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_e:AttributesCommentsCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_e:AttributeCommentsDetails>');
          DBMS_LOB.APPEND (res, rec_attributes_comments.seq);
          DBMS_LOB.APPEND (res, rec_attributes_comments.attribute_name);

          DBMS_LOB.APPEND (res, '<osdm_e:AttributeDescription>');
          DBMS_LOB.APPEND (res, '<osdm_e:AttributeDescriptionDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                         FROM   dual
                         CONNECT BY REGEXP_INSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
              SELECT XMLElement("osdm_e:AttributeDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_e:AttributeDescriptionDetails>');
          DBMS_LOB.APPEND (res, '</osdm_e:AttributeDescription>');

          DBMS_LOB.APPEND (res, '<osdm_e:AttributeNotes>');
          DBMS_LOB.APPEND (res, '<osdm_e:AttributeNotesDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                         FROM   dual
                         CONNECT BY REGEXP_INSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                         
              SELECT XMLElement("osdm_e:AttributeNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_e:AttributeNotesDetails>');
          DBMS_LOB.APPEND (res, '</osdm_e:AttributeNotes>');

          DBMS_LOB.APPEND (res,'</osdm_e:AttributeCommentsDetails>');

        IF (cur_attributes_comments%ROWCOUNT = rec_attributes_comments.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_e:AttributesCommentsCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Constraints
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityConstraints = 1) THEN
     FOR rec_constraints IN cur_constraints(v_entity_ovid) LOOP
        IF (cur_constraints%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_e:ConstraintsCollection>');
        END IF;

          DBMS_LOB.APPEND (res,'<osdm_e:ConstraintDetails>');
          DBMS_LOB.APPEND (res,rec_constraints.c_type);
          DBMS_LOB.APPEND (res,rec_constraints.c_name);
          DBMS_LOB.APPEND (res,rec_constraints.c_details);
          DBMS_LOB.APPEND (res,'</osdm_e:ConstraintDetails>');

        IF (cur_constraints%ROWCOUNT = rec_constraints.total_row_count) THEN
            DBMS_LOB.APPEND (res,'</osdm_e:ConstraintsCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Identifiers
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityIdentifiers = 1) THEN
     FOR rec_identifiers IN cur_identifiers(v_entity_ovid) LOOP
        IF (cur_identifiers%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res, '<osdm_e:IdentifiersCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_e:IdentifierDetails>');
          DBMS_LOB.APPEND (res, rec_identifiers.nn);
          DBMS_LOB.APPEND (res, rec_identifiers.pi);
          DBMS_LOB.APPEND (res, rec_identifiers.element_name);
          DBMS_LOB.APPEND (res, rec_identifiers.type);
          DBMS_LOB.APPEND (res, rec_identifiers.source_label);
          DBMS_LOB.APPEND (res, rec_identifiers.target_label);
          DBMS_LOB.APPEND (res, '</osdm_e:IdentifierDetails>');

        IF (cur_identifiers%ROWCOUNT = rec_identifiers.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_e:IdentifiersCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Relationships
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityRelationships = 1) THEN
     -- Total count of relationships
     SELECT COUNT(1)
     INTO   v_rel_total_count
     FROM (
      SELECT r.ovid
      FROM   dmrs_relationships r,
             dmrs_entities      e
      WHERE  r.source_ovid  = e.ovid
      AND    e.ovid         = v_entity_ovid
      UNION ALL
      SELECT r.ovid
      FROM   dmrs_relationships r,
             dmrs_entities      e
      WHERE  r.target_ovid  = e.ovid
      AND    e.ovid         = v_entity_ovid);

     FOR rec_relationships IN cur_relationships(v_entity_ovid) LOOP
        IF (cur_relationships%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res, '<osdm_e:RelationshipsCollection>');
        END IF;
     
           DBMS_LOB.APPEND (res, '<osdm_e:RelationshipDetails>');
           DBMS_LOB.APPEND (res, rec_relationships.source_name);
           DBMS_LOB.APPEND (res, rec_relationships.source_role);
           DBMS_LOB.APPEND (res, rec_relationships.target_role);
           DBMS_LOB.APPEND (res, rec_relationships.in_arc);
           DBMS_LOB.APPEND (res, rec_relationships.cardinality);
           DBMS_LOB.APPEND (res, rec_relationships.dominant_role);
           DBMS_LOB.APPEND (res, rec_relationships.identifying);
           DBMS_LOB.APPEND (res, rec_relationships.transferable);
           DBMS_LOB.APPEND (res, '</osdm_e:RelationshipDetails>');

        IF (cur_relationships%ROWCOUNT = v_rel_total_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_e:RelationshipsCollection>');
        END IF;
     
     END LOOP;
   END IF;

   -- Incoming Processes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityIncomingProcesses = 1) THEN
     FOR rec_incoming_processes IN cur_incoming_processes(v_entity_ovid) LOOP
        IF (cur_incoming_processes%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res, '<osdm_e:IncomingProcessesCollection>');
        END IF;
          DBMS_LOB.APPEND (res, '<osdm_e:IncomingProcessDetails>');
          DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_name);
          DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_flow_name);
          DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_crud_code);
          DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_dfd_name);
          DBMS_LOB.APPEND (res, '</osdm_e:IncomingProcessDetails>');
        IF (cur_incoming_processes%ROWCOUNT = rec_incoming_processes.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_e:IncomingProcessesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Outgoing Processes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityOutgoingProcesses = 1) THEN
     FOR rec_outgoing_processes IN cur_outgoing_processes(v_entity_ovid) LOOP
        IF (cur_outgoing_processes%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res, '<osdm_e:OutgoingProcessesCollection>');
        END IF;
          DBMS_LOB.APPEND (res, '<osdm_e:OugoingProcessDetails>');
          DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_name);
          DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_flow_name);
          DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_crud_code);
          DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_dfd_name);
          DBMS_LOB.APPEND (res, '</osdm_e:OugoingProcessDetails>');
        IF (cur_outgoing_processes%ROWCOUNT = rec_outgoing_processes.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_e:OutgoingProcessesCollection>');
        END IF;
     END LOOP;
  END IF;

  DBMS_LOB.APPEND (res,'</osdm_e:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering single entity data ended');
  
RETURN res;

 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleEntity_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleEntity_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_SingleEntity_Data;

FUNCTION Gather_AllEntities_Data(v_model_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;

CURSOR cur_general_data(v_m_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_ae:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_ae:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                 comments,
        XMLElement("osdm_ae:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m
 WHERE  d.design_ovid = m.design_ovid
 AND    m.model_ovid = v_model_ovid;
rec_general_data cur_general_data%ROWTYPE;

CURSOR cur_all_entities(v_m_ovid IN VARCHAR2) IS
 SELECT /*+ index(e ENTITIES_FK_IDXV1) */
        XMLElement("osdm_ae:EntityName",e.entity_name).getClobVal()                                                                        entity_name,
        XMLElement("osdm_ae:ClassificationTypeName",e.classification_type_name).getClobVal()                                               classification_type_name,
        XMLElement("osdm_ae:Abbreviation",e.preferred_abbreviation).getClobVal()                                                           pref_abbreviation, 
        XMLElement("osdm_ae:SuperType",(SELECT e1.entity_name FROM  dmrs_entities e1 WHERE e.supertypeentity_ovid = e1.ovid)).getClobVal() super_type,
        XMLElement("osdm_ae:Synonyms", e.synonyms).getClobVal()                                                                            table_synonyms,
        XMLElement("osdm_ae:ObjectTypeName",e.structured_type_name).getClobVal()                                                           object_type_name,
        XMLElement("osdm_ae:NumberOfAttributes",e.number_data_elements).getClobVal()                                                       number_of_attributes, 
        XMLElement("osdm_ae:NumberOfRowsMin",e.min_volume).getClobVal()                                                                    number_rows_min, 
        XMLElement("osdm_ae:NumberOfRowsMax",e.max_volume).getClobVal()                                                                    number_rows_max, 
        XMLElement("osdm_ae:ExpectedNumberOfRows",e.expected_volume).getClobVal()                                                          expected_number_of_rows, 
        XMLElement("osdm_ae:ExpectedGrowth",e.growth_rate_percents).getClobVal()                                                           expected_growth,
        XMLElement("osdm_ae:GrowthInterval",e.growth_rate_interval).getClobVal()                                                           growth_interval,
        e.ovid                                                                                                                             entity_ovid,
        COUNT(e.entity_name) over() total_row_count
 FROM   dmrs_entities    e
 WHERE  e.model_ovid = v_m_ovid;
rec_all_entities cur_all_entities%ROWTYPE;

CURSOR cur_mapped_tables(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ae:TableName",t.model_name||'.'||t.table_name).getClobVal() table_name,
        COUNT(t.table_name) over()                                total_row_count
 FROM   dmrs_entities e,
        dmrs_tables t,
        dmrs_mappings m
 WHERE  m.relational_object_ovid = t.ovid
 AND    m.logical_object_ovid = e.ovid
 AND    e.ovid = v_e_ovid;
rec_mapped_tables cur_mapped_tables%ROWTYPE;

CURSOR cur_attributes(v_e_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_ae:Sequence",a.sequence).getClobVal()                                                                                              seq, 
         XMLElement("osdm_ae:AttributeName",a.attribute_name).getClobVal()                                                                                  attr_name,
         XMLElement("osdm_ae:DataTypeKind",DECODE(a.datatype_kind,
                                                 'Domain',         'DOM',
                                                 'Logical Type',   'LT',
                                                 'Distinct Type',  'DT',
                                                 'Ref Struct Type','RST',
                                                 'Structured Type','ST',
                                                 'Collection Type','CT')                                                                                
                   ).getClobVal()                                                                                                                           dt_kind,
         XMLElement("osdm_ae:DomainName",DECODE(a.domain_name,'Unknown',null,a.domain_name)).getClobVal()                                                   domain_name,
         XMLElement("osdm_ae:DataType", 
            DECODE(a.datatype_kind, 
                  'Domain', a.logical_type_name ||' '||
                           DECODE (NVL(a.t_size,''),'',
                              DECODE(NVL(a.t_scale,0),0,
                                 DECODE(NVL(a.t_precision,0),0,null,'('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) ||')'),
                                   '('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) || ',' || DECODE(NVL(a.t_scale,0),0,null,a.t_scale)||')'),
                                   '('||TRIM(DECODE(a.t_size,'',null,a.t_size||' '||a.char_units ))||')'),
                   'Logical Type', a.logical_type_name  ||' '|| 
                           DECODE (NVL(a.t_size,''),'',
                              DECODE(NVL(a.t_scale,0),0,
                                 DECODE(NVL(a.t_precision,0),0,null,'('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) ||')'),
                                   '('|| DECODE(NVL(a.t_precision,0),0,null,a.t_precision) || ',' || DECODE(NVL(a.t_scale,0),0,null,a.t_scale)||')'),
                                   '('||TRIM(DECODE(a.t_size,'',null,a.t_size||' '||a.char_units ))||')')
            )
          ).getClobVal()                                                                                                                                    data_type,
         XMLElement("osdm_ae:PK",a.pk_flag).getClobVal()                                                                                                    pk,
         XMLElement("osdm_ae:FK",a.fk_flag).getClobVal()                                                                                                    fk,
         XMLElement("osdm_ae:M",DECODE(a.mandatory,'N',' ',a.mandatory)).getClobVal()                                                                       m,
         XMLElement("osdm_ae:Formula",TRIM(a.formula||' '||a.default_value)).getClobVal()                                                                   formula,
         XMLElement("osdm_ae:AttributeSynonyms",a.synonyms).getClobVal()                                                                                    synonyms,
         XMLElement("osdm_ae:PreferredAbbreviation",a.preferred_abbreviation).getClobVal()                                                                  pref_abbr,
         COUNT(a.sequence) over()                                                                                                                           total_row_count
  FROM   dmrs_attributes a
  WHERE  a.container_ovid = v_e_ovid
  ORDER BY a.sequence;
rec_attributes cur_attributes%ROWTYPE;

-- Attributes Comments Data
CURSOR cur_attributes_comments(v_e_ovid IN VARCHAR2) IS
 SELECT a.seq                          seq, 
        a.attribute_name               attribute_name, 
        a.description                  description, 
        a.notes                        notes,
        COUNT(a.attribute_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_ae:AttributeCommentsSequence",a.sequence).getStringVal()  seq,
         XMLElement("osdm_ae:AttributeCommentsName",a.attribute_name).getStringVal()   attribute_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='CommentsInRDBMS'))  description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.ovid
         AND    t.type='Note')              notes
  FROM   dmrs_entities e, 
         dmrs_attributes a
  WHERE  e.ovid = a.container_ovid
  and    e.ovid = v_e_ovid
  ORDER BY a.sequence
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_attributes_comments cur_attributes_comments%ROWTYPE;

CURSOR cur_identifiers(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ae:IdentifierName",CASE WHEN ke.sequence>1 THEN ' ' ELSE ke.key_name END).getClobVal()                          nn,
        XMLElement("osdm_ae:PrimaryIdentifier",CASE WHEN ke.sequence>1 THEN ' ' ELSE DECODE(k.state,'Primary Key','Y') END).getClobVal() pi, 
        XMLElement("osdm_ae:ElementName",ke.element_name).getClobVal()                                                                   element_name,
        XMLElement("osdm_ae:ElementType",ke.type).getClobVal()                                                                           type,
        XMLElement("osdm_ae:SourceLabel",ke.source_label).getClobVal()                                                                   source_label,
        XMLElement("osdm_ae:TargetLabel",ke.target_label).getClobVal()                                                                   target_label,
        COUNT(ke.sequence) over()                                                                                                        total_row_count
 FROM   dmrs_keys          k,
        dmrs_key_elements ke
 WHERE  k.container_ovid = v_e_ovid
 AND   ke.key_ovid = k.ovid
 ORDER BY ke.sequence;
rec_identifiers cur_identifiers%ROWTYPE;

CURSOR cur_relationships(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ae:SourceName",r.target_entity_name).getClobVal()                                                                  source_name, 
        XMLElement("osdm_ae:SourceRole",r.source_label).getClobVal()                                                                        source_role,
        XMLElement("osdm_ae:TargetRole",r.target_label).getClobVal()                                                                        target_role,
        XMLElement("osdm_ae:InArc",DECODE(r.in_arc,'N','',r.in_arc)).getClobVal()                                                           in_arc,
        XMLElement("osdm_ae:Cardinality",
           DECODE(r.source_optional,'Y',0,'1') || '..' || r.sourceto_target_cardinality
           ||':'||
           DECODE(r.target_optional,'Y',0,'1') || '..' || r.targetto_source_cardinality
           ).getClobVal()                                                                                                                   cardinality,
        XMLElement("osdm_ae:DominantRole",DECODE(r.dominant_role,'None','')).getClobVal()                                                   dominant_role,
        XMLElement("osdm_ae:Identifying",DECODE(r.identifying,'N','',r.identifying)).getClobVal()                                           identifying,
        XMLElement("osdm_ae:Transferable",DECODE(r.transferable,'N','',r.transferable)).getClobVal()                                        transferable
 FROM   dmrs_relationships r
 WHERE  r.source_ovid  = v_e_ovid
 UNION ALL
 SELECT XMLElement("osdm_ae:SourceName",r.source_entity_name).getClobVal()                                                                  source_name, 
        XMLElement("osdm_ae:SourceRole",r.source_label).getClobVal()                                                                        source_role,
        XMLElement("osdm_ae:TargetRole",r.target_label).getClobVal()                                                                        target_role,
        XMLElement("osdm_ae:InArc",DECODE(r.in_arc,'N','',r.in_arc)).getClobVal()                                                           in_arc,
        XMLElement("osdm_ae:Cardinality",
           DECODE(r.source_optional,'Y',0,'1') || '..' || r.sourceto_target_cardinality
           ||':'||
           DECODE(r.target_optional,'Y',0,'1') || '..' || r.targetto_source_cardinality
           ).getClobVal()                                                                                                                   cardinality,
        XMLElement("osdm_ae:DominantRole",DECODE(r.dominant_role,'None','')).getClobVal()                                                   dominant_role,
        XMLElement("osdm_ae:Identifying",DECODE(r.identifying,'N','',r.identifying)).getClobVal()                                           identifying,
        XMLElement("osdm_ae:Transferable",DECODE(r.transferable,'N','',r.transferable)).getClobVal()                                        transferable
 FROM   dmrs_relationships r
 WHERE  r.target_ovid  = v_e_ovid;
rec_relationships cur_relationships%ROWTYPE;

CURSOR cur_incoming_processes(v_e_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ae:IncomingProcessName", NVL(pe.process_name,' ')).getClobVal()  ipr_name,
         XMLElement("osdm_ae:IncomingFlowName", NVL(pe.flow_name,' ')).getClobVal()       ipr_flow_name,
         XMLElement("osdm_ae:IncomingCRUDCode", NVL(pe.crud_code,' ')).getClobVal()       ipr_crud_code,
         XMLElement("osdm_ae:IncomingDFDName", NVL(pe.dfd_name,' ')).getClobVal()         ipr_dfd_name,
         COUNT(pe.process_name) over()                                                    total_row_count
  FROM   dmrs_process_entities pe
  WHERE  pe.entity_ovid = v_e_ovid
  AND    pe.flow_direction = 'IN'
  ORDER BY pe.process_name;
rec_incoming_processes cur_incoming_processes%ROWTYPE;

CURSOR cur_outgoing_processes(v_e_ovid IN VARCHAR2) IS
  SELECT XMLElement("osdm_ae:OutgoingProcessName", pe.process_name).getClobVal() opr_name,
         XMLElement("osdm_ae:OutgoingFlowName", pe.flow_name).getClobVal()       opr_flow_name,
         XMLElement("osdm_ae:OutgoingCRUDCode", pe.crud_code).getClobVal()       opr_crud_code,
         XMLElement("osdm_ae:OutgoingDFDName", pe.dfd_name).getClobVal()         opr_dfd_name,
         COUNT(pe.process_name) over()                                           total_row_count
  FROM   dmrs_process_entities pe
  WHERE  pe.entity_ovid = v_e_ovid
  AND    pe.flow_direction = 'OUT'
  ORDER BY pe.process_name;
rec_outgoing_processes cur_outgoing_processes%ROWTYPE;

-- Constraints
CURSOR cur_constraints(v_e_ovid IN VARCHAR2) IS
SELECT XMLElement("osdm_ae:ContstraintType", CASE WHEN rownum>1 THEN ''
                                              ELSE 'Attribute Level'
                                              END).getClobVal()                                        c_type,
        XMLElement("osdm_ae:ALCConstraintName", a.attribute_name || 
                                                DECODE((SELECT DISTINCT(constraint_name)
                                                        FROM dmrs_check_constraints 
                                                        WHERE a.ovid = dataelement_ovid),NULL,'',
                                               ' / '|| (SELECT  DISTINCT(constraint_name) 
                                                        FROM dmrs_check_constraints 
                                                        WHERE a.ovid = dataelement_ovid))).getClobVal() c_name,
        Gather_Constraint_Details_XML(a.ovid, 'osdm_ae')                                                c_details,
        COUNT(a.attribute_name) over()                                                                  total_row_count
 FROM   dmrs_attributes a
 WHERE a.container_ovid = v_e_ovid
 AND  (a.ovid IN (SELECT dataelement_ovid FROM dmrs_avt) OR 
       a.ovid IN (SELECT dataelement_ovid FROM dmrs_value_ranges) OR 
       a.ovid IN (SELECT dataelement_ovid FROM dmrs_check_constraints));
rec_constraints cur_constraints%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all entities started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_ae:root xmlns:osdm_ae="osdm_ae">');
  
  FOR rec_general_data IN cur_general_data(v_model_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_ae:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_ae:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_ae:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_ae:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_ae:VersionComment>');       
     
     
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;
 
   FOR rec_all_entities IN cur_all_entities(v_model_ovid) LOOP

      IF (cur_all_entities%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_ae:EntitiesCollection>');
      END IF;

      DBMS_LOB.APPEND (res,'<osdm_ae:EntityDetails>');

      -- Mapped tables
      FOR rec_mapped_tables IN cur_mapped_tables(rec_all_entities.entity_ovid) LOOP
        IF (cur_mapped_tables%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_ae:MappedTablesCollection>');
        END IF;

         DBMS_LOB.APPEND (res, '<osdm_ae:MappedTablesDetails>');
         DBMS_LOB.APPEND (res, rec_mapped_tables.table_name);
         DBMS_LOB.APPEND (res, '</osdm_ae:MappedTablesDetails>');

        IF (cur_mapped_tables%ROWCOUNT = rec_mapped_tables.total_row_count) THEN
         DBMS_LOB.APPEND (res, '</osdm_ae:MappedTablesCollection>');
        END IF;
      END LOOP;

      -- Description / Notes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
         
         DBMS_LOB.APPEND (res, '<osdm_ae:DescriptionNotes>');
         
         SELECT NVL(
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_entities.entity_ovid
                   AND    t.type='Comments'),
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_entities.entity_ovid
                   AND    t.type='CommentsInRDBMS'))                      description, 
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_entities.entity_ovid
                  AND    t.type='Note')                                   notes
         INTO   v_description, 
                v_notes
         FROM dual;
         
         DBMS_LOB.APPEND (res, '<osdm_ae:Description>');
         DBMS_LOB.APPEND (res, '<osdm_ae:DescriptionDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_ae:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_ae:DescriptionDetails>');
         DBMS_LOB.APPEND (res, '</osdm_ae:Description>');
         
         DBMS_LOB.APPEND (res, '<osdm_ae:Notes>');
         DBMS_LOB.APPEND (res, '<osdm_ae:NotesDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_ae:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_ae:NotesDetails>');
         DBMS_LOB.APPEND (res, '</osdm_ae:Notes>');
         DBMS_LOB.APPEND (res, '</osdm_ae:DescriptionNotes>');

      END IF;
            
      DBMS_LOB.APPEND (res, rec_all_entities.entity_name);
      DBMS_LOB.APPEND (res, rec_all_entities.pref_abbreviation);      
      DBMS_LOB.APPEND (res, rec_all_entities.classification_type_name);
      DBMS_LOB.APPEND (res, rec_all_entities.object_type_name);
      DBMS_LOB.APPEND (res, rec_all_entities.super_type);
      DBMS_LOB.APPEND (res, rec_all_entities.table_synonyms);

      IF (reportTemplate.reportType = 0 OR reportTemplate.useQuantitativeInfo = 1) THEN
        DBMS_LOB.APPEND (res, '<osdm_ae:QuantitativeInfoCollection>');
        DBMS_LOB.APPEND (res, rec_all_entities.number_of_attributes);
        DBMS_LOB.APPEND (res, rec_all_entities.number_rows_min);
        DBMS_LOB.APPEND (res, rec_all_entities.number_rows_max);
        DBMS_LOB.APPEND (res, rec_all_entities.expected_number_of_rows);
        DBMS_LOB.APPEND (res, rec_all_entities.expected_growth);
        DBMS_LOB.APPEND (res, rec_all_entities.growth_interval);
        DBMS_LOB.APPEND (res, '</osdm_ae:QuantitativeInfoCollection>');
      END IF;
      
      -- Attributes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityAttributes = 1) THEN
        FOR rec_attributes IN cur_attributes(rec_all_entities.entity_ovid) LOOP

           IF (cur_attributes%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res,'<osdm_ae:AttributesCollection>');
           END IF;

             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeDetails>');
             DBMS_LOB.APPEND (res, rec_attributes.seq);
             DBMS_LOB.APPEND (res, rec_attributes.attr_name);
             DBMS_LOB.APPEND (res, rec_attributes.pk);
             DBMS_LOB.APPEND (res, rec_attributes.fk);
             DBMS_LOB.APPEND (res, rec_attributes.m);
             IF (INSTR(LOWER(rec_attributes.data_type),'unknown') = 0) THEN
                DBMS_LOB.APPEND (res, rec_attributes.data_type);
             ELSE
                SELECT XMLElement("osdm_ae:DataType", '').getClobVal() INTO token_value FROM dual;
                DBMS_LOB.APPEND (res, token_value);
             END IF;
             DBMS_LOB.APPEND (res, rec_attributes.dt_kind);
             DBMS_LOB.APPEND (res, rec_attributes.domain_name);
             DBMS_LOB.APPEND (res, rec_attributes.formula);
             DBMS_LOB.APPEND (res, rec_attributes.pref_abbr);
             DBMS_LOB.APPEND (res, rec_attributes.synonyms);
             DBMS_LOB.APPEND (res,'</osdm_ae:AttributeDetails>');

           IF (cur_attributes%ROWCOUNT = rec_attributes.total_row_count) THEN
            DBMS_LOB.APPEND (res, '</osdm_ae:AttributesCollection>');
           END IF;
        END LOOP;
      END IF;

      -- Attribute Comments
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityAttributesComments = 1) THEN
        FOR rec_attributes_comments IN cur_attributes_comments(rec_all_entities.entity_ovid) LOOP
           IF (cur_attributes_comments%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res,'<osdm_ae:AttributesCommentsCollection>');
           END IF;

             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeCommentsDetails>');
             DBMS_LOB.APPEND (res, rec_attributes_comments.seq);
             DBMS_LOB.APPEND (res, rec_attributes_comments.attribute_name);

             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeDescription>');
             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeDescriptionDetails>');
             -- Tokenize rows
             FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                            FROM   dual
                            CONNECT BY REGEXP_INSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                 SELECT XMLElement("osdm_ae:AttributeDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                 DBMS_LOB.APPEND (res, token_value);
             END LOOP;
             DBMS_LOB.APPEND (res, '</osdm_ae:AttributeDescriptionDetails>');
             DBMS_LOB.APPEND (res, '</osdm_ae:AttributeDescription>');

             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeNotes>');
             DBMS_LOB.APPEND (res, '<osdm_ae:AttributeNotesDetails>');
             -- Tokenize rows
             FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                            FROM   dual
                            CONNECT BY REGEXP_INSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                            
                 SELECT XMLElement("osdm_ae:AttributeNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                 DBMS_LOB.APPEND (res, token_value);
             END LOOP;
             DBMS_LOB.APPEND (res, '</osdm_ae:AttributeNotesDetails>');
             DBMS_LOB.APPEND (res, '</osdm_ae:AttributeNotes>');

             DBMS_LOB.APPEND (res,'</osdm_ae:AttributeCommentsDetails>');

           IF (cur_attributes_comments%ROWCOUNT = rec_attributes_comments.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_ae:AttributesCommentsCollection>');
           END IF;
        END LOOP;
      END IF;

      -- Constraints
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityConstraints = 1) THEN
        FOR rec_constraints IN cur_constraints(rec_all_entities.entity_ovid) LOOP
           IF (cur_constraints%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_ae:ConstraintsCollection>');
           END IF;

             DBMS_LOB.APPEND (res,'<osdm_ae:ConstraintDetails>');
             DBMS_LOB.APPEND (res,rec_constraints.c_type);
             DBMS_LOB.APPEND (res,rec_constraints.c_name);
             DBMS_LOB.APPEND (res,rec_constraints.c_details);
             DBMS_LOB.APPEND (res,'</osdm_ae:ConstraintDetails>');

           IF (cur_constraints%ROWCOUNT = rec_constraints.total_row_count) THEN
               DBMS_LOB.APPEND (res,'</osdm_ae:ConstraintsCollection>');
           END IF;
        END LOOP;
      END IF;

      -- Identifiers
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityIdentifiers = 1) THEN
        FOR rec_identifiers IN cur_identifiers(rec_all_entities.entity_ovid) LOOP
           IF (cur_identifiers%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res, '<osdm_ae:IdentifiersCollection>');
           END IF;
          
             DBMS_LOB.APPEND (res, '<osdm_ae:IdentifierDetails>');
             DBMS_LOB.APPEND (res, rec_identifiers.nn);
             DBMS_LOB.APPEND (res, rec_identifiers.pi);
             DBMS_LOB.APPEND (res, rec_identifiers.element_name);
             DBMS_LOB.APPEND (res, rec_identifiers.type);
             DBMS_LOB.APPEND (res, rec_identifiers.source_label);
             DBMS_LOB.APPEND (res, rec_identifiers.target_label);
             DBMS_LOB.APPEND (res, '</osdm_ae:IdentifierDetails>');
        
           IF (cur_identifiers%ROWCOUNT = rec_identifiers.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_ae:IdentifiersCollection>');
           END IF;
        END LOOP;
      END IF;

      -- Relationships
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityRelationships = 1) THEN
        -- Total count of relationships
        SELECT COUNT(1)
        INTO   v_rel_total_count
        FROM (
         SELECT r.ovid
         FROM   dmrs_relationships r,
                dmrs_entities      e
         WHERE  r.source_ovid  = e.ovid
         AND    e.ovid         = rec_all_entities.entity_ovid
         UNION ALL
         SELECT r.ovid
         FROM   dmrs_relationships r,
                dmrs_entities      e
         WHERE  r.target_ovid  = e.ovid
         AND    e.ovid         = rec_all_entities.entity_ovid);

        FOR rec_relationships IN cur_relationships(rec_all_entities.entity_ovid) LOOP
           IF (cur_relationships%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res, '<osdm_ae:RelationshipsCollection>');
           END IF;

              DBMS_LOB.APPEND (res, '<osdm_ae:RelationshipDetails>');
              DBMS_LOB.APPEND (res, rec_relationships.source_name);
              DBMS_LOB.APPEND (res, rec_relationships.source_role);
              DBMS_LOB.APPEND (res, rec_relationships.target_role);
              DBMS_LOB.APPEND (res, rec_relationships.in_arc);
              DBMS_LOB.APPEND (res, rec_relationships.cardinality);
              DBMS_LOB.APPEND (res, rec_relationships.dominant_role);
              DBMS_LOB.APPEND (res, rec_relationships.identifying);
              DBMS_LOB.APPEND (res, rec_relationships.transferable);
              DBMS_LOB.APPEND (res, '</osdm_ae:RelationshipDetails>');
        
           IF (cur_relationships%ROWCOUNT = v_rel_total_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_ae:RelationshipsCollection>');
           END IF;
        
        END LOOP;
      END IF;

      -- Incoming Processes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityIncomingProcesses = 1) THEN
        FOR rec_incoming_processes IN cur_incoming_processes(rec_all_entities.entity_ovid) LOOP
           IF (cur_incoming_processes%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res, '<osdm_ae:IncomingProcessesCollection>');
           END IF;
             DBMS_LOB.APPEND (res, '<osdm_ae:IncomingProcessDetails>');
             DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_name);
             DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_flow_name);
             DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_crud_code);
             DBMS_LOB.APPEND (res, rec_incoming_processes.ipr_dfd_name);
             DBMS_LOB.APPEND (res, '</osdm_ae:IncomingProcessDetails>');
           IF (cur_incoming_processes%ROWCOUNT = rec_incoming_processes.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_ae:IncomingProcessesCollection>');
           END IF;
        END LOOP;
      END IF;
      -- Outgoing Processes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useEntityOutgoingProcesses = 1) THEN
        FOR rec_outgoing_processes IN cur_outgoing_processes(rec_all_entities.entity_ovid) LOOP
           IF (cur_outgoing_processes%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res, '<osdm_ae:OutgoingProcessesCollection>');
           END IF;
             DBMS_LOB.APPEND (res, '<osdm_ae:OugoingProcessDetails>');
             DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_name);
             DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_flow_name);
             DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_crud_code);
             DBMS_LOB.APPEND (res, rec_outgoing_processes.opr_dfd_name);
             DBMS_LOB.APPEND (res, '</osdm_ae:OugoingProcessDetails>');
           IF (cur_outgoing_processes%ROWCOUNT = rec_outgoing_processes.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_ae:OutgoingProcessesCollection>');
           END IF;
        END LOOP;
      END IF;

      DBMS_LOB.APPEND (res,'</osdm_ae:EntityDetails>');

      IF (cur_all_entities%ROWCOUNT = rec_all_entities.total_row_count) THEN
         DBMS_LOB.APPEND (res,'</osdm_ae:EntitiesCollection>');
      END IF;

   END LOOP;

  DBMS_LOB.APPEND (res,'</osdm_ae:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all entities ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllEntities_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllEntities_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_AllEntities_Data;

FUNCTION Gather_Glossary_Data(v_glossary_ovid IN VARCHAR2) RETURN CLOB IS 

res         CLOB;
token_value CLOB;

CURSOR cur_glossary(v_g_ovid IN VARCHAR2) IS
 SELECT  /*+ index(g GLOSSARIES_OVID_IDX) */
         XMLElement("osdm_g:GlossaryName", g.glossary_name).getClobVal()                                      glossary_name,
         g.description                                                                                        description,
         XMLElement("osdm_g:FileName", g.file_name).getStringVal()                                            file_name,
         XMLElement("osdm_g:IncompleteModifiers", DECODE(g.incomplete_modifiers,'N','','Y')).getStringVal()   inc_modifiers,
         XMLElement("osdm_g:CaseSensitive", DECODE(g.case_sensitive,'N','','Y')).getStringVal()               case_sensitive,
         XMLElement("osdm_g:UniqueAbbreviations", DECODE(g.unique_abbrevs,'N','','Y')).getStringVal()         unique_abbreviations,
         XMLElement("osdm_g:SeparatorType", g.separator_type).getStringVal()                                  separator_type,
         XMLElement("osdm_g:SeparatorChar", g.separator_char).getStringVal()                                  separator_char
 FROM    dmrs_glossaries g
 WHERE   g.glossary_ovid = v_g_ovid;
rec_glossary cur_glossary%ROWTYPE;

CURSOR cur_glossary_words(v_g_ovid IN VARCHAR2) IS
 SELECT /*+ index(g GLOSSARIES_OVID_IDX) */
        XMLElement("osdm_g:TermName", gt.term_name).getClobVal()                            term_name,
        XMLElement("osdm_g:Plural", gt.plural).getClobVal()                                 plural,
        XMLElement("osdm_g:Abbreviation", gt.abbrev).getClobVal()                           abbr,
        XMLElement("osdm_g:AltAbbreviation", gt.alt_abbrev).getClobVal()                    alt_abbr,
        XMLElement("osdm_g:P", DECODE(gt.prime_word,'N','',gt.prime_word)).getClobVal()     p_word,
        XMLElement("osdm_g:C", DECODE(gt.class_word,'N','',gt.class_word)).getClobVal()     c_word,
        XMLElement("osdm_g:M", DECODE(gt.modifier,'N','',gt.modifier)).getClobVal()         modifier,
        XMLElement("osdm_g:Q", DECODE(gt.qualifier,'N','',gt.qualifier)).getClobVal()       qualifier,
        gt.short_description                                                                description,
        COUNT(gt.term_name) over() total_row_count
 FROM   dmrs_glossaries g,
        dmrs_glossary_terms gt
 WHERE  g.glossary_ovid = gt.glossary_ovid
 AND    g.glossary_ovid = v_g_ovid;
rec_glossary_words cur_glossary_words%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering glossary data started ...');
 
  DBMS_LOB.CREATETEMPORARY(res, TRUE);
  DBMS_LOB.APPEND (res,'<osdm_g:root xmlns:osdm_g="osdm_g">');
  
  FOR rec_glossary IN cur_glossary(v_glossary_ovid) LOOP
  
     DBMS_LOB.APPEND (res, rec_glossary.glossary_name);
  
     DBMS_LOB.APPEND (res, '<osdm_g:Description>');
     DBMS_LOB.APPEND (res, '<osdm_g:DescriptionDetails>');
     -- Tokenize rows
     FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_glossary.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                    FROM   dual
                    CONNECT BY REGEXP_INSTR(rec_glossary.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
         SELECT XMLElement("osdm_g:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
         DBMS_LOB.APPEND (res, token_value);
     END LOOP;
     DBMS_LOB.APPEND (res, '</osdm_g:DescriptionDetails>');
     DBMS_LOB.APPEND (res, '</osdm_g:Description>');       

     DBMS_LOB.APPEND (res, rec_glossary.file_name);
     DBMS_LOB.APPEND (res, rec_glossary.inc_modifiers);
     DBMS_LOB.APPEND (res, rec_glossary.case_sensitive);
     DBMS_LOB.APPEND (res, rec_glossary.unique_abbreviations);
     DBMS_LOB.APPEND (res, rec_glossary.separator_type);
     DBMS_LOB.APPEND (res, rec_glossary.separator_char);
  END LOOP;

  FOR rec_glossary_words IN cur_glossary_words(v_glossary_ovid) LOOP
     IF (cur_glossary_words%ROWCOUNT = 1) THEN
       DBMS_LOB.APPEND (res, '<osdm_g:GlossaryCollection>');
     END IF;
       DBMS_LOB.APPEND (res, '<osdm_g:GlossaryDetail>');
       DBMS_LOB.APPEND (res, rec_glossary_words.term_name);
       DBMS_LOB.APPEND (res, rec_glossary_words.plural);
       DBMS_LOB.APPEND (res, rec_glossary_words.abbr);
       DBMS_LOB.APPEND (res, rec_glossary_words.alt_abbr);
       DBMS_LOB.APPEND (res, rec_glossary_words.p_word);
       DBMS_LOB.APPEND (res, rec_glossary_words.c_word);
       DBMS_LOB.APPEND (res, rec_glossary_words.modifier);
       DBMS_LOB.APPEND (res, rec_glossary_words.qualifier);

       DBMS_LOB.APPEND (res, '<osdm_g:SDescription>');
       DBMS_LOB.APPEND (res, '<osdm_g:SDescriptionDetails>');
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_glossary_words.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_glossary_words.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
           SELECT XMLElement("osdm_g:SDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
           DBMS_LOB.APPEND (res, token_value);
       END LOOP;
       DBMS_LOB.APPEND (res, '</osdm_g:SDescriptionDetails>');
       DBMS_LOB.APPEND (res, '</osdm_g:SDescription>');       

       DBMS_LOB.APPEND (res, '</osdm_g:GlossaryDetail>');
     IF (cur_glossary_words%ROWCOUNT = rec_glossary_words.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_g:GlossaryCollection>');
     END IF;
  END LOOP;

  DBMS_LOB.APPEND (res, '</osdm_g:root>');
  
  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering glossary data ended');
  
RETURN res;

 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Glossary_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Glossary_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;

END Gather_Glossary_Data;

FUNCTION Gather_SingleST_Data(v_str_type_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
token_value       CLOB;
v_description     CLOB;
v_notes           CLOB;
v_rel_total_count INTEGER;
v_seq             INTEGER := 1;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

 -- General data
CURSOR cur_general_data(v_st_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_st:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_s_st:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_s_st:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m,
        dmrs_structured_types st
 WHERE  d.design_ovid = m.design_ovid
 AND    st.model_ovid = m.model_ovid
 AND    st.structured_type_ovid = v_st_ovid;
rec_general_data cur_general_data%ROWTYPE;

-- Structured Type General Data
CURSOR cur_st(v_st_ovid IN VARCHAR2) IS
SELECT XMLElement("osdm_s_st:STName",st.structured_type_name).getClobVal()                                                                                     stName,
       XMLElement("osdm_s_st:STSuperType",(SELECT st1.structured_type_name 
                                           FROM  dmrs_structured_types st1 
                                           WHERE st.super_type_ovid = st1.structured_type_ovid)).getClobVal()                                                  super_type
FROM   dmrs_structured_types st
WHERE  st.structured_type_ovid = v_st_ovid;
rec_st cur_st%ROWTYPE;

--Attributes
CURSOR cur_st_attr(v_st_ovid IN VARCHAR2) IS
SELECT  XMLElement("osdm_s_st:AttributeName", sta.attribute_name).getClobVal()                                                                                 attr_name,
        XMLElement("osdm_s_st:M",DECODE(sta.mandatory,'N','','Y')).getClobVal()                                                                                m,
        XMLElement("osdm_s_st:DataTypeKind",DECODE(sta.datatype_kind,                                                                                           
                                                 'Domain',         'DOM',
                                                 'Logical Type',   'LT',
                                                 'Distinct Type',  'DT',
                                                 'Ref Struct Type','RST',
                                                 'Structured Type','ST',
                                                 'Collection Type','CT')
                  ).getClobVal()                                                                                                                               dt_kind,
         XMLElement("osdm_s_st:DataType", 
            DECODE(sta.datatype_kind, 
                  'Domain', sta.type_name ||' '||
                           DECODE (NVL(sta.t_size,''),'',
                              DECODE(NVL(sta.t_scale,0),0,
                                 DECODE(NVL(sta.t_precision,0),0,null,'('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) ||')'),
                                   '('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) || ',' || DECODE(NVL(sta.t_scale,0),0,null,sta.t_scale)||')'),
                                   '('||TRIM(DECODE(sta.t_size,'',null,sta.t_size||' '||sta.char_units ))||')'),
                   'Logical Type', sta.type_name  ||' '|| 
                           DECODE (NVL(sta.t_size,''),'',
                              DECODE(NVL(sta.t_scale,0),0,
                                 DECODE(NVL(sta.t_precision,0),0,null,'('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) ||')'),
                                   '('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) || ',' || DECODE(NVL(sta.t_scale,0),0,null,sta.t_scale)||')'),
                                   '('||TRIM(DECODE(sta.t_size,'',null,sta.t_size||' '||sta.char_units ))||')')
            )).getClobVal()                                                                                                                                    data_type,
        XMLElement("osdm_s_st:DomainName",DECODE(sta.domain_name,'Unknown',null,sta.domain_name)).getClobVal()                                                 domain_name,
      COUNT(sta.attribute_name) over()                                                                                                                         total_row_count
FROM  dmrs_struct_type_attrs sta,
      dmrs_structured_types st
WHERE sta.structured_type_ovid = st.structured_type_ovid
AND   st.structured_type_ovid = v_st_ovid;
rec_st_attr cur_st_attr%ROWTYPE;

-- Attributes Comments Data
CURSOR cur_attributes_comments(v_st_ovid IN VARCHAR2) IS
 SELECT a.attribute_name               attribute_name, 
        a.description                  description, 
        a.notes                        notes,
        COUNT(a.attribute_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_s_st:AttributeCommentsName",a.attribute_name).getStringVal()   attribute_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='CommentsInRDBMS'))  description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='Note')              notes
  FROM   dmrs_struct_type_attrs a
  WHERE  a.structured_type_ovid = v_st_ovid
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_attributes_comments cur_attributes_comments%ROWTYPE;

-- Methods
CURSOR  cur_st_methods(v_st_ovid IN VARCHAR2) IS
SELECT  XMLElement("osdm_s_st:MethodName", m.method_name).getClobVal()                           m_name,
        XMLElement("osdm_s_st:MethodConstructor", DECODE(m.constructor,'N','','Y')).getClobVal() m_constr,
        XMLElement("osdm_s_st:MethodOverriding", DECODE(m.overriding,'N','','Y')).getClobVal()   m_overriding,
        XMLElement("osdm_s_st:MethodOverridenMethod", m.overridden_method_name).getClobVal()     m_om_name,
        XMLElement("osdm_s_st:MethodReturnValue", 
        (SELECT sp.type_name  ||' '|| 
                DECODE (NVL(sp.t_size,''),'',
                 DECODE(NVL(sp.t_scale,0),0,
                  DECODE(NVL(sp.t_precision,0),0,null,'('|| DECODE(NVL(sp.t_precision,0),0,null,sp.t_precision) ||')'),
                  '('|| DECODE(NVL(sp.t_precision,0),0,null,sp.t_precision) || ',' || DECODE(NVL(sp.t_scale,0),0,null,sp.t_scale)||')'),
                  '('||TRIM(DECODE(sp.t_size,'',null,sp.t_size ))||')')
         FROM   dmrs_struct_type_method_pars sp 
         WHERE  return_value= 'Y'
         AND    sp.method_ovid = m.method_ovid)).getClobVal()                                    m_return_type,        
        COUNT(m.method_name) over()                                                              total_row_count,
        m.method_ovid                                                                            method_ovid
FROM dmrs_struct_type_methods m,
     dmrs_structured_types st
WHERE m.structured_type_ovid = st.structured_type_ovid
AND   st.structured_type_ovid = v_st_ovid;
rec_st_methods cur_st_methods%ROWTYPE;

-- Method params
CURSOR cur_st_methods_p(v_m_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_st:ParameterName", parameter_name).getClobVal()  param_name,
        --XMLElement("osdm_s_st:ParameterType", type_name).getClobVal()       param_type,
        XMLElement("osdm_s_st:ParameterType", 
        type_name  ||' '|| 
                DECODE (NVL(t_size,0),0,
                 DECODE(NVL(t_scale,0),0,
                  DECODE(NVL(t_precision,0),0,null,'('|| DECODE(NVL(t_precision,0),0,null,t_precision) ||')'),
                  '('|| DECODE(NVL(t_precision,0),0,null,t_precision) || ',' || DECODE(NVL(t_scale,0),0,null,t_scale)||')'),
                  '('||TRIM(DECODE(t_size,0,null,t_size ))||')')
        ).getClobVal()       param_type,
        COUNT(parameter_name) over()                                        total_row_count
 FROM   dmrs_struct_type_method_pars
 WHERE  method_ovid = v_m_ovid
 AND    return_value = 'N'
 ORDER BY seq;
rec_st_methods_p cur_st_methods_p%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_st_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_st:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_s_st:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_s_st:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
 FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_structured_types st,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.structured_type_ovid = st.structured_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Structured Type'
 AND    st.structured_type_ovid = v_st_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_st_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_st:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_s_st:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_structured_types st
 WHERE  e.ovid = a.container_ovid
 AND    a.structured_type_ovid = st.structured_type_ovid
 AND    a.datatype_kind = 'Structured Type'
 AND    st.structured_type_ovid = v_st_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single structured type started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_s_st:root xmlns:osdm_s_st="osdm_s_st">');
  
  FOR rec_general_data IN cur_general_data(v_str_type_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_s_st:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_s_st:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_s_st:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_s_st:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_s_st:VersionComment>');       
     
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;
  
   -- Description / Notes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN

     DBMS_LOB.APPEND (res, '<osdm_s_st:DescriptionNotes>');
     
     SELECT 
           NVL(
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_str_type_ovid
               AND    t.type='Comments'),
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_str_type_ovid
               AND    t.type='CommentsInRDBMS'))        description, 
              (SELECT t.text comments_in_rdbms
               FROM   dmrs_large_text t
               WHERE  t.ovid = v_str_type_ovid
               AND    t.type='Note')                    notes
     INTO   v_description, 
            v_notes
     FROM  dual;
     
     DBMS_LOB.APPEND (res, '<osdm_s_st:Description>');
     DBMS_LOB.APPEND (res, '<osdm_s_st:DescriptionDetails>');
     -- Tokenize rows
     FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                    FROM   dual
                    CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
         SELECT XMLElement("osdm_s_st:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
         DBMS_LOB.APPEND (res, token_value);
     END LOOP;
     DBMS_LOB.APPEND (res, '</osdm_s_st:DescriptionDetails>');
     DBMS_LOB.APPEND (res, '</osdm_s_st:Description>');
     
     DBMS_LOB.APPEND (res, '<osdm_s_st:Notes>');
     DBMS_LOB.APPEND (res, '<osdm_s_st:NotesDetails>');
     -- Tokenize rows
     FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                    FROM   dual
                    CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
         SELECT XMLElement("osdm_s_st:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
         DBMS_LOB.APPEND (res, token_value);
     END LOOP;
     
     DBMS_LOB.APPEND (res, '</osdm_s_st:NotesDetails>');
     DBMS_LOB.APPEND (res, '</osdm_s_st:Notes>');
     DBMS_LOB.APPEND (res, '</osdm_s_st:DescriptionNotes>');
     
   END IF;
   
   FOR rec_st IN cur_st(v_str_type_ovid) LOOP
      DBMS_LOB.APPEND (res, rec_st.stName);
      DBMS_LOB.APPEND (res, rec_st.super_type);
   END LOOP;
  
   -- Attributes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useSTAttributes = 1) THEN
     FOR rec_st_attr IN cur_st_attr(v_str_type_ovid) LOOP
        IF (cur_st_attr%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_s_st:AttributesCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeDetails>');
          DBMS_LOB.APPEND (res, '<osdm_s_st:Sequence>' || TO_CHAR(v_seq) || '</osdm_s_st:Sequence>');
          DBMS_LOB.APPEND (res, rec_st_attr.attr_name);
          DBMS_LOB.APPEND (res, rec_st_attr.m);
          IF (INSTR(LOWER(rec_st_attr.data_type),'unknown') = 0) THEN
             DBMS_LOB.APPEND (res, rec_st_attr.data_type);
          ELSE
             SELECT XMLElement("osdm_s_st:DataType", '').getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END IF;
          DBMS_LOB.APPEND (res, rec_st_attr.dt_kind);
          DBMS_LOB.APPEND (res, rec_st_attr.domain_name);
          DBMS_LOB.APPEND (res,'</osdm_s_st:AttributeDetails>');

        IF (cur_st_attr%ROWCOUNT = rec_st_attr.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributesCollection>');
        END IF;
        v_seq := v_seq + 1;
     END LOOP;
   END IF;
  
   v_seq := 1;
   -- Attribute Comments
   IF (reportTemplate.reportType = 0 OR reportTemplate.useSTAttributesComments = 1) THEN
     FOR rec_attributes_comments IN cur_attributes_comments(v_str_type_ovid) LOOP
        IF (cur_attributes_comments%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_s_st:AttributesCommentsCollection>');
        END IF;

          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeCommentsDetails>');
          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeCommentsSequence>' || TO_CHAR(v_seq) || '</osdm_s_st:AttributeCommentsSequence>');
          DBMS_LOB.APPEND (res, rec_attributes_comments.attribute_name);

          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeDescription>');
          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeDescriptionDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                         FROM   dual
                         CONNECT BY REGEXP_INSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
              SELECT XMLElement("osdm_s_st:AttributeDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributeDescriptionDetails>');
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributeDescription>');

          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeNotes>');
          DBMS_LOB.APPEND (res, '<osdm_s_st:AttributeNotesDetails>');
          -- Tokenize rows
          FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                         FROM   dual
                         CONNECT BY REGEXP_INSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                         
              SELECT XMLElement("osdm_s_st:AttributeNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
              DBMS_LOB.APPEND (res, token_value);
          END LOOP;
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributeNotesDetails>');
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributeNotes>');

          DBMS_LOB.APPEND (res,'</osdm_s_st:AttributeCommentsDetails>');

        IF (cur_attributes_comments%ROWCOUNT = rec_attributes_comments.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_s_st:AttributesCommentsCollection>');
        END IF;
        v_seq := v_seq + 1;
     END LOOP;
   END IF;

   v_seq := 1;
   IF (reportTemplate.reportType = 0 OR reportTemplate.useSTMethods = 1) THEN
     FOR rec_st_methods IN cur_st_methods(v_str_type_ovid) LOOP
        IF (cur_st_methods%ROWCOUNT = 1) THEN
          DBMS_LOB.APPEND (res,'<osdm_s_st:MethodsCollection>');
        END IF;
            
            DBMS_LOB.APPEND (res, '<osdm_s_st:MethodDetails>');
            DBMS_LOB.APPEND (res, '<osdm_s_st:MethodSequence>' || TO_CHAR(v_seq) || '</osdm_s_st:MethodSequence>');
            DBMS_LOB.APPEND (res, rec_st_methods.m_name);
            DBMS_LOB.APPEND (res, rec_st_methods.m_constr);
            DBMS_LOB.APPEND (res, rec_st_methods.m_overriding);
            DBMS_LOB.APPEND (res, rec_st_methods.m_om_name);
            DBMS_LOB.APPEND (res, rec_st_methods.m_return_type);
            
            FOR rec_st_methods_p IN cur_st_methods_p(rec_st_methods.method_ovid) LOOP
               IF (cur_st_methods_p%ROWCOUNT = 1) THEN
                 DBMS_LOB.APPEND (res,'<osdm_s_st:MethodParametersCollection>');
               END IF;

                 DBMS_LOB.APPEND (res, '<osdm_s_st:MethodParameterDetails>');
                 DBMS_LOB.APPEND (res, rec_st_methods_p.param_name);
                 DBMS_LOB.APPEND (res, rec_st_methods_p.param_type);
                 DBMS_LOB.APPEND (res, '</osdm_s_st:MethodParameterDetails>');

               IF (cur_st_methods_p%ROWCOUNT = rec_st_methods_p.total_row_count) THEN
                 DBMS_LOB.APPEND (res, '</osdm_s_st:MethodParametersCollection>');
               END IF;
            END LOOP;       
           
            DBMS_LOB.APPEND (res, '</osdm_s_st:MethodDetails>');
            
        IF (cur_st_methods%ROWCOUNT = rec_st_methods.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_s_st:MethodsCollection>');
        END IF;
        v_seq := v_seq + 1;
     END LOOP;
   END IF;

   -- Used in tables
   IF (reportTemplate.reportType = 0 OR reportTemplate.useSTUsedInTables = 1) THEN
     FOR rec_used_in_tables IN cur_used_in_tables(v_str_type_ovid) LOOP
        IF (cur_used_in_tables%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_st:TablesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_st:TableDetails>');

           v_model_name := rec_used_in_tables.model_name;
           IF (v_model_name != p_model_name) THEN
             DBMS_LOB.APPEND (res,v_model_name);
             p_model_name := v_model_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_st:ModelName></osdm_s_st:ModelName>');
           END IF;

           v_table_name := rec_used_in_tables.table_name;
           IF (v_table_name != p_table_name) THEN
           DBMS_LOB.APPEND (res,v_table_name);
             p_table_name := v_table_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_st:TableName></osdm_s_st:TableName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
           DBMS_LOB.APPEND (res,'</osdm_s_st:TableDetails>');
        IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_st:TablesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Used in entities
   IF (reportTemplate.reportType = 0 OR reportTemplate.useSTUsedInEntities = 1) THEN
     FOR rec_used_in_entities IN cur_used_in_entities(v_str_type_ovid) LOOP
        IF (cur_used_in_entities%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_st:EntitiesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_st:EntityDetails>');
          
           v_entity_name := rec_used_in_entities.entity_name;
           IF (v_entity_name != p_entity_name) THEN
             DBMS_LOB.APPEND (res,v_entity_name);
             p_entity_name := v_entity_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_st:EntityName></osdm_s_st:EntityName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
           DBMS_LOB.APPEND (res,'</osdm_s_st:EntityDetails>');
        IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_st:EntitiesCollection>');
        END IF;
     END LOOP;
   END IF;

  DBMS_LOB.APPEND (res,'</osdm_s_st:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single structured type ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleST_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleST_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_SingleST_Data;

FUNCTION Gather_AllST_Data(v_model_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
v_seq             INTEGER := 1;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

-- General data
CURSOR cur_general_data(v_m_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_st:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_a_st:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_a_st:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m
 WHERE  d.design_ovid = m.design_ovid
 AND    m.model_ovid = v_model_ovid;
rec_general_data cur_general_data%ROWTYPE;

-- All structured types general data
CURSOR cur_all_st(v_m_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_st:STName",st.structured_type_name).getClobVal()                                    st_name,
        XMLElement("osdm_a_st:STSuperType",(SELECT st1.structured_type_name 
                                            FROM  dmrs_structured_types st1 
                                            WHERE st.super_type_ovid = st1.structured_type_ovid)).getClobVal() super_type,
        st.structured_type_ovid                                                                                st_ovid,

        COUNT(st.structured_type_name) over()                                                                  total_row_count
 FROM   dmrs_structured_types st
 WHERE  st.model_ovid = v_m_ovid
 ORDER BY st.structured_type_name;
rec_all_st cur_all_st%ROWTYPE;

--Attributes
CURSOR cur_st_attr(v_st_ovid IN VARCHAR2) IS
SELECT  XMLElement("osdm_a_st:AttributeName", sta.attribute_name).getClobVal()                                                                                 attr_name,
        XMLElement("osdm_a_st:M",DECODE(sta.mandatory,'N','','Y')).getClobVal()                                                                                m,
        XMLElement("osdm_a_st:DataTypeKind",DECODE(sta.datatype_kind,                                                                                           
                                                 'Domain',         'DOM',
                                                 'Logical Type',   'LT',
                                                 'Distinct Type',  'DT',
                                                 'Ref Struct Type','RST',
                                                 'Structured Type','ST',
                                                 'Collection Type','CT')
                  ).getClobVal()                                                                                                                               dt_kind,
         XMLElement("osdm_a_st:DataType", 
            DECODE(sta.datatype_kind, 
                  'Domain', sta.type_name ||' '||
                           DECODE (NVL(sta.t_size,''),'',
                              DECODE(NVL(sta.t_scale,0),0,
                                 DECODE(NVL(sta.t_precision,0),0,null,'('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) ||')'),
                                   '('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) || ',' || DECODE(NVL(sta.t_scale,0),0,null,sta.t_scale)||')'),
                                   '('||TRIM(DECODE(sta.t_size,'',null,sta.t_size||' '||sta.char_units ))||')'),
                   'Logical Type', sta.type_name  ||' '|| 
                           DECODE (NVL(sta.t_size,''),'',
                              DECODE(NVL(sta.t_scale,0),0,
                                 DECODE(NVL(sta.t_precision,0),0,null,'('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) ||')'),
                                   '('|| DECODE(NVL(sta.t_precision,0),0,null,sta.t_precision) || ',' || DECODE(NVL(sta.t_scale,0),0,null,sta.t_scale)||')'),
                                   '('||TRIM(DECODE(sta.t_size,'',null,sta.t_size||' '||sta.char_units ))||')')
            )).getClobVal()                                                                                                                                    data_type,
        XMLElement("osdm_a_st:DomainName",DECODE(sta.domain_name,'Unknown',null,sta.domain_name)).getClobVal()                                                 domain_name,
      COUNT(sta.attribute_name) over()                                                                                                                         total_row_count
FROM  dmrs_struct_type_attrs sta,
      dmrs_structured_types st
WHERE sta.structured_type_ovid = st.structured_type_ovid
AND   st.structured_type_ovid = v_st_ovid;
rec_st_attr cur_st_attr%ROWTYPE;

-- Attributes Comments Data
CURSOR cur_attributes_comments(v_st_ovid IN VARCHAR2) IS
 SELECT a.attribute_name               attribute_name, 
        a.description                  description, 
        a.notes                        notes,
        COUNT(a.attribute_name) over() total_row_count
 FROM (
  SELECT XMLElement("osdm_a_st:AttributeCommentsName",a.attribute_name).getStringVal()   attribute_name,
         NVL(
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='Comments'),
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='CommentsInRDBMS'))  description, 
        (SELECT t.text comments_in_rdbms
         FROM   dmrs_large_text t
         WHERE  t.ovid = a.attribute_ovid
         AND    t.type='Note')              notes
  FROM   dmrs_struct_type_attrs a
  WHERE  a.structured_type_ovid = v_st_ovid
 ) a
 WHERE DBMS_LOB.getlength(description) > 0 OR DBMS_LOB.getlength(notes) > 0;
rec_attributes_comments cur_attributes_comments%ROWTYPE;

-- Methods
CURSOR  cur_st_methods(v_st_ovid IN VARCHAR2) IS
SELECT  XMLElement("osdm_a_st:MethodName", m.method_name).getClobVal()                           m_name,
        XMLElement("osdm_a_st:MethodConstructor", DECODE(m.constructor,'N','','Y')).getClobVal() m_constr,
        XMLElement("osdm_a_st:MethodOverriding", DECODE(m.overriding,'N','','Y')).getClobVal()   m_overriding,
        XMLElement("osdm_a_st:MethodOverridenMethod", m.overridden_method_name).getClobVal()     m_om_name,
        XMLElement("osdm_a_st:MethodReturnValue", 
        (SELECT sp.type_name  ||' '|| 
                DECODE (NVL(sp.t_size,''),'',
                 DECODE(NVL(sp.t_scale,0),0,
                  DECODE(NVL(sp.t_precision,0),0,null,'('|| DECODE(NVL(sp.t_precision,0),0,null,sp.t_precision) ||')'),
                  '('|| DECODE(NVL(sp.t_precision,0),0,null,sp.t_precision) || ',' || DECODE(NVL(sp.t_scale,0),0,null,sp.t_scale)||')'),
                  '('||TRIM(DECODE(sp.t_size,'',null,sp.t_size ))||')')
         FROM   dmrs_struct_type_method_pars sp 
         WHERE  return_value= 'Y'
         AND    sp.method_ovid = m.method_ovid)).getClobVal()                                    m_return_type,        
        COUNT(m.method_name) over()                                                              total_row_count,
        m.method_ovid                                                                            method_ovid
FROM dmrs_struct_type_methods m,
     dmrs_structured_types st
WHERE m.structured_type_ovid = st.structured_type_ovid
AND   st.structured_type_ovid = v_st_ovid;
rec_st_methods cur_st_methods%ROWTYPE;

-- Method params
CURSOR cur_st_methods_p(v_m_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_st:ParameterName", parameter_name).getClobVal()  param_name,
        XMLElement("osdm_a_st:ParameterType", 
        type_name  ||' '|| 
                DECODE (NVL(t_size,0),0,
                 DECODE(NVL(t_scale,0),0,
                  DECODE(NVL(t_precision,0),0,null,'('|| DECODE(NVL(t_precision,0),0,null,t_precision) ||')'),
                  '('|| DECODE(NVL(t_precision,0),0,null,t_precision) || ',' || DECODE(NVL(t_scale,0),0,null,t_scale)||')'),
                  '('||TRIM(DECODE(t_size,0,null,t_size ))||')')
        ).getClobVal()       param_type,
        COUNT(parameter_name) over()                                        total_row_count
 FROM   dmrs_struct_type_method_pars
 WHERE  method_ovid = v_m_ovid
 AND    return_value = 'N'
 ORDER BY seq;
rec_st_methods_p cur_st_methods_p%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_st_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_st:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_a_st:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_a_st:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
 FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_structured_types st,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.structured_type_ovid = st.structured_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Structured Type'
 AND    st.structured_type_ovid = v_st_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_st_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_st:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_a_st:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_structured_types st
 WHERE  e.ovid = a.container_ovid
 AND    a.structured_type_ovid = st.structured_type_ovid
 AND    a.datatype_kind = 'Structured Type'
 AND    st.structured_type_ovid = v_st_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all structured types started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_a_st:root xmlns:osdm_a_st="osdm_a_st">');
  
  FOR rec_general_data IN cur_general_data(v_model_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_a_st:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_a_st:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_st:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_a_st:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_a_st:VersionComment>');       

     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;

  -- All structured types
  FOR rec_all_st IN cur_all_st(v_model_ovid) LOOP

      IF (cur_all_st%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_a_st:STCollection>');
      END IF;
      
      DBMS_LOB.APPEND (res,'<osdm_a_st:STDetails>');

      -- Description / Notes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
      
         DBMS_LOB.APPEND (res, '<osdm_a_st:DescriptionNotes>');
         
         SELECT 
               NVL(
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_st.st_ovid
                   AND    t.type='Comments'),
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_st.st_ovid
                   AND    t.type='CommentsInRDBMS'))        description, 
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_st.st_ovid
                   AND    t.type='Note')                    notes
         INTO   v_description, 
                v_notes
         FROM  dual;
         
         DBMS_LOB.APPEND (res, '<osdm_a_st:Description>');
         DBMS_LOB.APPEND (res, '<osdm_a_st:DescriptionDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_st:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_a_st:DescriptionDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_st:Description>');
         
         DBMS_LOB.APPEND (res, '<osdm_a_st:Notes>');
         DBMS_LOB.APPEND (res, '<osdm_a_st:NotesDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_st:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         
         DBMS_LOB.APPEND (res, '</osdm_a_st:NotesDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_st:Notes>');
         DBMS_LOB.APPEND (res, '</osdm_a_st:DescriptionNotes>');
         
      END IF;
      
      DBMS_LOB.APPEND (res, rec_all_st.st_name);
      DBMS_LOB.APPEND (res, rec_all_st.super_type);

      v_seq := 1;
      -- Attributes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useSTAttributes = 1) THEN
        FOR rec_st_attr IN cur_st_attr(rec_all_st.st_ovid) LOOP
           IF (cur_st_attr%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res,'<osdm_a_st:AttributesCollection>');
           END IF;
      
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeDetails>');
             DBMS_LOB.APPEND (res, '<osdm_a_st:Sequence>' || TO_CHAR(v_seq) || '</osdm_a_st:Sequence>');
             DBMS_LOB.APPEND (res, rec_st_attr.attr_name);
             DBMS_LOB.APPEND (res, rec_st_attr.m);
             IF (INSTR(LOWER(rec_st_attr.data_type),'unknown') = 0) THEN
                DBMS_LOB.APPEND (res, rec_st_attr.data_type);
             ELSE
                SELECT XMLElement("osdm_a_st:DataType", '').getClobVal() INTO token_value FROM dual;
                DBMS_LOB.APPEND (res, token_value);
             END IF;
             DBMS_LOB.APPEND (res, rec_st_attr.dt_kind);
             DBMS_LOB.APPEND (res, rec_st_attr.domain_name);
             DBMS_LOB.APPEND (res,'</osdm_a_st:AttributeDetails>');
      
           IF (cur_st_attr%ROWCOUNT = rec_st_attr.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributesCollection>');
           END IF;
           v_seq := v_seq + 1;
        END LOOP;
      END IF;

      v_seq := 1;
      -- Attribute Comments
      IF (reportTemplate.reportType = 0 OR reportTemplate.useSTAttributesComments = 1) THEN
        FOR rec_attributes_comments IN cur_attributes_comments(rec_all_st.st_ovid) LOOP
           IF (cur_attributes_comments%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res,'<osdm_a_st:AttributesCommentsCollection>');
           END IF;
      
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeCommentsDetails>');
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeCommentsSequence>' || TO_CHAR(v_seq) || '</osdm_a_st:AttributeCommentsSequence>');
             DBMS_LOB.APPEND (res, rec_attributes_comments.attribute_name);
      
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeDescription>');
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeDescriptionDetails>');
             -- Tokenize rows
             FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                            FROM   dual
                            CONNECT BY REGEXP_INSTR(rec_attributes_comments.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                 SELECT XMLElement("osdm_a_st:AttributeDescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                 DBMS_LOB.APPEND (res, token_value);
             END LOOP;
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributeDescriptionDetails>');
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributeDescription>');
      
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeNotes>');
             DBMS_LOB.APPEND (res, '<osdm_a_st:AttributeNotesDetails>');
             -- Tokenize rows
             FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                            FROM   dual
                            CONNECT BY REGEXP_INSTR(rec_attributes_comments.notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                            
                 SELECT XMLElement("osdm_a_st:AttributeNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
                 DBMS_LOB.APPEND (res, token_value);
             END LOOP;
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributeNotesDetails>');
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributeNotes>');
      
             DBMS_LOB.APPEND (res,'</osdm_a_st:AttributeCommentsDetails>');
      
           IF (cur_attributes_comments%ROWCOUNT = rec_attributes_comments.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_a_st:AttributesCommentsCollection>');
           END IF;
           v_seq := v_seq + 1;
        END LOOP;
      END IF;

      v_seq := 1;
      IF (reportTemplate.reportType = 0 OR reportTemplate.useSTMethods = 1) THEN
        FOR rec_st_methods IN cur_st_methods(rec_all_st.st_ovid) LOOP
           IF (cur_st_methods%ROWCOUNT = 1) THEN
             DBMS_LOB.APPEND (res,'<osdm_a_st:MethodsCollection>');
           END IF;
               
               DBMS_LOB.APPEND (res, '<osdm_a_st:MethodDetails>');
               DBMS_LOB.APPEND (res, '<osdm_a_st:MethodSequence>' || TO_CHAR(v_seq) || '</osdm_a_st:MethodSequence>');
               DBMS_LOB.APPEND (res, rec_st_methods.m_name);
               DBMS_LOB.APPEND (res, rec_st_methods.m_constr);
               DBMS_LOB.APPEND (res, rec_st_methods.m_overriding);
               DBMS_LOB.APPEND (res, rec_st_methods.m_om_name);
               DBMS_LOB.APPEND (res, rec_st_methods.m_return_type);
               
               FOR rec_st_methods_p IN cur_st_methods_p(rec_st_methods.method_ovid) LOOP
                  IF (cur_st_methods_p%ROWCOUNT = 1) THEN
                    DBMS_LOB.APPEND (res,'<osdm_a_st:MethodParametersCollection>');
                  END IF;
      
                    DBMS_LOB.APPEND (res, '<osdm_a_st:MethodParameterDetails>');
                    DBMS_LOB.APPEND (res, rec_st_methods_p.param_name);
                    DBMS_LOB.APPEND (res, rec_st_methods_p.param_type);
                    DBMS_LOB.APPEND (res, '</osdm_a_st:MethodParameterDetails>');
      
                  IF (cur_st_methods_p%ROWCOUNT = rec_st_methods_p.total_row_count) THEN
                    DBMS_LOB.APPEND (res, '</osdm_a_st:MethodParametersCollection>');
                  END IF;
               END LOOP;       
              
               DBMS_LOB.APPEND (res, '</osdm_a_st:MethodDetails>');
               
           IF (cur_st_methods%ROWCOUNT = rec_st_methods.total_row_count) THEN
             DBMS_LOB.APPEND (res, '</osdm_a_st:MethodsCollection>');
           END IF;
           v_seq := v_seq + 1;
        END LOOP;
      END IF;

      -- Used in tables
      IF (reportTemplate.reportType = 0 OR reportTemplate.useSTUsedInTables = 1) THEN
        FOR rec_used_in_tables IN cur_used_in_tables(rec_all_st.st_ovid) LOOP
           IF (cur_used_in_tables%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_st:TablesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_st:TableDetails>');
      
              v_model_name := rec_used_in_tables.model_name;
              IF (v_model_name != p_model_name) THEN
                DBMS_LOB.APPEND (res,v_model_name);
                p_model_name := v_model_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_st:ModelName></osdm_a_st:ModelName>');
              END IF;
      
              v_table_name := rec_used_in_tables.table_name;
              IF (v_table_name != p_table_name) THEN
              DBMS_LOB.APPEND (res,v_table_name);
                p_table_name := v_table_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_st:TableName></osdm_a_st:TableName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
              DBMS_LOB.APPEND (res,'</osdm_a_st:TableDetails>');
           IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_st:TablesCollection>');
           END IF;
        END LOOP;
      END IF;
      
      -- Used in entities
      IF (reportTemplate.reportType = 0 OR reportTemplate.useSTUsedInEntities = 1) THEN
        FOR rec_used_in_entities IN cur_used_in_entities(rec_all_st.st_ovid) LOOP
           IF (cur_used_in_entities%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_st:EntitiesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_st:EntityDetails>');
             
              v_entity_name := rec_used_in_entities.entity_name;
              IF (v_entity_name != p_entity_name) THEN
                DBMS_LOB.APPEND (res,v_entity_name);
                p_entity_name := v_entity_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_st:EntityName></osdm_a_st:EntityName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
              DBMS_LOB.APPEND (res,'</osdm_a_st:EntityDetails>');
           IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_st:EntitiesCollection>');
           END IF;
        END LOOP;
      END IF;

      DBMS_LOB.APPEND (res,'</osdm_a_st:STDetails>');

      IF (cur_all_st%ROWCOUNT = rec_all_st.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_a_st:STCollection>');
      END IF;

  END LOOP;
  
  DBMS_LOB.APPEND (res,'</osdm_a_st:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all structured types ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllST_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllST_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_AllST_Data;

FUNCTION Gather_SingleCT_Data(v_ct_type_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

-- General data
CURSOR cur_general_data(v_ct_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_ct:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_s_ct:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_s_ct:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m,
        dmrs_collection_types ct
 WHERE  d.design_ovid = m.design_ovid
 AND    ct.model_ovid = m.model_ovid
 AND    ct.collection_type_ovid = v_ct_ovid;
rec_general_data cur_general_data%ROWTYPE;

CURSOR cur_ct_data(v_ct_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_s_ct:CTName",ct.collection_type_name).getClobVal()                                                                                   ct_name,
         XMLElement("osdm_s_ct:CTType",ct.c_type).getClobVal()                                                                                                 ct_type,
         XMLElement("osdm_s_ct:CTMaxElements",ct.max_element).getClobVal()                                                                                     max_element,
         XMLElement("osdm_s_ct:CTDataTypeKind",DECODE(ct.datatype_kind,
                                                  'Domain',         'DOM',
                                                  'Logical Type',   'LT',
                                                  'Distinct Type',  'DT',
                                                  'Ref Struct Type','RST',
                                                  'Structured Type','ST',
                                                  'Collection Type','CT')
                   ).getClobVal()                                                                                                                               dt_kind,
          XMLElement("osdm_s_ct:CTDataType", 
             DECODE(ct.datatype_kind, 
                  'Domain', ct.dt_type ||' '||
                           DECODE (NVL(ct.t_size,''),'',
                              DECODE(NVL(ct.t_scale,0),0,
                                 DECODE(NVL(ct.t_precision,0),0,null,'('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) ||')'),
                                   '('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) || ',' || DECODE(NVL(ct.t_scale,0),0,null,ct.t_scale)||')'),
                                   '('||TRIM(DECODE(ct.t_size,'',null,ct.t_size||' '||ct.char_units ))||')'),
                   'Logical Type', ct.dt_type  ||' '|| 
                           DECODE (NVL(ct.t_size,''),'',
                              DECODE(NVL(ct.t_scale,0),0,
                                 DECODE(NVL(ct.t_precision,0),0,null,'('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) ||')'),
                                   '('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) || ',' || DECODE(NVL(ct.t_scale,0),0,null,ct.t_scale)||')'),
                                   '('||TRIM(DECODE(ct.t_size,'',null,ct.t_size||' '||ct.char_units ))||')')
             )).getClobVal()                                                                                                                                    data_type,
       XMLElement("osdm_s_ct:CTDomainName",DECODE(ct.domain_name,'Unknown',null,ct.domain_name)).getClobVal()                                                   domain_name
 FROM  dmrs_collection_types ct
 WHERE ct.collection_type_ovid = v_ct_ovid;
rec_ct_data cur_ct_data%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_ct_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_ct:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_s_ct:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_s_ct:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_collection_types ct,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.collection_type_ovid = ct.collection_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Collection Type'
 AND    ct.collection_type_ovid = v_ct_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_ct_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_ct:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_s_ct:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_collection_types ct
 WHERE  e.ovid = a.container_ovid
 AND    a.collection_type_ovid = ct.collection_type_ovid
 AND    a.datatype_kind = 'Collection Type'
 AND    ct.collection_type_ovid = v_ct_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single collection type started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_s_ct:root xmlns:osdm_s_ct="osdm_s_ct">');
  
  FOR rec_general_data IN cur_general_data(v_ct_type_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_s_ct:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_s_ct:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_s_ct:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_s_ct:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_s_ct:VersionComment>');       
     
     
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;

   -- Description / Notes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
      
      DBMS_LOB.APPEND (res, '<osdm_s_ct:DescriptionNotes>');
      
      SELECT 
            NVL(
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_ct_type_ovid
                AND    t.type='Comments'),
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_ct_type_ovid
                AND    t.type='CommentsInRDBMS'))        description, 
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_ct_type_ovid
                AND    t.type='Note')                    notes
      INTO   v_description, 
             v_notes
      FROM  dual;
      
      DBMS_LOB.APPEND (res, '<osdm_s_ct:Description>');
      DBMS_LOB.APPEND (res, '<osdm_s_ct:DescriptionDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_s_ct:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_s_ct:DescriptionDetails>');
      DBMS_LOB.APPEND (res, '</osdm_s_ct:Description>');
      
      DBMS_LOB.APPEND (res, '<osdm_s_ct:Notes>');
      DBMS_LOB.APPEND (res, '<osdm_s_ct:NotesDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_s_ct:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_s_ct:NotesDetails>');
      DBMS_LOB.APPEND (res, '</osdm_s_ct:Notes>');
      DBMS_LOB.APPEND (res, '</osdm_s_ct:DescriptionNotes>');
      
   END IF;

   FOR rec_ct_data IN cur_ct_data(v_ct_type_ovid) LOOP
      DBMS_LOB.APPEND (res, rec_ct_data.ct_name);
      DBMS_LOB.APPEND (res, rec_ct_data.ct_type);
      DBMS_LOB.APPEND (res, rec_ct_data.max_element);
      DBMS_LOB.APPEND (res, rec_ct_data.data_type);
      DBMS_LOB.APPEND (res, rec_ct_data.dt_kind);
      DBMS_LOB.APPEND (res, rec_ct_data.domain_name);
   END LOOP;

   -- Used in tables
   IF (reportTemplate.reportType = 0 OR reportTemplate.useCTUsedInTables = 1) THEN
     FOR rec_used_in_tables IN cur_used_in_tables(v_ct_type_ovid) LOOP
        IF (cur_used_in_tables%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_ct:TablesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_ct:TableDetails>');

           v_model_name := rec_used_in_tables.model_name;
           IF (v_model_name != p_model_name) THEN
             DBMS_LOB.APPEND (res,v_model_name);
             p_model_name := v_model_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_ct:ModelName></osdm_s_ct:ModelName>');
           END IF;

           v_table_name := rec_used_in_tables.table_name;
           IF (v_table_name != p_table_name) THEN
           DBMS_LOB.APPEND (res,v_table_name);
             p_table_name := v_table_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_ct:TableName></osdm_s_ct:TableName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
           DBMS_LOB.APPEND (res,'</osdm_s_ct:TableDetails>');
        IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_ct:TablesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Used in entities
   IF (reportTemplate.reportType = 0 OR reportTemplate.useCTUsedInEntities = 1) THEN
     FOR rec_used_in_entities IN cur_used_in_entities(v_ct_type_ovid) LOOP
        IF (cur_used_in_entities%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_ct:EntitiesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_ct:EntityDetails>');
          
           v_entity_name := rec_used_in_entities.entity_name;
           IF (v_entity_name != p_entity_name) THEN
             DBMS_LOB.APPEND (res,v_entity_name);
             p_entity_name := v_entity_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_ct:EntityName></osdm_s_ct:EntityName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
           DBMS_LOB.APPEND (res,'</osdm_s_ct:EntityDetails>');
        IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_ct:EntitiesCollection>');
        END IF;
     END LOOP;
   END IF;
  
  DBMS_LOB.APPEND (res,'</osdm_s_ct:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single collection type ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleCT_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleCT_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_SingleCT_Data;

FUNCTION Gather_AllCT_Data(v_model_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

CURSOR cur_general_data(v_m_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_a_ct:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_a_ct:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_a_ct:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m
 WHERE  d.design_ovid = m.design_ovid
 AND    m.model_ovid = v_model_ovid;
rec_general_data cur_general_data%ROWTYPE;

-- All collection types data 
CURSOR cur_all_ct_data(v_m_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_a_ct:CTName",ct.collection_type_name).getClobVal()                                                                                   ct_name,
         XMLElement("osdm_a_ct:CTType",ct.c_type).getClobVal()                                                                                                 ct_type,
         XMLElement("osdm_a_ct:CTMaxElements",ct.max_element).getClobVal()                                                                                     max_element,
         XMLElement("osdm_a_ct:CTDataTypeKind",DECODE(ct.datatype_kind,
                                                  'Domain',         'DOM',
                                                  'Logical Type',   'LT',
                                                  'Distinct Type',  'DT',
                                                  'Ref Struct Type','RST',
                                                  'Structured Type','ST',
                                                  'Collection Type','CT')
                   ).getClobVal()                                                                                                                               dt_kind,
          XMLElement("osdm_a_ct:CTDataType", 
             DECODE(ct.datatype_kind, 
                  'Domain', ct.dt_type ||' '||
                           DECODE (NVL(ct.t_size,''),'',
                              DECODE(NVL(ct.t_scale,0),0,
                                 DECODE(NVL(ct.t_precision,0),0,null,'('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) ||')'),
                                   '('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) || ',' || DECODE(NVL(ct.t_scale,0),0,null,ct.t_scale)||')'),
                                   '('||TRIM(DECODE(ct.t_size,'',null,ct.t_size||' '||ct.char_units ))||')'),
                   'Logical Type', ct.dt_type  ||' '|| 
                           DECODE (NVL(ct.t_size,''),'',
                              DECODE(NVL(ct.t_scale,0),0,
                                 DECODE(NVL(ct.t_precision,0),0,null,'('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) ||')'),
                                   '('|| DECODE(NVL(ct.t_precision,0),0,null,ct.t_precision) || ',' || DECODE(NVL(ct.t_scale,0),0,null,ct.t_scale)||')'),
                                   '('||TRIM(DECODE(ct.t_size,'',null,ct.t_size||' '||ct.char_units ))||')')
             )).getClobVal()                                                                                                                                    data_type,
       XMLElement("osdm_a_ct:CTDomainName",DECODE(ct.domain_name,'Unknown',null,ct.domain_name)).getClobVal()                                                   domain_name,
       ct.collection_type_ovid                                                                                                                                  ct_ovid,
       COUNT(ct.collection_type_name) over()                                                                                                                    total_row_count
 FROM  dmrs_collection_types ct
 WHERE ct.model_ovid = v_m_ovid;
rec_all_ct_data cur_all_ct_data%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_ct_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_ct:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_a_ct:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_a_ct:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_collection_types ct,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.collection_type_ovid = ct.collection_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Collection Type'
 AND    ct.collection_type_ovid = v_ct_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_ct_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_ct:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_a_ct:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_collection_types ct
 WHERE  e.ovid = a.container_ovid
 AND    a.collection_type_ovid = ct.collection_type_ovid
 AND    a.datatype_kind = 'Collection Type'
 AND    ct.collection_type_ovid = v_ct_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all collection types started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_a_ct:root xmlns:osdm_a_ct="osdm_a_ct">');
  
  FOR rec_general_data IN cur_general_data(v_model_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_a_ct:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_a_ct:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_ct:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_a_ct:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_a_ct:VersionComment>');       
      
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;
 
  -- All structured types
  FOR rec_all_ct_data IN cur_all_ct_data(v_model_ovid) LOOP

      IF (cur_all_ct_data%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_a_ct:CTCollection>');
      END IF;
      
      DBMS_LOB.APPEND (res,'<osdm_a_ct:CTDetails>');

      -- Description / Notes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
   
         DBMS_LOB.APPEND (res, '<osdm_a_ct:DescriptionNotes>');
      
         SELECT 
               NVL(
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_ct_data.ct_ovid
                   AND    t.type='Comments'),
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_ct_data.ct_ovid
                   AND    t.type='CommentsInRDBMS'))        description, 
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_ct_data.ct_ovid
                   AND    t.type='Note')                    notes
         INTO   v_description, 
                v_notes
         FROM  dual;
         
         DBMS_LOB.APPEND (res, '<osdm_a_ct:Description>');
         DBMS_LOB.APPEND (res, '<osdm_a_ct:DescriptionDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_ct:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_a_ct:DescriptionDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_ct:Description>');
         
         DBMS_LOB.APPEND (res, '<osdm_a_ct:Notes>');
         DBMS_LOB.APPEND (res, '<osdm_a_ct:NotesDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_ct:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_a_ct:NotesDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_ct:Notes>');
         DBMS_LOB.APPEND (res, '</osdm_a_ct:DescriptionNotes>');

      END IF;
      
      DBMS_LOB.APPEND (res, rec_all_ct_data.ct_name);
      DBMS_LOB.APPEND (res, rec_all_ct_data.ct_type);
      DBMS_LOB.APPEND (res, rec_all_ct_data.max_element);
      DBMS_LOB.APPEND (res, rec_all_ct_data.dt_kind);
      DBMS_LOB.APPEND (res, rec_all_ct_data.data_type);
      DBMS_LOB.APPEND (res, rec_all_ct_data.domain_name);

      -- Used in tables
      IF (reportTemplate.reportType = 0 OR reportTemplate.useCTUsedInTables = 1) THEN
        FOR rec_used_in_tables IN cur_used_in_tables(rec_all_ct_data.ct_ovid) LOOP
           IF (cur_used_in_tables%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_ct:TablesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_ct:TableDetails>');
      
              v_model_name := rec_used_in_tables.model_name;
              IF (v_model_name != p_model_name) THEN
                DBMS_LOB.APPEND (res,v_model_name);
                p_model_name := v_model_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_ct:ModelName></osdm_a_ct:ModelName>');
              END IF;
      
              v_table_name := rec_used_in_tables.table_name;
              IF (v_table_name != p_table_name) THEN
              DBMS_LOB.APPEND (res,v_table_name);
                p_table_name := v_table_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_ct:TableName></osdm_a_ct:TableName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
              DBMS_LOB.APPEND (res,'</osdm_a_ct:TableDetails>');
           IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_ct:TablesCollection>');
           END IF;
        END LOOP;
      END IF;
      
      -- Used in entities
      IF (reportTemplate.reportType = 0 OR reportTemplate.useCTUsedInEntities = 1) THEN
        FOR rec_used_in_entities IN cur_used_in_entities(rec_all_ct_data.ct_ovid) LOOP
           IF (cur_used_in_entities%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_ct:EntitiesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_ct:EntityDetails>');
             
              v_entity_name := rec_used_in_entities.entity_name;
              IF (v_entity_name != p_entity_name) THEN
                DBMS_LOB.APPEND (res,v_entity_name);
                p_entity_name := v_entity_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_ct:EntityName></osdm_a_ct:EntityName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
              DBMS_LOB.APPEND (res,'</osdm_a_ct:EntityDetails>');
           IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_ct:EntitiesCollection>');
           END IF;
        END LOOP;
      END IF;
  
      DBMS_LOB.APPEND (res,'</osdm_a_ct:CTDetails>');

      IF (cur_all_ct_data%ROWCOUNT = rec_all_ct_data.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_a_ct:CTCollection>');
      END IF;

  END LOOP;
  
  DBMS_LOB.APPEND (res,'</osdm_a_ct:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all collection types ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllCT_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllCT_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_AllCT_Data;

FUNCTION Gather_SingleDT_Data(v_dt_type_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

-- General data
CURSOR cur_general_data(v_dt_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_dt:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_s_dt:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_s_dt:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m,
        dmrs_distinct_types dt
 WHERE  d.design_ovid = m.design_ovid
 AND    dt.model_ovid = m.model_ovid
 AND    dt.distinct_type_ovid = v_dt_ovid;
rec_general_data cur_general_data%ROWTYPE;

-- Distinct type data
CURSOR cur_dt_data(v_ct_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_s_dt:DTName",dt.distinct_type_name).getClobVal()                             dt_name,
         XMLElement("osdm_s_dt:DTLogicalType",dt.logical_type_name).getClobVal()                       lt_type,
         XMLElement("osdm_s_dt:DTSize",DECODE(dt.t_size,'0','',dt.t_size)).getClobVal()                dt_size,
         XMLElement("osdm_s_dt:DTPrecision",DECODE(dt.t_precision,'0','',dt.t_precision)).getClobVal() dt_precision,
         XMLElement("osdm_s_dt:DTScale",DECODE(dt.t_scale,'0','',dt.t_scale)).getClobVal()             dt_scale
 FROM  dmrs_distinct_types dt
 WHERE dt.distinct_type_ovid = v_ct_ovid;
rec_dt_data cur_dt_data%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_dt_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_dt:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_s_dt:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_s_dt:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_distinct_types dt,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.distinct_type_ovid = dt.distinct_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Distinct Type'
 AND    dt.distinct_type_ovid = v_dt_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_dt_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_s_dt:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_s_dt:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_distinct_types dt
 WHERE  e.ovid = a.container_ovid
 AND    a.distinct_type_ovid = dt.distinct_type_ovid
 AND    a.datatype_kind = 'Distinct Type'
 AND    dt.distinct_type_ovid = v_dt_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single distinct type started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_s_dt:root xmlns:osdm_s_dt="osdm_s_dt">');
  
  FOR rec_general_data IN cur_general_data(v_dt_type_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_s_dt:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_s_dt:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_s_dt:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_s_dt:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_s_dt:VersionComment>');       
     
     
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;

   -- Description / Notes
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
   
      DBMS_LOB.APPEND (res, '<osdm_s_dt:DescriptionNotes>');
      
      SELECT 
            NVL(
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_dt_type_ovid
                AND    t.type='Comments'),
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_dt_type_ovid
                AND    t.type='CommentsInRDBMS'))        description, 
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = v_dt_type_ovid
                AND    t.type='Note')                    notes
      INTO   v_description, 
             v_notes
      FROM  dual;
      
      DBMS_LOB.APPEND (res, '<osdm_s_dt:Description>');
      DBMS_LOB.APPEND (res, '<osdm_s_dt:DescriptionDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_s_dt:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_s_dt:DescriptionDetails>');
      DBMS_LOB.APPEND (res, '</osdm_s_dt:Description>');
      
      DBMS_LOB.APPEND (res, '<osdm_s_dt:Notes>');
      DBMS_LOB.APPEND (res, '<osdm_s_dt:NotesDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_s_dt:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_s_dt:NotesDetails>');
      DBMS_LOB.APPEND (res, '</osdm_s_dt:Notes>');
      DBMS_LOB.APPEND (res, '</osdm_s_dt:DescriptionNotes>');
   
   END IF;
   
   FOR rec_dt_data IN cur_dt_data(v_dt_type_ovid) LOOP
      DBMS_LOB.APPEND (res, rec_dt_data.dt_name);
      DBMS_LOB.APPEND (res, rec_dt_data.lt_type);
      DBMS_LOB.APPEND (res, rec_dt_data.dt_size);
      DBMS_LOB.APPEND (res, rec_dt_data.dt_precision);
      DBMS_LOB.APPEND (res, rec_dt_data.dt_scale);
   END LOOP;

   -- Used in tables
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDTUsedInTables = 1) THEN
     FOR rec_used_in_tables IN cur_used_in_tables(v_dt_type_ovid) LOOP
        IF (cur_used_in_tables%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_dt:TablesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_dt:TableDetails>');

           v_model_name := rec_used_in_tables.model_name;
           IF (v_model_name != p_model_name) THEN
             DBMS_LOB.APPEND (res,v_model_name);
             p_model_name := v_model_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_dt:ModelName></osdm_s_dt:ModelName>');
           END IF;

           v_table_name := rec_used_in_tables.table_name;
           IF (v_table_name != p_table_name) THEN
           DBMS_LOB.APPEND (res,v_table_name);
             p_table_name := v_table_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_dt:TableName></osdm_s_dt:TableName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
           DBMS_LOB.APPEND (res,'</osdm_s_dt:TableDetails>');
        IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_dt:TablesCollection>');
        END IF;
     END LOOP;
   END IF;

   -- Used in entities
   IF (reportTemplate.reportType = 0 OR reportTemplate.useDTUsedInEntities = 1) THEN
     FOR rec_used_in_entities IN cur_used_in_entities(v_dt_type_ovid) LOOP
        IF (cur_used_in_entities%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_s_dt:EntitiesCollection>');
        END IF;
           DBMS_LOB.APPEND (res,'<osdm_s_dt:EntityDetails>');
          
           v_entity_name := rec_used_in_entities.entity_name;
           IF (v_entity_name != p_entity_name) THEN
             DBMS_LOB.APPEND (res,v_entity_name);
             p_entity_name := v_entity_name;
           ELSE
             DBMS_LOB.APPEND (res,'<osdm_s_dt:EntityName></osdm_s_dt:EntityName>');
           END IF;

           DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
           DBMS_LOB.APPEND (res,'</osdm_s_dt:EntityDetails>');
        IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
           DBMS_LOB.APPEND (res, '</osdm_s_dt:EntitiesCollection>');
        END IF;
     END LOOP;
   END IF;
  
  DBMS_LOB.APPEND (res,'</osdm_s_dt:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for single distinct type ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleDT_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_SingleDT_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_SingleDT_Data;

FUNCTION Gather_AllDT_Data(v_model_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';
p_table_name      VARCHAR2(100) :='_';
v_table_name      VARCHAR2(100) :='';
p_entity_name     VARCHAR2(100) :='_';
v_entity_name     VARCHAR2(100) :='';

CURSOR cur_general_data(v_m_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_a_dt:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_a_dt:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                   comments,
        XMLElement("osdm_a_dt:ModelName",m.model_name).getClobVal()                                          model_name
 FROM   dmrs_designs d, 
        dmrs_models m
 WHERE  d.design_ovid = m.design_ovid
 AND    m.model_ovid = v_model_ovid;
rec_general_data cur_general_data%ROWTYPE;

-- All distinct types data 
CURSOR cur_all_dt_data(v_m_ovid IN VARCHAR2) IS
 SELECT  XMLElement("osdm_a_dt:DTName",dt.distinct_type_name).getClobVal()                             dt_name,
         XMLElement("osdm_a_dt:DTLogicalType",dt.logical_type_name).getClobVal()                       lt_type,
         XMLElement("osdm_a_dt:DTSize",DECODE(dt.t_size,'0','',dt.t_size)).getClobVal()                dt_size,
         XMLElement("osdm_a_dt:DTPrecision",DECODE(dt.t_precision,'0','',dt.t_precision)).getClobVal() dt_precision,
         XMLElement("osdm_a_dt:DTScale",DECODE(dt.t_scale,'0','',dt.t_scale)).getClobVal()             dt_scale,
         dt.distinct_type_ovid                                                                         dt_ovid,
         COUNT(dt.distinct_type_name) over()                                                           total_row_count
 FROM  dmrs_distinct_types dt
 WHERE dt.model_ovid = v_m_ovid;
rec_all_dt_data cur_all_dt_data%ROWTYPE;

-- Used In tables
CURSOR cur_used_in_tables(v_dt_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_dt:ModelName", m.model_name).getClobVal()     model_name,
        XMLElement("osdm_a_dt:TableName", t.table_name).getClobVal()     table_name,
        XMLElement("osdm_a_dt:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(m.model_name) over()                                       total_row_count
FROM   dmrs_tables t,
        dmrs_columns c,
        dmrs_distinct_types dt,
        dmrs_models  m
 WHERE  t.ovid = c.container_ovid
 AND    c.distinct_type_ovid = dt.distinct_type_ovid
 AND    m.model_ovid = t.model_ovid
 AND    c.datatype_kind = 'Distinct Type'
 AND    dt.distinct_type_ovid = v_dt_ovid
 ORDER BY m.model_name,
          t.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

-- Used In entities
CURSOR cur_used_in_entities(v_dt_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_a_dt:EntityName", e.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_a_dt:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(e.entity_name) over()                                           total_row_count
 FROM   dmrs_entities e,
        dmrs_attributes a,
        dmrs_distinct_types dt
 WHERE  e.ovid = a.container_ovid
 AND    a.distinct_type_ovid = dt.distinct_type_ovid
 AND    a.datatype_kind = 'Distinct Type'
 AND    dt.distinct_type_ovid = v_dt_ovid
 ORDER BY e.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all distinct types started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_a_dt:root xmlns:osdm_a_dt="osdm_a_dt">');
  
  FOR rec_general_data IN cur_general_data(v_model_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_a_dt:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_a_dt:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_dt:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_a_dt:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_a_dt:VersionComment>');       
     
     
     DBMS_LOB.APPEND (res, rec_general_data.model_name);
  END LOOP;
  
  -- All distinct types
  FOR rec_all_dt_data IN cur_all_dt_data(v_model_ovid) LOOP

      IF (cur_all_dt_data%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_a_dt:DTCollection>');
      END IF;
      
      DBMS_LOB.APPEND (res,'<osdm_a_dt:DTDetails>');

      -- Description / Notes
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDescriptionInfo = 1) THEN
      
         DBMS_LOB.APPEND (res, '<osdm_a_dt:DescriptionNotes>');
         
         SELECT 
               NVL(
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_dt_data.dt_ovid
                   AND    t.type='Comments'),
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_dt_data.dt_ovid
                   AND    t.type='CommentsInRDBMS'))        description, 
                  (SELECT t.text comments_in_rdbms
                   FROM   dmrs_large_text t
                   WHERE  t.ovid = rec_all_dt_data.dt_ovid
                   AND    t.type='Note')                    notes
         INTO   v_description, 
                v_notes
         FROM  dual;
         
         DBMS_LOB.APPEND (res, '<osdm_a_dt:Description>');
         DBMS_LOB.APPEND (res, '<osdm_a_dt:DescriptionDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_dt:DescriptionRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_a_dt:DescriptionDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_dt:Description>');
         
         DBMS_LOB.APPEND (res, '<osdm_a_dt:Notes>');
         DBMS_LOB.APPEND (res, '<osdm_a_dt:NotesDetails>');
         -- Tokenize rows
         FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                        FROM   dual
                        CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_a_dt:NoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
         END LOOP;
         DBMS_LOB.APPEND (res, '</osdm_a_dt:NotesDetails>');
         DBMS_LOB.APPEND (res, '</osdm_a_dt:Notes>');
         DBMS_LOB.APPEND (res, '</osdm_a_dt:DescriptionNotes>');
         
      END IF;
      
      DBMS_LOB.APPEND (res, rec_all_dt_data.dt_name);
      DBMS_LOB.APPEND (res, rec_all_dt_data.lt_type);
      DBMS_LOB.APPEND (res, rec_all_dt_data.dt_size);
      DBMS_LOB.APPEND (res, rec_all_dt_data.dt_precision);
      DBMS_LOB.APPEND (res, rec_all_dt_data.dt_scale);

      -- Used in tables
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDTUsedInTables = 1) THEN
        FOR rec_used_in_tables IN cur_used_in_tables(rec_all_dt_data.dt_ovid) LOOP
           IF (cur_used_in_tables%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_dt:TablesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_dt:TableDetails>');
      
              v_model_name := rec_used_in_tables.model_name;
              IF (v_model_name != p_model_name) THEN
                DBMS_LOB.APPEND (res,v_model_name);
                p_model_name := v_model_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_dt:ModelName></osdm_a_dt:ModelName>');
              END IF;
      
              v_table_name := rec_used_in_tables.table_name;
              IF (v_table_name != p_table_name) THEN
              DBMS_LOB.APPEND (res,v_table_name);
                p_table_name := v_table_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_dt:TableName></osdm_a_dt:TableName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
              DBMS_LOB.APPEND (res,'</osdm_a_dt:TableDetails>');
           IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_dt:TablesCollection>');
           END IF;
        END LOOP;
      END IF;
      
      -- Used in entities
      IF (reportTemplate.reportType = 0 OR reportTemplate.useDTUsedInEntities = 1) THEN
        FOR rec_used_in_entities IN cur_used_in_entities(rec_all_dt_data.dt_ovid) LOOP
           IF (cur_used_in_entities%ROWCOUNT = 1) THEN
              DBMS_LOB.APPEND (res,'<osdm_a_dt:EntitiesCollection>');
           END IF;
              DBMS_LOB.APPEND (res,'<osdm_a_dt:EntityDetails>');
             
              v_entity_name := rec_used_in_entities.entity_name;
              IF (v_entity_name != p_entity_name) THEN
                DBMS_LOB.APPEND (res,v_entity_name);
                p_entity_name := v_entity_name;
              ELSE
                DBMS_LOB.APPEND (res,'<osdm_a_dt:EntityName></osdm_a_dt:EntityName>');
              END IF;
      
              DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
              DBMS_LOB.APPEND (res,'</osdm_a_dt:EntityDetails>');
           IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
              DBMS_LOB.APPEND (res, '</osdm_a_dt:EntitiesCollection>');
           END IF;
        END LOOP;
      END IF;

      DBMS_LOB.APPEND (res,'</osdm_a_dt:DTDetails>');

      IF (cur_all_dt_data%ROWCOUNT = rec_all_dt_data.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_a_dt:DTCollection>');
      END IF;

  END LOOP;
  
  DBMS_LOB.APPEND (res,'</osdm_a_dt:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for all distinct types ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllDT_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllDT_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_AllDT_Data;

FUNCTION Gather_CR_Data(v_design_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_reason          CLOB;
v_imp_notes       CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;
p_model_name      VARCHAR2(100) :='_';
v_model_name      VARCHAR2(100) :='';

CURSOR cur_general_data(v_d_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_cr:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_cr:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                 comments
 FROM   dmrs_designs d
 WHERE  d.design_ovid = v_d_ovid;
rec_general_data cur_general_data%ROWTYPE;

CURSOR cur_all_cr(v_d_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_cr:CRName",cr.change_request_name).getClobVal()                  cr_name,
        cr.reason                                                                         cr_reason,
        XMLElement("osdm_cr:CRStatus",cr.request_status).getClobVal()                     cr_status,
        XMLElement("osdm_cr:CRCompleted",cr.is_completed).getClobVal()                    cr_completed,
        XMLElement("osdm_cr:CRRequestDate",cr.request_date_string).getClobVal()           cr_req_date,
        XMLElement("osdm_cr:CRCompletionDate",cr.completion_date_string).getClobVal()     cr_compl_date,
        cr.change_request_ovid                                                            cr_ovid,
        COUNT(cr.change_request_name) over()                                              total_row_count
 FROM   dmrs_change_requests cr
 WHERE  design_ovid = v_d_ovid;
rec_all_cr cur_all_cr%ROWTYPE;

--Impacted Objects
CURSOR cur_i_objects(v_cr_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_cr:ModelName",cre.element_model_name).getClobVal()    model_name,
        XMLElement("osdm_cr:TypeName",cre.element_type).getClobVal()           type_name,
        XMLElement("osdm_cr:ObjectName",cre.element_name).getClobVal()         obj_name,
        COUNT(cre.element_name) over()                                         total_row_count
 FROM   dmrs_change_request_elements cre
 WHERE  cre.change_request_ovid = v_cr_ovid
 ORDER BY cre.element_model_name,
          cre.element_type,
          cre.element_name;
rec_i_objects cur_i_objects%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for change requests started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_cr:root xmlns:osdm_cr="osdm_cr">');
  
  FOR rec_general_data IN cur_general_data(v_design_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_cr:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_cr:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_cr:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_cr:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_cr:VersionComment>');       
     
  END LOOP;

  FOR rec_all_cr IN cur_all_cr(v_design_ovid) LOOP

      IF (cur_all_cr%ROWCOUNT = 1) THEN
           DBMS_LOB.APPEND (res,'<osdm_cr:CRCollection>');
      END IF;
      
      DBMS_LOB.APPEND (res,'<osdm_cr:CRDetails>');

      DBMS_LOB.APPEND (res,rec_all_cr.cr_name);

      -- Comments / Notes / Implementation notes
      SELECT 
            NVL(
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = rec_all_cr.cr_ovid
                AND    t.type='Comments'),
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = rec_all_cr.cr_ovid
                AND    t.type='CommentsInRDBMS'))        description, 
               (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = rec_all_cr.cr_ovid
                AND    t.type='Note')                    notes,
                (SELECT t.text comments_in_rdbms
                FROM   dmrs_large_text t
                WHERE  t.ovid = rec_all_cr.cr_ovid
                AND    t.type='Implementation Note')     imp_note
      INTO   v_description, 
             v_notes,
             v_imp_notes
      FROM  dual;

      DBMS_LOB.APPEND (res, '<osdm_cr:CRComment>');
      DBMS_LOB.APPEND (res, '<osdm_cr:CRCommentDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_cr:CRCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_cr:CRCommentDetails>');
      DBMS_LOB.APPEND (res, '</osdm_cr:CRComment>');
      
      DBMS_LOB.APPEND (res, '<osdm_cr:CRNotes>');
      DBMS_LOB.APPEND (res, '<osdm_cr:CRNotesDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_cr:CRNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_cr:CRNotesDetails>');
      DBMS_LOB.APPEND (res, '</osdm_cr:CRNotes>');

      DBMS_LOB.APPEND (res, '<osdm_cr:CRReason>');
      DBMS_LOB.APPEND (res, '<osdm_cr:CRReasonDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_all_cr.cr_reason||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(rec_all_cr.cr_reason||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_cr:CRReasonRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_cr:CRReasonDetails>');
      DBMS_LOB.APPEND (res, '</osdm_cr:CRReason>');

      DBMS_LOB.APPEND (res,rec_all_cr.cr_status);
      DBMS_LOB.APPEND (res,rec_all_cr.cr_completed);
      DBMS_LOB.APPEND (res,rec_all_cr.cr_req_date);
      DBMS_LOB.APPEND (res,rec_all_cr.cr_compl_date);

      DBMS_LOB.APPEND (res, '<osdm_cr:CRImplementationNote>');
      DBMS_LOB.APPEND (res, '<osdm_cr:CRImplementationNoteDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_imp_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(v_imp_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
          SELECT XMLElement("osdm_cr:CRImplementationNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
          DBMS_LOB.APPEND (res, token_value);
      END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_cr:CRImplementationNoteDetails>');
      DBMS_LOB.APPEND (res, '</osdm_cr:CRImplementationNote>');

      -- Impacted Objects
      IF (reportTemplate.reportType = 0 OR reportTemplate.useCRImpactedObjects = 1) THEN
        FOR rec_i_objects IN cur_i_objects(rec_all_cr.cr_ovid) LOOP
                                                 
             IF (cur_i_objects%ROWCOUNT = 1) THEN
                DBMS_LOB.APPEND (res,'<osdm_cr:CRUsedInObjectCollection>');
             END IF;
                DBMS_LOB.APPEND (res,'<osdm_cr:CRUsedInObjectDetails>');
               
                v_model_name := rec_i_objects.model_name;
                IF (v_model_name != p_model_name) THEN
                  DBMS_LOB.APPEND (res,v_model_name);
                  p_model_name := v_model_name;
                ELSE
                  DBMS_LOB.APPEND (res,'<osdm_cr:ModelName></osdm_cr:ModelName>');
                END IF;
        
                DBMS_LOB.APPEND (res,rec_i_objects.type_name);
                DBMS_LOB.APPEND (res,rec_i_objects.obj_name);
                DBMS_LOB.APPEND (res,'</osdm_cr:CRUsedInObjectDetails>');
             IF (cur_i_objects%ROWCOUNT = rec_i_objects.total_row_count) THEN
                DBMS_LOB.APPEND (res, '</osdm_cr:CRUsedInObjectCollection>');
             END IF;
                                                                           
        END LOOP;
      END IF;
      DBMS_LOB.APPEND (res,'</osdm_cr:CRDetails>');

      IF (cur_all_cr%ROWCOUNT = rec_all_cr.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_cr:CRCollection>');
      END IF;

  END LOOP;
  
  DBMS_LOB.APPEND (res,'</osdm_cr:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for change requests ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_CR_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_CR_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_CR_Data;

FUNCTION Gather_MR_Data(v_design_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res               CLOB;
v_notes           CLOB;
v_description     CLOB;
v_rel_total_count INTEGER;
token_value       CLOB;

CURSOR cur_general_data(v_d_ovid IN VARCHAR2) IS
 -- General data
 SELECT XMLElement("osdm_mr:DesignName",d.design_name).getClobVal()                                        design_name,
        XMLElement("osdm_mr:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal()   version_date,
        d.version_comments                                                                                 comments
 FROM   dmrs_designs d
 WHERE  d.design_ovid = v_d_ovid;
rec_general_data cur_general_data%ROWTYPE;

CURSOR cur_all_measurements(v_d_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_mr:MName",mr.measurement_name).getClobVal()                                     m_name,
        XMLElement("osdm_mr:MValue",mr.measurement_value).getClobVal()                                   m_value,
        XMLElement("osdm_mr:MType",mr.measurement_type).getClobVal()                                     m_type,
        XMLElement("osdm_mr:MUnit",mr.measurement_unit).getClobVal()                                     m_unit,
        XMLElement("osdm_mr:MCreationDate",mr.measurement_cr_date).getClobVal()                          m_cr_date,
        XMLElement("osdm_mr:MEffectiveDate",mr.measurement_ef_date).getClobVal()                         m_ef_date,
        XMLElement("osdm_mr:ModelName",mr.object_model).getClobVal()                                     obj_model_name,
        XMLElement("osdm_mr:ObjectName",mr.object_name).getClobVal()                                     object_name,
        XMLElement("osdm_mr:TypeName",mr.object_type).getClobVal()                                       object_type,
        mr.measurement_ovid                                                                              m_ovid,
        COUNT(mr.measurement_name) over()                                                                total_row_count
 FROM dmrs_measurements mr
 WHERE design_ovid = v_d_ovid;
rec_all_measurements cur_all_measurements%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for measurements started ...');
  
  DBMS_LOB.CREATETEMPORARY(res, TRUE);

  DBMS_LOB.APPEND (res,'<osdm_mr:root xmlns:osdm_mr="osdm_mr">');
  
  FOR rec_general_data IN cur_general_data(v_design_ovid) LOOP

     DBMS_LOB.APPEND (res, rec_general_data.design_name);
     DBMS_LOB.APPEND (res, rec_general_data.version_date);
     
       DBMS_LOB.APPEND (res, '<osdm_mr:VersionComment>');
       DBMS_LOB.APPEND (res, '<osdm_mr:VersionCommentDetails>');
      
       -- Tokenize rows
       FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                      FROM   dual
                      CONNECT BY REGEXP_INSTR(rec_general_data.comments||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
             SELECT XMLElement("osdm_mr:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
             DBMS_LOB.APPEND (res, token_value);
          END LOOP;
         
       DBMS_LOB.APPEND (res, '</osdm_mr:VersionCommentDetails>');
       DBMS_LOB.APPEND (res, '</osdm_mr:VersionComment>');       

  END LOOP;

  IF (reportTemplate.reportType = 0 OR reportTemplate.useMRImpactedObjects = 1) THEN
    FOR rec_all_measurements IN cur_all_measurements(v_design_ovid) LOOP

      IF (cur_all_measurements%ROWCOUNT = 1) THEN
        DBMS_LOB.APPEND (res,'<osdm_mr:MCollection>');
      END IF;
        DBMS_LOB.APPEND (res,'<osdm_mr:MDetails>');

        DBMS_LOB.APPEND (res,rec_all_measurements.m_name);
        
        -- Comments
        SELECT NVL(
                 (SELECT t.text comments_in_rdbms
                  FROM   dmrs_large_text t
                  WHERE  t.ovid = rec_all_measurements.m_ovid
                  AND    t.type='Comments'),
                 (SELECT t.text comments_in_rdbms
                  FROM   dmrs_large_text t
                  WHERE  t.ovid = rec_all_measurements.m_ovid
                  AND    t.type='CommentsInRDBMS'))                      description, 
                 (SELECT t.text comments_in_rdbms
                  FROM   dmrs_large_text t
                  WHERE  t.ovid = rec_all_measurements.m_ovid
                 AND    t.type='Note')                                   notes
        INTO   v_description, 
               v_notes
        FROM dual;
        
        DBMS_LOB.APPEND (res, '<osdm_mr:MComment>');
        DBMS_LOB.APPEND (res, '<osdm_mr:MCommentDetails>');
        -- Tokenize rows
        FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                       FROM   dual
                       CONNECT BY REGEXP_INSTR(v_description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
            SELECT XMLElement("osdm_mr:MCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
            DBMS_LOB.APPEND (res, token_value);
        END LOOP;
        DBMS_LOB.APPEND (res, '</osdm_mr:MCommentDetails>');
        DBMS_LOB.APPEND (res, '</osdm_mr:MComment>');
        
        DBMS_LOB.APPEND (res, '<osdm_mr:MNotes>');
        DBMS_LOB.APPEND (res, '<osdm_mr:MNotesDetails>');
        -- Tokenize rows
        FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(v_notes||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                       FROM   dual
                       CONNECT BY REGEXP_INSTR(v_notes||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
            SELECT XMLElement("osdm_mr:MNoteRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
            DBMS_LOB.APPEND (res, token_value);
        END LOOP;
        DBMS_LOB.APPEND (res, '</osdm_mr:MNotesDetails>');
        DBMS_LOB.APPEND (res, '</osdm_mr:MNotes>');
        
        DBMS_LOB.APPEND (res,rec_all_measurements.m_value);
        DBMS_LOB.APPEND (res,rec_all_measurements.m_unit);
        DBMS_LOB.APPEND (res,rec_all_measurements.m_type);
        DBMS_LOB.APPEND (res,rec_all_measurements.m_cr_date);
        DBMS_LOB.APPEND (res,rec_all_measurements.m_ef_date);
        DBMS_LOB.APPEND (res,'<osdm_mr:MUsedInObjectCollection>');
        DBMS_LOB.APPEND (res,'<osdm_mr:MUsedInObjectDetails>');
        DBMS_LOB.APPEND (res,rec_all_measurements.obj_model_name);
        DBMS_LOB.APPEND (res,rec_all_measurements.object_type);
        DBMS_LOB.APPEND (res,rec_all_measurements.object_name);
        DBMS_LOB.APPEND (res,'</osdm_mr:MUsedInObjectDetails>');
        DBMS_LOB.APPEND (res,'</osdm_mr:MUsedInObjectCollection>');

      DBMS_LOB.APPEND (res,'</osdm_mr:MDetails>');

      IF (cur_all_measurements%ROWCOUNT = rec_all_measurements.total_row_count) THEN
          DBMS_LOB.APPEND (res,'</osdm_mr:MCollection>');
      END IF;

    END LOOP;
  END IF;
  
  DBMS_LOB.APPEND (res,'</osdm_mr:root>');

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering data for measurements ended');  

RETURN res;
  
 EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_MR_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_MR_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_MR_Data;

FUNCTION Gather_Constraint_Details_HTML(col_attr_ovid VARCHAR2) RETURN CLOB IS

clob_ CLOB;
clob_constraints CLOB;
clob_ranges CLOB;
clob_vl CLOB;

CURSOR cur_c_constraints(v_ovid IN VARCHAR2) IS
 SELECT constraint_name,
        text,
        database_type
 FROM   dmrs_check_constraints
 WHERE  dataelement_ovid = v_ovid
 ORDER BY sequence;
 rec_c_constraints cur_c_constraints % rowtype;

 CURSOR cur_ranges(v_ovid IN VARCHAR2) IS
 SELECT begin_value,
        end_value,
        short_description
 FROM   dmrs_value_ranges
 WHERE  dataelement_ovid = v_ovid
 ORDER BY sequence;
rec_ranges cur_ranges % rowtype;

CURSOR cur_valuelist_columns(v_ovid IN VARCHAR2) IS
 SELECT av.VALUE,
        av.short_description
 FROM   dmrs_avt av,
        dmrs_columns c
 WHERE  c.ovid = av.dataelement_ovid
 AND    av.dataelement_ovid = v_ovid;
rec_valuelist_columns cur_valuelist_columns % rowtype;

BEGIN

    FOR rec_c_constraints IN cur_c_constraints(col_attr_ovid) LOOP
      clob_constraints := clob_constraints 
                                           || '<tr><td>'
                                           || REPLACE(rec_c_constraints.text, Chr(10), '<br/>')
                                           || '</td><td align="center">' 
                                           || rec_c_constraints.database_type 
                                           || '</td></tr>';
    END LOOP;

    FOR rec_ranges IN cur_ranges(col_attr_ovid) LOOP
      clob_ranges := clob_ranges || '<tr><td align="right">' 
                                 || rec_ranges.begin_value 
                                 || '</td><td align="right">' 
                                 || rec_ranges.end_value 
                                 || '</td><td>' 
                                 || REPLACE(rec_ranges.short_description, Chr(10), '<br/>')
                                 || '</td></tr>';
    END LOOP;

    FOR rec_valuelist_columns IN cur_valuelist_columns(col_attr_ovid) LOOP
      clob_vl := clob_vl || '<tr><td align="right">' 
                         || rec_valuelist_columns.VALUE 
                         || '</td><td>' 
                         || REPLACE(rec_valuelist_columns.short_description, Chr(10), '<br/>')
                         || '</td></tr>';

    END LOOP;

    IF (clob_constraints IS NULL AND clob_ranges IS NULL AND clob_vl IS NULL) THEN
      RETURN '';
    ELSE
        
      clob_ := '<table class="inlineTable">';

      IF clob_constraints IS NOT NULL THEN
        clob_ := clob_ || '<tr><th>';
        clob_ := clob_ || '<table class="inlineTable">';
        clob_ := clob_ || '<tr><th colspan="3">Check Constraint</th></tr>';
        clob_ := clob_ || '<tr><th>Text</th><th>DB Type</th></tr>';
        clob_ := clob_ || clob_constraints;
        clob_ := clob_ || '</table>';
        clob_ := clob_ || '</th></tr>';
      END IF;

      IF clob_ranges IS NOT NULL THEN
        clob_ := clob_ || '<tr><th>';
        clob_ := clob_ || '<table class="inlineTable">';
        clob_ := clob_ || '<tr><th colspan="3">Ranges</th></tr>';
        clob_ := clob_ || '<tr><th>Begin Value</th><th>End Value</th><th>Description</th></tr>';
        clob_ := clob_ || clob_ranges;
        clob_ := clob_ || '</table>';
        clob_ := clob_ || '</th></tr>';
      END IF;

      IF clob_vl IS NOT NULL THEN
        clob_ := clob_ || '<tr><th>';
        clob_ := clob_ || '<table class="inlineTable">';
        clob_ := clob_ || '<tr><th colspan="2">Value List</th></tr>';
        clob_ := clob_ || '<tr><th>Value</th><th>Description</th></tr>';
        clob_ := clob_ || clob_vl;
        clob_ := clob_ || '</table>';
        clob_ := clob_ || '</th></tr>';
      END IF;

      clob_ := clob_ || '</table>';

      RETURN clob_;

    END IF;

EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Constraint_Details_HTML Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Constraint_Details_HTML Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN clob_;
  
END Gather_Constraint_Details_HTML;

FUNCTION Gather_Domain_Constraints_HTML (domain_ovid VARCHAR2) RETURN CLOB IS

clob_            CLOB;
clob_constraints CLOB;
clob_ranges      CLOB;
clob_vl          CLOB;

CURSOR cur_c_constraints(v_c_ovid IN VARCHAR2) IS
 SELECT NVL(text,' ')           text,
        NVL(database_type,' ')  database_type
 FROM   dmrs_domain_check_constraints
 WHERE  domain_ovid = v_c_ovid
 ORDER BY sequence;
rec_c_constraints cur_c_constraints%rowtype;

CURSOR cur_ranges(v_c_ovid IN VARCHAR2) IS
 SELECT NVL(begin_value,' ')           begin_value,
        NVL(end_value, ' ')            end_value,
        NVL(short_description,' ')     short_description
 FROM   dmrs_domain_value_ranges
 WHERE  domain_ovid = v_c_ovid
 ORDER BY sequence;
rec_ranges cur_ranges%rowtype;

CURSOR cur_valuelist_columns(v_c_ovid IN VARCHAR2) IS
 SELECT NVL(av.value,' ')             value,
        NVL(av.short_description,' ') short_description
 FROM   dmrs_domain_avt av
 WHERE  av.domain_ovid = v_c_ovid;
rec_valuelist_columns cur_valuelist_columns%rowtype;

BEGIN
    
    DBMS_LOB.CREATETEMPORARY(clob_constraints, TRUE);
    DBMS_LOB.CREATETEMPORARY(clob_ranges, TRUE);
    DBMS_LOB.CREATETEMPORARY(clob_vl, TRUE);
    DBMS_LOB.CREATETEMPORARY(clob_, TRUE);
    
    FOR rec_c_constraints IN cur_c_constraints(domain_ovid) LOOP
        DBMS_LOB.APPEND (clob_constraints, '<tr><td>');
        DBMS_LOB.APPEND (clob_constraints, REPLACE(rec_c_constraints.text, Chr(10), '<br/>'));
        DBMS_LOB.APPEND (clob_constraints, '</td><td align="center">' );
        DBMS_LOB.APPEND (clob_constraints, rec_c_constraints.database_type );
        DBMS_LOB.APPEND (clob_constraints, '</td></tr>');
    END LOOP;

    FOR rec_ranges IN cur_ranges(domain_ovid) LOOP
        DBMS_LOB.APPEND (clob_ranges,'<tr><td align="right">');
        DBMS_LOB.APPEND (clob_ranges, rec_ranges.begin_value);
        DBMS_LOB.APPEND (clob_ranges,'</td><td align="right">');    
        DBMS_LOB.APPEND (clob_ranges, rec_ranges.end_value);
        DBMS_LOB.APPEND (clob_ranges,'</td><td>');
        DBMS_LOB.APPEND (clob_ranges,REPLACE(rec_ranges.short_description, Chr(10), '<br/>'));
        DBMS_LOB.APPEND (clob_ranges,'</td></tr>');
    END LOOP;

    FOR rec_valuelist_columns IN cur_valuelist_columns(domain_ovid) LOOP
        DBMS_LOB.APPEND (clob_vl,'<tr><td align="right">');
        DBMS_LOB.APPEND (clob_vl,rec_valuelist_columns.VALUE);
        DBMS_LOB.APPEND (clob_vl,'</td><td>'); 
        DBMS_LOB.APPEND (clob_vl,REPLACE(rec_valuelist_columns.short_description, Chr(10), '<br/>'));
        DBMS_LOB.APPEND (clob_vl,'</td></tr>');
    END LOOP;

    IF (clob_constraints IS NULL AND clob_ranges IS NULL AND clob_vl IS NULL) THEN
      RETURN '';
    ELSE

      DBMS_LOB.APPEND (clob_, '<table class="inlineTable">');

      IF clob_constraints IS NOT NULL THEN
         DBMS_LOB.APPEND (clob_,'<tr><th>');
         DBMS_LOB.APPEND (clob_,'<table class="inlineTable">');
         DBMS_LOB.APPEND (clob_,'<tr><th colspan="3">Check Constraint</th></tr>');
         DBMS_LOB.APPEND (clob_,'<tr><th>Text</th><th>DB Type</th></tr>');
         DBMS_LOB.APPEND (clob_,clob_constraints);
         DBMS_LOB.APPEND (clob_,'</table>');
         DBMS_LOB.APPEND (clob_,'</th></tr>');
      END IF;

      IF clob_ranges IS NOT NULL THEN
         DBMS_LOB.APPEND (clob_,'<tr><th>');
         DBMS_LOB.APPEND (clob_,'<table class="inlineTable">');
         DBMS_LOB.APPEND (clob_,'<tr><th colspan="3">Ranges</th></tr>');
         DBMS_LOB.APPEND (clob_,'<tr><th>Begin Value</th><th>End Value</th><th>Description</th></tr>');
         DBMS_LOB.APPEND (clob_,clob_ranges);
         DBMS_LOB.APPEND (clob_,'</table>');
         DBMS_LOB.APPEND (clob_,'</th></tr>');
      END IF;

      IF clob_vl IS NOT NULL THEN
         DBMS_LOB.APPEND (clob_,'<tr><th>');
         DBMS_LOB.APPEND (clob_,'<table class="inlineTable">');
         DBMS_LOB.APPEND (clob_,'<tr><th colspan="2">Value List</th></tr>');
         DBMS_LOB.APPEND (clob_,'<tr><th>Value</th><th>Description</th></tr>');
         DBMS_LOB.APPEND (clob_,clob_vl);
         DBMS_LOB.APPEND (clob_,'</table>');
         DBMS_LOB.APPEND (clob_,'</th></tr>');
      END IF;

      DBMS_LOB.APPEND (clob_,'</table>');
    END IF;

 RETURN clob_;
 
EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Domain_Constraints_HTML Exception : : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Domain_Constraints_HTML Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN clob_;

END Gather_Domain_Constraints_HTML;

FUNCTION Gather_Domain_Constraints_XML(domain_ovid VARCHAR2) RETURN CLOB IS

res          CLOB;
v_cc_created BOOLEAN := FALSE;

CURSOR cur_c_constraints(v_c_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:Text",d.text).getClobVal()                  text,
        XMLElement("osdm_ad:DatabaseType",d.database_type).getClobVal() database_type,
        COUNT(text) over()                                              total_row_count
 FROM   dmrs_domain_check_constraints d
 WHERE  d.domain_ovid = v_c_ovid
 ORDER BY d.database_type;
rec_c_constraints cur_c_constraints%rowtype;

CURSOR cur_ranges(v_c_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:RangeBeginValue",d.begin_value).getClobVal()             begin_value,
        XMLElement("osdm_ad:RangeEndValue",d.end_value).getClobVal()                 end_value,
        XMLElement("osdm_ad:RangeShortDescription",d.short_description).getClobVal() short_description,
        COUNT(begin_value) over() total_row_count
 FROM   dmrs_domain_value_ranges d
 WHERE  d.domain_ovid = v_c_ovid
 ORDER BY d.begin_value, 
          d.end_value,
          d.short_description;
rec_ranges cur_ranges%rowtype;

CURSOR cur_valuelist_columns(v_c_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:VLValue",av.value).getClobVal()                         v_value, 
        XMLElement("osdm_ad:VLShortDescription",av.short_description).getClobVal()  short_description,
        COUNT(value) over() total_row_count
 FROM   dmrs_domain_avt av
 WHERE  av.domain_ovid = v_c_ovid
 ORDER BY av.value, 
          av.short_description;
rec_valuelist_columns cur_valuelist_columns%rowtype;

BEGIN

    DBMS_LOB.CREATETEMPORARY(res, TRUE);

    FOR rec_ranges IN cur_ranges(domain_ovid) LOOP
       IF (cur_ranges%ROWCOUNT = 1) THEN
          IF NOT v_cc_created THEN 
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintsCollection>');
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintDetails>');
            v_cc_created := TRUE;
          END IF;
          DBMS_LOB.APPEND (res,'<osdm_ad:RangesCollection>');
       END IF;
          DBMS_LOB.APPEND (res,'<osdm_ad:RangeDetails>');
          DBMS_LOB.APPEND (res,rec_ranges.begin_value);
          DBMS_LOB.APPEND (res,rec_ranges.end_value);
          DBMS_LOB.APPEND (res,rec_ranges.short_description);
          DBMS_LOB.APPEND (res,'</osdm_ad:RangeDetails>');
       IF (cur_ranges%ROWCOUNT = rec_ranges.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_ad:RangesCollection>');
       END IF;
    END LOOP;

    FOR rec_valuelist_columns IN cur_valuelist_columns(domain_ovid) LOOP
       IF (cur_valuelist_columns%ROWCOUNT = 1) THEN
          IF NOT v_cc_created THEN 
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintsCollection>');
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintDetails>');
            v_cc_created := TRUE;
          END IF;
          DBMS_LOB.APPEND (res,'<osdm_ad:ValueListsCollection>');
       END IF;
          DBMS_LOB.APPEND (res,'<osdm_ad:ValueListDetails>');
          DBMS_LOB.APPEND (res,rec_valuelist_columns.v_value);
          DBMS_LOB.APPEND (res,rec_valuelist_columns.short_description);
          DBMS_LOB.APPEND (res,'</osdm_ad:ValueListDetails>');
       IF (cur_valuelist_columns%ROWCOUNT = rec_valuelist_columns.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_ad:ValueListsCollection>');
       END IF;
    END LOOP;
   
    FOR rec_c_constraints IN cur_c_constraints(domain_ovid) LOOP
       IF (cur_c_constraints%ROWCOUNT = 1) THEN
          IF NOT v_cc_created THEN 
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintsCollection>');
            DBMS_LOB.APPEND (res, '<osdm_ad:ConstraintDetails>');
            v_cc_created := TRUE;
          END IF;
          DBMS_LOB.APPEND (res,'<osdm_ad:CheckConstraintsCollection>');
       END IF;
       
          DBMS_LOB.APPEND (res,'<osdm_ad:CheckConstraintDetails>');
          DBMS_LOB.APPEND (res,rec_c_constraints.text);
          DBMS_LOB.APPEND (res,rec_c_constraints.database_type);
          DBMS_LOB.APPEND (res,'</osdm_ad:CheckConstraintDetails>');
       IF (cur_c_constraints%ROWCOUNT = rec_c_constraints.total_row_count) THEN
          DBMS_LOB.APPEND (res, '</osdm_ad:CheckConstraintsCollection>');
       END IF;
    END LOOP;

    IF v_cc_created THEN 
       DBMS_LOB.APPEND (res, '</osdm_ad:ConstraintDetails>');
       DBMS_LOB.APPEND (res, '</osdm_ad:ConstraintsCollection>');
    END IF;

  RETURN res;

EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Domain_Constraints_XML Exception : : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_Domain_Constraints_XML Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
  
END Gather_Domain_Constraints_XML;

FUNCTION Gather_AllDomains_Data(v_obj_ovid IN VARCHAR2, reportTemplate IN REPORT_TEMPLATE) RETURN CLOB IS 

res          CLOB;
token_value  CLOB;

-- Common Data
CURSOR cur_common_data(v_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:DesignName",d.design_name).getClobVal()                                      design_name,
        XMLElement("osdm_ad:VersionDate",TO_CHAR(d.date_published,'dd.mm.yyyy hh24:mi:ss')).getClobVal() version_date,
        d.version_comments                                                                               version_comment
 FROM   dmrs_designs d
 WHERE  d.design_ovid = v_ovid;
rec_common_data cur_common_data%ROWTYPE;

CURSOR cur_all_domains(v_o_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:DomainName", d.domain_name).getClobVal()                        domain_name, 
        XMLElement("osdm_ad:Synonyms", d.synonyms).getClobVal()                             synonyms,
        XMLElement("osdm_ad:DataType", d.native_type  ||' '||
           DECODE (NVL(d.t_size,''),'',
           DECODE(NVL(d.t_scale,0),0,
                DECODE(NVL(d.t_precision,0),0,null,'('|| DECODE(NVL(d.t_precision,0),0,null,d.t_precision) ||')'),
                        '('|| DECODE(NVL(d.t_precision,0),0,null,d.t_precision) || ',' || DECODE(NVL(d.t_scale,0),0,null,d.t_scale)||')'),
       '('||TRIM(DECODE(d.t_size,'',null,d.t_size||' '||d.char_units ))||')')).getClobVal()  data_type,
        XMLElement("osdm_ad:LogicalType", d.lt_name).getClobVal()                           lt_name,
        XMLElement("osdm_ad:UnitOfMeasure", d.unit_of_measure).getClobVal()                 unit_of_measure,
        XMLElement("osdm_ad:DefaultValue", d.default_value).getClobVal()                    default_value,
        Gather_Domain_Constraints_XML(d.ovid)                                               constraint_details,
        d.ovid                                                                              domain_ovid,
        COUNT(d.domain_name) over()                                                         total_row_count
 FROM   dmrs_domains d
 WHERE  d.design_ovid = v_o_ovid
 ORDER BY d. domain_name;
rec_all_domains cur_all_domains%ROWTYPE;

CURSOR cur_description(v_d_ovid IN VARCHAR2) IS
 SELECT lt.text  description
 FROM   dmrs_large_text lt
 WHERE  lt.ovid = v_d_ovid;
rec_description cur_description%ROWTYPE;

CURSOR cur_used_in_tables(v_d_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:ModelName", c.model_name).getClobVal()     model_name,
        XMLElement("osdm_ad:TableName", c.table_name).getClobVal()     table_name,
        XMLElement("osdm_ad:ColumnName", c.column_name).getClobVal()   column_name,
        COUNT(c.model_name) over()                                     total_row_count
 FROM   dmrs_columns c,
        dmrs_domains d
 WHERE  d.ovid = v_d_ovid
 AND    c.domain_ovid = d.ovid
 ORDER BY c.model_name,
          c.table_name,
          c.column_name;
rec_used_in_tables cur_used_in_tables%ROWTYPE;

CURSOR cur_used_in_entities(v_d_ovid IN VARCHAR2) IS
 SELECT XMLElement("osdm_ad:EntityName", a.entity_name).getClobVal()        entity_name,
        XMLElement("osdm_ad:AttributeName", a.attribute_name).getClobVal()  attribute_name,
        COUNT(a.entity_name) over()                                         total_row_count
 FROM   dmrs_attributes a,
        dmrs_domains d
 WHERE  d.ovid = v_d_ovid
 AND    a.domain_ovid = d.ovid
 ORDER BY a.entity_name,
          a.attribute_name;
rec_used_in_entities cur_used_in_entities%ROWTYPE;

BEGIN

  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering all domains data started ...');

  DBMS_LOB.CREATETEMPORARY(res, TRUE);
  DBMS_LOB.APPEND (res,'<osdm_ad:root xmlns:osdm_ad="osdm_ad">');

   -- Common Data
   FOR rec_common_data IN cur_common_data(v_obj_ovid) LOOP

      DBMS_LOB.APPEND (res, rec_common_data.design_name);
      DBMS_LOB.APPEND (res, rec_common_data.version_date);  
        
      DBMS_LOB.APPEND (res, '<osdm_ad:VersionComment>');
      DBMS_LOB.APPEND (res, '<osdm_ad:VersionCommentDetails>');
      -- Tokenize rows
      FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                     FROM   dual
                     CONNECT BY REGEXP_INSTR(rec_common_data.version_comment||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP

           SELECT XMLElement("osdm_ad:VersionCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
           DBMS_LOB.APPEND (res, token_value);                   
       END LOOP;
      DBMS_LOB.APPEND (res, '</osdm_ad:VersionCommentDetails>');
      DBMS_LOB.APPEND (res, '</osdm_ad:VersionComment>');
   END LOOP;

   FOR rec_all_domains IN cur_all_domains(v_obj_ovid) LOOP
      IF (cur_all_domains%ROWCOUNT = 1) THEN
        DBMS_LOB.APPEND (res,'<osdm_ad:DomainsCollection>');
      END IF;

        DBMS_LOB.APPEND (res,'<osdm_ad:DomainDetails>');
         
        DBMS_LOB.APPEND (res,rec_all_domains.domain_name);
        DBMS_LOB.APPEND (res,rec_all_domains.synonyms);
        DBMS_LOB.APPEND (res,rec_all_domains.data_type);
        DBMS_LOB.APPEND (res,rec_all_domains.lt_name);
        DBMS_LOB.APPEND (res,rec_all_domains.unit_of_measure);
        DBMS_LOB.APPEND (res,rec_all_domains.default_value);
        
        DBMS_LOB.APPEND (res, '<osdm_ad:DomainComment>');
        DBMS_LOB.APPEND (res, '<osdm_ad:DomainCommentDetails>');

        FOR rec_description IN cur_description(rec_all_domains.domain_ovid) LOOP
           -- Tokenize rows
           FOR token IN ( SELECT REGEXP_REPLACE(REGEXP_SUBSTR(rec_description.description||Chr(10), '(.*'||Chr(10)||')', 1, LEVEL ), Chr(10), '') t
                          FROM   dual
                          CONNECT BY REGEXP_INSTR(rec_description.description||Chr(10), '(.*'||Chr(10)||')',1, LEVEL ) > 0) LOOP
                          
               SELECT XMLElement("osdm_ad:DomainCommentRow", XMLCDATA(token.t)).getClobVal() INTO token_value FROM dual;
               DBMS_LOB.APPEND (res, token_value);                                                                       
           END LOOP;
           
        END LOOP;
        DBMS_LOB.APPEND (res, '</osdm_ad:DomainCommentDetails>');
        DBMS_LOB.APPEND (res, '</osdm_ad:DomainComment>');       
      
        -- Constraints
        IF (reportTemplate.reportType = 0 OR reportTemplate.useDomainConstraints = 1) THEN
          DBMS_LOB.APPEND (res,rec_all_domains.constraint_details);
        END IF;

        -- Used in tables
        IF (reportTemplate.reportType = 0 OR reportTemplate.useDomainUsedInTables = 1) THEN
          FOR rec_used_in_tables IN cur_used_in_tables(rec_all_domains.domain_ovid) LOOP
             IF (cur_used_in_tables%ROWCOUNT = 1) THEN
                DBMS_LOB.APPEND (res,'<osdm_ad:TablesCollection>');
             END IF;
                DBMS_LOB.APPEND (res,'<osdm_ad:TableDetails>');
                DBMS_LOB.APPEND (res,rec_used_in_tables.model_name);
                DBMS_LOB.APPEND (res,rec_used_in_tables.table_name);
                DBMS_LOB.APPEND (res,rec_used_in_tables.column_name);
                DBMS_LOB.APPEND (res,'</osdm_ad:TableDetails>');
             IF (cur_used_in_tables%ROWCOUNT = rec_used_in_tables.total_row_count) THEN
                DBMS_LOB.APPEND (res, '</osdm_ad:TablesCollection>');
             END IF;
          END LOOP;
        END IF;

        -- Used in entities
        IF (reportTemplate.reportType = 0 OR reportTemplate.useDomainUsedInEntities = 1) THEN
          FOR rec_used_in_entities IN cur_used_in_entities(rec_all_domains.domain_ovid) LOOP
             IF (cur_used_in_entities%ROWCOUNT = 1) THEN
                DBMS_LOB.APPEND (res,'<osdm_ad:EntitiesCollection>');
             END IF;
                DBMS_LOB.APPEND (res,'<osdm_ad:EntityDetails>');
                DBMS_LOB.APPEND (res,rec_used_in_entities.entity_name);
                DBMS_LOB.APPEND (res,rec_used_in_entities.attribute_name);
                DBMS_LOB.APPEND (res,'</osdm_ad:EntityDetails>');
             IF (cur_used_in_entities%ROWCOUNT = rec_used_in_entities.total_row_count) THEN
                DBMS_LOB.APPEND (res, '</osdm_ad:EntitiesCollection>');
             END IF;
          END LOOP;
        END IF;

        DBMS_LOB.APPEND (res,'</osdm_ad:DomainDetails>');

      IF (cur_all_domains%ROWCOUNT = rec_all_domains.total_row_count) THEN
       DBMS_LOB.APPEND (res, '</osdm_ad:DomainsCollection>');
      END IF;
   END LOOP;

  DBMS_LOB.APPEND (res,'</osdm_ad:root>');
  
  UTL_FILE.PUT_LINE(log_file, TO_CHAR(SYSDATE,'yy.mm.dd hh:mi:ss') ||' '|| 'Gathering all domains data ended');

RETURN res;

EXCEPTION
 WHEN others THEN
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllDomains_Data Exception : ' || SQLERRM);  
  UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Gather_AllDomains_Data Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  RETURN res;
 
END Gather_AllDomains_Data;  

FUNCTION Create_Log_File(v_reports_dir IN VARCHAR2) RETURN NUMBER IS 

insufficient_privileges EXCEPTION;
PRAGMA EXCEPTION_INIT(insufficient_privileges, -01031);

BEGIN

 IF v_reports_dir IS NOT NULL THEN
  EXECUTE IMMEDIATE 'CREATE OR REPLACE DIRECTORY OSDDM_REPORTS_DIR AS '''|| v_reports_dir ||'''';
  EXECUTE IMMEDIATE 'GRANT READ, WRITE ON DIRECTORY OSDDM_REPORTS_DIR TO PUBLIC';
 END IF;

 log_file := UTL_FILE.Fopen('OSDDM_REPORTS_DIR','osddm_reports.log','w', 32767);

RETURN 0;

 EXCEPTION
  WHEN UTL_FILE.Invalid_Path THEN
   RETURN 1;
  WHEN  UTL_FILE.Read_Error OR UTL_FILE.Write_Error OR UTL_FILE.Access_Denied THEN 
   RETURN 2;
  WHEN insufficient_privileges THEN
   RETURN 3;

END Create_Log_File;

PROCEDURE Generate_Report(v_rep_id           IN NUMBER,
                          v_obj_ovid         IN VARCHAR2,
                          v_mode             IN NUMBER,
                          v_reports_dir      IN VARCHAR2,
                          v_compress         IN NUMBER, 
                          reportTemplate     IN REPORT_TEMPLATE,
                          v_raw_xml         OUT BFILE, 
                          v_status          OUT NUMBER, 
                          osddm_reports_dir OUT VARCHAR2) IS

raw_xml_fn        CONSTANT VARCHAR2(20) := 'report_data_rs.xml';
res               CLOB;
db_data_clob      CLOB;
v_blob						BLOB;
v_blob_xml				BLOB;
v_dest_offset			INTEGER := 1;
v_src_offset			INTEGER := 1;
warning						INTEGER;
rseq              INTEGER;
nseq              INTEGER;
v_lang_context		NUMBER 	:= DBMS_LOB.Default_Lang_Ctx;
v_p_doc_xml_lngth NUMBER;
j_status          NUMBER;
db_version        VARCHAR2(100);

BEGIN

    v_status := Create_Log_File(v_reports_dir);

    IF (v_status = 0)  THEN

      DBMS_LOB.CREATETEMPORARY(v_blob, TRUE);
      DBMS_LOB.CREATETEMPORARY(v_blob_xml, TRUE);
      DBMS_LOB.CREATETEMPORARY(db_data_clob, TRUE);
      
      DBMS_LOB.APPEND (db_data_clob,'<?xml version = ''1.0'' encoding = ''UTF-8''?>');

      IF v_rep_id = 1 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_SingleTable_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 2 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllTables_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 3 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_SingleEntity_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 4 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllEntities_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 5 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllDomains_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 6 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_Glossary_Data(v_obj_ovid));
      ELSIF v_rep_id = 7 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_SingleST_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 8 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllST_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 9 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_SingleCT_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 10 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllCT_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 11 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_SingleDT_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 12 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_AllDT_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 13 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_CR_Data(v_obj_ovid, reportTemplate));
      ELSIF v_rep_id = 14 THEN
         DBMS_LOB.APPEND (db_data_clob, Gather_MR_Data(v_obj_ovid, reportTemplate));
      END IF;

	    SELECT banner
      INTO   db_version
      FROM   v$version
      WHERE  banner LIKE 'Oracle%';

      -- raw xml
      DBMS_LOB.CONVERTTOBLOB(v_blob_xml,
                             db_data_clob,
                             DBMS_LOB.LOBMAXSIZE,
                             v_dest_offset,
                             v_src_offset,
                             DBMS_LOB.DEFAULT_CSID,
                             v_lang_context,
                             warning);
      Generate_OS_File(v_blob_xml, raw_xml_fn, 0);
      v_raw_xml := BFILENAME('OSDDM_REPORTS_DIR', raw_xml_fn);

      UTL_FILE.fclose(log_file);

   END IF;

COMMIT;

   SELECT directory_path
   INTO   osddm_reports_dir
   FROM   all_directories
   WHERE  directory_name = 'OSDDM_REPORTS_DIR';

EXCEPTION

   WHEN others THEN
     ROLLBACK;
     IF (v_mode = 1) THEN
        UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_Report Exception : ' || SQLERRM);  
        UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_Report Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        UTL_FILE.fclose(log_file);
     ELSIF (v_mode = 2) THEN
        htp.p('<br/>');
        htp.p('<br/>');
        htp.p('Error occured during report generation:');
        htp.p('<br/>');
        htp.p('Pkg_Osdm_Utils.Generate_Report Exception:');
        htp.p(sqlerrm);
        htp.p('<br/>');
        htp.p('For more details see the report generation log file in OSDDM_REPORTS_DIR directory.');
        UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_Report Exception : ' || SQLERRM);  
        UTL_FILE.PUT_LINE(log_file, 'Pkg_Osdm_Utils.Generate_Report Exception : ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
     END IF;
     
     IF UTL_FILE.is_open(log_file) THEN
        UTL_FILE.fclose(log_file);
     END IF;
     IF UTL_FILE.is_open(temp_file) THEN
        UTL_FILE.fclose(temp_file);
     END IF;

END Generate_Report;

END PKG_OSDM_UTILS;

/
--------------------------------------------------------
--  DDL for Procedure ADD_ODEME_TIPI
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ORS"."ADD_ODEME_TIPI" 
  (  p_odemetip_id          odemetipi.id%type,
     p_odemeadi      odemetipi.odemeadi%type
  )
IS
BEGIN
  INSERT INTO odemetipi (id, odemeadi)
    VALUES(p_odemetip_id, p_odemeadi);
END add_odeme_tipi;

/
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

/
