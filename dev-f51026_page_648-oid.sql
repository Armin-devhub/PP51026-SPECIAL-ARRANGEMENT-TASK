prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>24354670679926398
,p_default_application_id=>510
,p_default_id_offset=>207890427743817395
,p_default_owner=>'PLUTO_PREMIUM'
);
end;
/
 
prompt APPLICATION 510 - PLUTO PREMIUM STAFF 26
--
-- Application Export:
--   Application:     510
--   Name:            PLUTO PREMIUM STAFF 26
--   Exported By:     ARMI
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 648
--   Manifest End
--   Version:         26.1.2
--   Instance ID:     743313311300662
--

begin
null;
end;
/
prompt --application/pages/delete_00648
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>648);
end;
/
prompt --application/pages/page_00648
begin
wwv_flow_imp_page.create_page(
 p_id=>648
,p_name=>'Profile'
,p_alias=>'PROFILE'
,p_step_title=>'Profile'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@keyframes Blink {',
'    0% {color:blue;}',
'    50%{color: red;}',
'    100% {color:blue;}',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(257347965033978822)
,p_plug_name=>'1 (One) Time Discount '
,p_static_id=>'1-one-time-discount'
,p_parent_plug_id=>wwv_flow_imp.id(845117743719686847)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    A.TRANSACTION_NUMBER,',
'    A.TYPE_OF_FEES,',
'    A.TRANSACTION_STATUS,',
'    A.TRANSACTION_AMOUNT,',
'    (CASE WHEN A.TRANSACTION_STATUS = ''Active'' THEN',
'        ''Cancel''',
'    END) ACTION',
'FROM STUDENT_FEE_MASTER A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE = ''Discount'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'1 (One) Time Discount '
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(257348120597978823)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>230292162870153094
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92725934544109204)
,p_db_column_name=>'ACTION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:664:&SESSION.::&DEBUG.:664:P664_SFM_KEY:#SFM_KEY#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92723458496109204)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Due Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92722705273109203)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92722287014109203)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92725538853109204)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92723080771109203)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92724321513109204)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92725114947109204)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92723917736109204)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92724741407109204)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(257364484228081969)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656703'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:SFM_KEY:TRANSACTION_DATE:PAYMENT_DUE_DATE:TRANSACTION_TYPE:TRANSACTION_NUMBER:TYPE_OF_FEES:TRANSACTION_STATUS:TRANSACTION_AMOUNT:ACTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712103699954805502)
,p_plug_name=>'A-Level Qualification'
,p_static_id=>'a-level-qualification'
,p_parent_plug_id=>wwv_flow_imp.id(711058361929117804)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(254585728302192322)
,p_plug_name=>'ACADEMIC INFORMATION'
,p_static_id=>'academic-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHL''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720011645808716713)
,p_plug_name=>'Academic Documents'
,p_static_id=>'academic-documents'
,p_parent_plug_id=>wwv_flow_imp.id(720011543767716712)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_DOCUMENT_KEY,',
'    A.DOCUMENT_IMAGE,',
'    A.DOCUMENT_DESCRIPTION,',
'    A.DOCUMENT_TYPE,',
'    A.DOCUMENET_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.IMAGE_TYPE,',
'    A.IMAGE_FILE_NAME,',
'    A.INSTITUTE_KEY,',
'    A.BFILE_IDENTIFIER_ID',
'FROM STUDENT_DOCUMENT_IMAGING A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.SD_KEY IN (SELECT SD_KEY FROM COURSE_APPLIED_CHECK_LIST',
'                 WHERE SD_KEY = A.SD_KEY)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Academic Documents'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720011775976716715)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>692955818248890986
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92607760211109151)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92605814274109151)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92604959584109150)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92604634614109150)
,p_db_column_name=>'DOCUMENT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Image'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92605398637109150)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92607050665109151)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92606593746109151)
,p_db_column_name=>'IMAGE_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Image Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92607373796109151)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92606245972109151)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92604192574109150)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:687:&SESSION.::&DEBUG.:687:P687_STUDENT_DOCUMENT_KEY,P687_CTRL_PROC:#STUDENT_DOCUMENT_KEY#,STUDENT'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92603813582109150)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720107146378950382)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENET_DATE:DOCUMENT_TYPE:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(711058287891117803)
,p_plug_name=>'Academic Information and Attachments'
,p_static_id=>'academic-information-and-attachments'
,p_parent_plug_id=>wwv_flow_imp.id(253587559346377532)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(325993758700284869)
,p_plug_name=>'Academic Records'
,p_static_id=>'academic-records'
,p_parent_plug_id=>wwv_flow_imp.id(325946584932089395)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>45
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT ',
'    A.SC_SUB_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.STUDENT_NUMBER,',
'    A.SCS_KEY,',
'    A.COURSE_KEY,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    A.STUDY_INTAKE,',
'    A.SUBJECT_KEY,',
'    A.SUBJECT_CODE,',
'    A.SUBJECT_NAME,',
'    A.CREDIT_HOURS,',
'    A.FINAL_MARKS,',
'    A.FINAL_GRADE,',
'    A.SUBJECT_STATUS',
'FROM V_STUDENT_PROGRAMME_SUBJECT A',
'WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY ',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY */',
'',
'-- ',
'',
'',
'SELECT ',
'    A.SC_SUB_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.STUDENT_NUMBER,',
'    A.SCS_KEY,',
'    A.COURSE_KEY,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    (CASE WHEN A.STUDY_INTAKE = ''0000-00'' THEN NULL',
'          ELSE',
'            A.STUDY_INTAKE',
'    END) STUDY_INTAKE,',
'    A.SUBJECT_KEY,',
'    A.SUBJECT_CODE,',
'    A.SUBJECT_NAME,',
'    A.CREDIT_HOURS,',
'    -- A.FINAL_MARKS,',
'    -- A.FINAL_GRADE,',
'     (CASE WHEN A.IS_PUBLISHED = ''Y'' THEN',
'        A.FINAL_EXAM_CONFIRMED',
'    ELSE',
'        NULL',
'    END) FINAL_EXAM_CONFIRMED,',
'    ',
'    A.SUBJECT_STATUS,',
'    (CASE WHEN A.IS_PUBLISHED = ''Y'' THEN ',
'    A.FINAL_GRADE_CONFIRMED',
'    ELSE',
'    NULL',
'    END)FINAL_GRADE_CONFIRMED,',
'    (CASE WHEN A.IS_PUBLISHED = ''Y'' THEN ',
'    A.FINAL_GRADING_POINT_CONFIRMED',
'    ELSE',
'    NULL',
'    END)FINAL_GRADING_POINT_CONFIRMED,',
'    A.IS_PUBLISHED,',
'    IS_BARRED,',
'    SUBJECT_GRADE_DESCRIPTION REMARKS,',
'--   (SELECT',
'--     (((SELECT COUNT(*) FROM V_ATTENDANCE_DETAIL B',
'--        WHERE STUDENT_KEY = A.STUDENT_KEY',
'--        AND SEMESTER_NAME = A.STUDY_INTAKE',
'--        AND SUBJECT_KEY = A.SUBJECT_KEY',
'--        AND ATTENDED = ''Y'')',
'--     / COUNT(*)) * 100)',
'--     FROM V_ATTENDANCE_DETAIL',
'--     WHERE STUDENT_KEY = A.STUDENT_KEY',
'--     AND SEMESTER_NAME = A.STUDY_INTAKE',
'--     AND SUBJECT_KEY = A.SUBJECT_KEY',
'    ',
'--     GROUP BY',
'--      A.STUDENT_KEY,',
'--      A.STUDY_INTAKE,',
'--      A.SUBJECT_KEY) ATT',
'     A.ATTENDANCE_PERCENTAGE,',
'     NVL(A.REPEAT,''N'') REPEAT,',
'    (CASE WHEN A.IS_PUBLISHED = ''Y'' THEN ',
'    A.FINAL_PASS_FAIL_CONFIRMED',
'    ELSE',
'    NULL',
'    END)FINAL_PASS_FAIL_CONFIRMED,',
'     A.MPU_CATEGORY',
'',
'--     ((SELECT COUNT(*) FROM V_ATTENDANCE_DETAIL WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'-- --                                                AND STUDY_INTAKE = ''2023-01''',
'--                                                 -- AND CLASS_CODE = :P49_CLASS_CODE',
'--                                                 AND A.CLASS_CODE = CLASS_CODE ',
'--                                                 AND NVL(ATTENDED,'' '') = ''Y'') ',
'--                                                 / COUNT(*) * 100) ATT',
'    ',
'FROM V_STUDENT_PROGRAMME_SUBJECT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Academic Records'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(325993881575284870)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No academic records'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>298937923847459141
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263625066804696355)
,p_db_column_name=>'ATTENDANCE_PERCENTAGE'
,p_display_order=>240
,p_column_identifier=>'AC'
,p_column_label=>'Attendance %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92473979577109092)
,p_db_column_name=>'COURSE_KEY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Course Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92476800780109093)
,p_db_column_name=>'CREDIT_HOURS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Credits'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263624895439696354)
,p_db_column_name=>'FINAL_EXAM_CONFIRMED'
,p_display_order=>180
,p_column_identifier=>'AB'
,p_column_label=>'Mark'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92478822792109094)
,p_db_column_name=>'FINAL_GRADE_CONFIRMED'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92479111300109094)
,p_db_column_name=>'FINAL_GRADING_POINT_CONFIRMED'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Grading Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263625227745696357)
,p_db_column_name=>'FINAL_PASS_FAIL_CONFIRMED'
,p_display_order=>260
,p_column_identifier=>'AE'
,p_column_label=>'Pass/Fail'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92472017845109091)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92479862939109095)
,p_db_column_name=>'IS_BARRED'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Barred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92479502309109095)
,p_db_column_name=>'IS_PUBLISHED'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Released'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263625301685696358)
,p_db_column_name=>'MPU_CATEGORY'
,p_display_order=>270
,p_column_identifier=>'AF'
,p_column_label=>'MPU Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92474441654109092)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Programme'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92474796582109092)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92480301616109095)
,p_db_column_name=>'REMARKS'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263625182569696356)
,p_db_column_name=>'REPEAT'
,p_display_order=>250
,p_column_identifier=>'AD'
,p_column_label=>'Repeat'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92473620946109091)
,p_db_column_name=>'SCS_KEY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Scs Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92471585230109090)
,p_db_column_name=>'SC_SUB_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sc Sub Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92472373903109091)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92472792571109091)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92473204940109091)
,p_db_column_name=>'STUDENT_NUMBER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Student Number'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92475194388109092)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92476047649109093)
,p_db_column_name=>'SUBJECT_CODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Code'
,p_column_link=>'f?p=&APP_ID.:1130:&SESSION.::&DEBUG.:1130:P1130_SC_SUB_KEY,P1130_FP:#SC_SUB_KEY#,648'
,p_column_linktext=>'#SUBJECT_CODE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92475606375109092)
,p_db_column_name=>'SUBJECT_KEY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Subject Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92476442714109093)
,p_db_column_name=>'SUBJECT_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Course'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92477983491109094)
,p_db_column_name=>'SUBJECT_STATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(326602038551516232)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PROGRAMME_CODE:STUDY_INTAKE:SUBJECT_NAME:SUBJECT_CODE:CREDIT_HOURS:MPU_CATEGORY:FINAL_EXAM_CONFIRMED:FINAL_GRADE_CONFIRMED:FINAL_GRADING_POINT_CONFIRMED:IS_PUBLISHED:IS_BARRED:REMARKS:SUBJECT_STATUS:REPEAT:ATTENDANCE_PERCENTAGE:FINAL_PASS_FAIL_CONFIR'
||'MED'
,p_sort_column_1=>'PROGRAMME_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'STUDY_INTAKE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'SUBJECT_NAME'
,p_sort_direction_3=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(254585869759192324)
,p_plug_name=>'ACCOMMODATION<br>INFORMATION'
,p_static_id=>'accommodation-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AALJ''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(837434296165647424)
,p_plug_name=>'Address'
,p_static_id=>'address'
,p_parent_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'ADDRESS,',
'ADDRESS_ID,',
'CITY,',
'COUNTRY_ID,',
'FOR_USER_TYPE,',
'INSTITUTE_KEY,',
'IS_HOME_ADDRESS,',
'LINK_KEY,',
'POSTCODE,',
'STATE',
'FROM ALL_USER_ADDRESS',
'WHERE LINK_KEY = :P648_STUDENT_KEY',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Address'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'If the student has more than 1 address record, please enter the record and suggested to have at least 1 preferred address for easier communication.<br><br>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435298309647434)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435412876647435)
,p_name=>'ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837434714492647428)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837434765939647429)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435488072647436)
,p_name=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435600826647437)
,p_name=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_from as display_value, country_from_id as return_value ',
'  from country_from_lookup',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435182087647433)
,p_name=>'FOR_USER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOR_USER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'STUDENT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837434510661647426)
,p_name=>'INSTITUTE_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTE_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'GLO_INSTITUTE_KEY'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435675008647438)
,p_name=>'IS_HOME_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HOME_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Is Home Address'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837434985735647431)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P648_STUDENT_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435818581647439)
,p_name=>'POSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Postcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(837435943053647440)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'State'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STATE_NAME D,',
'    A.STATE_NAME R',
'FROM FM_STATE A',
'WHERE A.COUNTRY_ID = :P648_COR_COUNTRY',
'ORDER BY 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(837434457400647425)
,p_internal_uid=>810378499672821696
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(837526879611797321)
,p_interactive_grid_id=>wwv_flow_imp.id(837434457400647425)
,p_static_id=>'6807868'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(837527103336797322)
,p_report_id=>wwv_flow_imp.id(837526879611797321)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837527560753797324)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(837434510661647426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837528507266797327)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(837434714492647428)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837529786359797332)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(837434985735647431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837530697769797335)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(837435182087647433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837531610244797338)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(837435298309647434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837532546760797341)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(837435412876647435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837533399391797343)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(837435488072647436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837534329118797346)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(837435600826647437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837535254290797349)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(837435675008647438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837536129118797352)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(837435818581647439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(837537038863797355)
,p_view_id=>wwv_flow_imp.id(837527103336797322)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(837435943053647440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(546689236561748243)
,p_plug_name=>'Airport Pickup'
,p_static_id=>'airport-pickup'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ARRIVE_DATE,',
'(SELECT AIRPORT FROM AIRPORT_MASTER WHERE AIRPORT_ID = ARRIVE_AIRPORT_ID) ARRIVE_AIRPORT, ',
'IS_ACTIVE, IS_NO_SHOW, IS_PICKED_UP, IS_IMMIGRATION_ISSUES, SAP_ID',
'FROM STUDENT_AIRPORT_PICKUP',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(546689284562748244)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_SAP_ID,P13_FROM_PAGE:#SAP_ID#,648'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>519633326834922515
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92542430495109123)
,p_db_column_name=>'ARRIVE_AIRPORT'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Point of Arrival'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92539966520109122)
,p_db_column_name=>'ARRIVE_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Arrival Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92540438335109123)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92541594912109123)
,p_db_column_name=>'IS_IMMIGRATION_ISSUES'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Immigration'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92540759653109123)
,p_db_column_name=>'IS_NO_SHOW'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'No Show'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92541220460109123)
,p_db_column_name=>'IS_PICKED_UP'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Picked Up'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92542042861109123)
,p_db_column_name=>'SAP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sap Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(548568391930390587)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654868'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ARRIVE_DATE:ARRIVE_AIRPORT:IS_PICKED_UP:IS_NO_SHOW:IS_IMMIGRATION_ISSUES:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(231139578639558866)
,p_plug_name=>'Appendix 2'
,p_static_id=>'appendix'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>61
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.CAF_ID,',
'B.STUDENT_KEY,',
'B.COURSE_APPLIED_KEY,',
'B.COURSE_KEY,',
'B.APPLICATION_NUMBER,',
'(SELECT PROGRAMME_CODE FROM PROGRAMME_MASTER',
' WHERE PROGRAMME_ID = A.PROGRAMME_ID) PROGRAMME_CODE,',
'(SELECT PROGRAMME_NAME FROM PROGRAMME_MASTER',
' WHERE PROGRAMME_ID = A.PROGRAMME_ID) PROGRAMME_NAME,',
'B.STUDY_INTAKE,',
'A.CATEGORY_SEQ,',
'A.FEE_CATEGORY,',
'(CASE WHEN A.TYPE_OF_FEES <> A.FEE_DESCRIPTION',
'        THEN A.FEE_DESCRIPTION',
'      ELSE A.TYPE_OF_FEES',
'END) FEE_NAME,',
'A.FEE_AMOUNT,',
'(CASE WHEN NVL(B.FINAL_OFFERED_FLAG,''N'') = ''N''',
'        THEN ''Edit''',
'      ELSE',
'        NULL',
'END) ACTION,',
'(CASE WHEN NVL(B.FINAL_OFFERED_FLAG,''N'') = ''N''',
'        THEN ''Add Item''',
'      ELSE',
'        NULL',
'END) ADD_ACTION,',
'JASPER_CHECKSUM(B.INSTITUTE_KEY||B.COURSE_APPLIED_KEY) AS JCSOFL',
'FROM COURSE_APPLIED_FEES A,',
'COURSE_APPLIED B',
'WHERE A.COURSE_APPLIED_KEY = B.COURSE_APPLIED_KEY ',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(231139790422558868)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_enable_mail_download=>'Y'
,p_internal_uid=>204083832694733139
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105799525519832333)
,p_db_column_name=>'ACTION'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:1035:&SESSION.::&DEBUG.:1035:P1035_CAF_ID:#CAF_ID#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106029905637118744)
,p_db_column_name=>'ADD_ACTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Add'
,p_column_link=>'f?p=&APP_ID.:1034:&SESSION.::&DEBUG.:1034:P1034_COURSE_APPLIED_KEY,P1034_STUDENT_KEY,P1034_PROGRAMME_ID:#COURSE_APPLIED_KEY#,#STUDENT_KEY#,#COURSE_KEY#'
,p_column_linktext=>'#ADD_ACTION#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231139862300558869)
,p_db_column_name=>'APPLICATION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'A'
,p_column_label=>'Application Number'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_OFL.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.&PCA=#COURSE_APPLIED_KEY#&PSG=&GLO_USER_KEY.&P1=#JCSOFL#&P0=''));'
,p_column_linktext=>'#APPLICATION_NUMBER#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140729302558877)
,p_db_column_name=>'CAF_ID'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'CAF ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106030092520118746)
,p_db_column_name=>'CATEGORY_SEQ'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Category Seq'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106029730756118742)
,p_db_column_name=>'COURSE_APPLIED_KEY'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Course Applied Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106029812494118743)
,p_db_column_name=>'COURSE_KEY'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Course Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140654956558876)
,p_db_column_name=>'FEE_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Fee Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140363962558874)
,p_db_column_name=>'FEE_CATEGORY'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Fee Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140506664558875)
,p_db_column_name=>'FEE_NAME'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Fee Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(673629070642049668)
,p_db_column_name=>'JCSOFL'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Jcsofl'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140011069558870)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>70
,p_column_identifier=>'B'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140065660558871)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>80
,p_column_identifier=>'C'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106029574930118741)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(231140189583558872)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>90
,p_column_identifier=>'D'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(233532450521019504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2064765'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAF_ID:STUDENT_KEY:COURSE_KEY:COURSE_APPLIED_KEY:CATEGORY_SEQ:APPLICATION_NUMBER:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:FEE_CATEGORY:FEE_NAME:FEE_AMOUNT:ACTION:ADD_ACTION'
,p_sort_column_1=>'CATEGORY_SEQ'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'FEE_NAME'
,p_sort_direction_2=>'ASC'
,p_break_on=>'APPLICATION_NUMBER'
,p_break_enabled_on=>'APPLICATION_NUMBER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(185556094216091530)
,p_name=>'Application List'
,p_static_id=>'application-list'
,p_parent_plug_id=>wwv_flow_imp.id(325946584932089395)
,p_template=>4073835273271169698
,p_display_sequence=>14
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.COURSE_APPLIED_KEY,',
'    (CASE WHEN A.IS_REVIEW_COMPLETED = ''Y'' THEN',
'            APEX_PAGE.GET_URL',
'            (',
'                p_page   => 543,',
'                p_clear_cache => 543,',
'                p_items  => ''P543_COURSE_APPLIED_KEY,GLO_CAK_KEY,P543_FROM_PAGE'',',
'                p_values => A.COURSE_APPLIED_KEY||'',''||A.COURSE_APPLIED_KEY||'',648''   ',
'            )',
'',
'          ELSE',
'            A.APPLICATION_NUMBER',
'',
'    END) APPLICATION_NUMBER_2,',
'    A.APPLICATION_NUMBER,',
'    A.APPLY_DATE,',
'    A.CAMPUS,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    A.STUDY_INTAKE,',
'    A.OFFER_DECISION,',
'    (CASE WHEN A.IS_REVIEW_COMPLETED = ''Y'' THEN',
'        ''Yes''',
'    ELSE',
'        ''No''',
'    END) IS_REVIEW_COMPLETED,',
'    A.APPLICANT_ACCEPT_REJECT_OFFER,',
'    A.ACADEMIC_LEVEL,',
'    A.APPLICATION_DOC_DUE_DATE,',
'    A.APPLICANT_ACCEPT_DATE,',
'',
'    (CASE WHEN A.APPLICANT_ACCEPTED_OFFER = ''Y'' THEN',
'        ''Yes''',
'    ELSE',
'        ''No''',
'    END) APPLICANT_ACCEPTED_OFFER,',
'    ',
'    (CASE WHEN NVL(IS_MIGRATION,''N'') = ''Y'' THEN NULL',
'        WHEN IS_SUBMIT_TO_STUDENT = ''Y'' THEN ''Print Offer Letter''',
'          ELSE NULL',
'    END) PRINT_LETTER,',
'',
'     (SELECT JASPER_CHECKSUM(:GLO_INSTITUTE_KEY||COURSE_APPLIED_KEY) FROM DUAL) JSOFL,',
'     SPECIAL_ARRANGEMENT',
'    ',
'',
'FROM V_COURSE_APPLIED A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY A.STUDY_INTAKE DESC,A.APPLICATION_NUMBER'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185557188896091541)
,p_query_column_id=>12
,p_column_alias=>'ACADEMIC_LEVEL'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263624706101696352)
,p_query_column_id=>15
,p_column_alias=>'APPLICANT_ACCEPTED_OFFER'
,p_column_display_sequence=>150
,p_column_heading=>'Is Digitally Signed?'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263624640474696351)
,p_query_column_id=>14
,p_column_alias=>'APPLICANT_ACCEPT_DATE'
,p_column_display_sequence=>160
,p_column_heading=>'Digital Signed Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185557059658091540)
,p_query_column_id=>11
,p_column_alias=>'APPLICANT_ACCEPT_REJECT_OFFER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(171407808073977840)
,p_query_column_id=>13
,p_column_alias=>'APPLICATION_DOC_DUE_DATE'
,p_column_display_sequence=>130
,p_column_heading=>'Application Document<br>Due Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556354822091532)
,p_query_column_id=>3
,p_column_alias=>'APPLICATION_NUMBER'
,p_column_display_sequence=>60
,p_column_heading=>'File Number'
,p_column_link=>'f?p=&APP_ID.:543:&SESSION.::&DEBUG.:543:P543_COURSE_APPLIED_KEY,GLO_CAK_KEY,P543_FROM_PAGE:#COURSE_APPLIED_KEY#,#COURSE_APPLIED_KEY#,648'
,p_column_linktext=>'#APPLICATION_NUMBER#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(202210822731342044)
,p_query_column_id=>2
,p_column_alias=>'APPLICATION_NUMBER_2'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(171408387243977845)
,p_query_column_id=>4
,p_column_alias=>'APPLY_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Apply Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556534497091534)
,p_query_column_id=>5
,p_column_alias=>'CAMPUS'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556205400091531)
,p_query_column_id=>1
,p_column_alias=>'COURSE_APPLIED_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(171408525888977847)
,p_query_column_id=>10
,p_column_alias=>'IS_REVIEW_COMPLETED'
,p_column_display_sequence=>90
,p_column_heading=>'Review Completed'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20400987356407503)
,p_query_column_id=>17
,p_column_alias=>'JSOFL'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(171408477246977846)
,p_query_column_id=>9
,p_column_alias=>'OFFER_DECISION'
,p_column_display_sequence=>110
,p_column_heading=>'Decision'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263624804741696353)
,p_query_column_id=>16
,p_column_alias=>'PRINT_LETTER'
,p_column_display_sequence=>180
,p_column_heading=>'Print<br>Offer Letter'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_OFL.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.&PCA=#COURSE_APPLIED_KEY#&P1=#JSOFL#''));'
,p_column_linktext=>'#PRINT_LETTER#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556570047091535)
,p_query_column_id=>6
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>80
,p_column_heading=>'Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556736631091536)
,p_query_column_id=>7
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48422580277822906)
,p_query_column_id=>18
,p_column_alias=>'SPECIAL_ARRANGEMENT'
,p_column_display_sequence=>200
,p_column_heading=>'Special Arrangement'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(185556797148091537)
,p_query_column_id=>8
,p_column_alias=>'STUDY_INTAKE'
,p_column_display_sequence=>40
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(333343257937072303)
,p_plug_name=>'Attached Document'
,p_static_id=>'attached-document'
,p_parent_plug_id=>wwv_flow_imp.id(333343149289072302)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_DOCUMENT_KEY,',
'    A.DOCUMENT_IMAGE,',
'    A.DOCUMENT_DESCRIPTION,',
'    A.DOCUMENT_TYPE,',
'    A.DOCUMENET_DATE,',
'    A.LAST_UPDATED_BY,',
'    (SELECT DISTINCT DEPARTMENT_NAME FROM DEPARTMENT_SETUP WHERE DEPARTMENT_KEY IN (SELECT DEPARTMENT_KEY FROM CUSTOMER',
'    WHERE CUSTOMER_NAME = A.LAST_UPDATED_BY AND INSTITUTE_KEY = A.INSTITUTE_KEY)) DEPARTMENT,',
'    A.IMAGE_TYPE,',
'    A.IMAGE_FILE_NAME,',
'    A.INSTITUTE_KEY,',
'    A.BFILE_IDENTIFIER_ID,',
'    :G_FILE_PATH||A.BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND NVL(A.DOCUMENT_TYPE,''X'') NOT IN (''Medical Certificate / Letter'',''Letter From Parents'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Attached Document'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(333344986041072321)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>306289028313246592
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92529230174109118)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>210
,p_column_identifier=>'K'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46007198259579301)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>230
,p_column_identifier=>'M'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92527185409109117)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92526431011109117)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92525986428109116)
,p_db_column_name=>'DOCUMENT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Image'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92526815662109117)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92528398568109117)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92527978694109117)
,p_db_column_name=>'IMAGE_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Image Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92528777857109117)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>200
,p_column_identifier=>'J'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92527613532109117)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92525569984109116)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:687:&SESSION.::&DEBUG.:687:P687_STUDENT_DOCUMENT_KEY,P687_CTRL_PROC:#STUDENT_DOCUMENT_KEY#,RO_DIARY'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92525160840109116)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263625968862696364)
,p_db_column_name=>'URL'
,p_display_order=>220
,p_column_identifier=>'L'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(333497545851516821)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENET_DATE:LAST_UPDATED_BY:DEPARTMENT:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712300464267447303)
,p_plug_name=>'Attachment'
,p_static_id=>'attachment'
,p_parent_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_DOCUMENT_KEY,',
'-- COURSE_APPLIED_KEY,',
'-- (SELECT APPLICATION_NUMBER FROM COURSE_APPLIED WHERE COURSE_APPLIED_KEY = A.COURSE_APPLIED_KEY) APPLICATION_NUMBER,',
'DOCUMENT_TYPE_ID,',
'DOCUMENT_TYPE,',
'DOCUMENT_DESCRIPTION,',
'DOCUMENT_REMARK,',
'',
'(CASE WHEN (SELECT COUNT(*) FROM STUDENT_DOCUMENT_IMAGING',
'            WHERE COURSE_APPLIED_KEY = A.COURSE_APPLIED_KEY',
'            AND DOCUMENT_TYPE_ID = A.DOCUMENT_TYPE_ID',
'            AND BFILE_IDENTIFIER_ID IS NOT NULL) > 0',
'              ',
'        THEN (SELECT COUNT(*) FROM STUDENT_DOCUMENT_IMAGING',
'              WHERE COURSE_APPLIED_KEY = A.COURSE_APPLIED_KEY',
'              AND DOCUMENT_TYPE_ID = A.DOCUMENT_TYPE_ID',
'              AND BFILE_IDENTIFIER_ID IS NOT NULL)||'' Document Found''',
'     ELSE',
'        ''<font color="red"> NOT UPLOADED </font>''',
'END) DOC_SUBMITTED,',
'',
'''Click To Upload<br>Or View'' VIEW_UPLOAD,',
'',
' (CASE WHEN BFILE_IDENTIFIER_ID IS NOT NULL ',
'        THEN ''Click To<br>Upload Another''',
' END) UPLOAD_ANOTHER,',
'',
'(CASE WHEN BFILE_IDENTIFIER_ID IS NOT NULL AND IMAGE_TYPE LIKE ''%image%''             ',
'        THEN ''<img src="''||:G_FILE_PATH||BFILE_IDENTIFIER_ID',
'             ||''" width=120 style="border: 2px solid #CCC;-moz-border-radius: 2px; -webkit-border-radius: 4px;" />''',
'          ',
'      WHEN BFILE_IDENTIFIER_ID IS NOT NULL AND IMAGE_TYPE LIKE ''%word%''',
'        THEN ''<img src="#WORKSPACE_IMAGES#MWORDS.png" width=120 ''',
'             ||''style="border: 2px solid #CCC;-moz-border-radius: 2px; -webkit-border-radius: 4px;"/>''',
'      ',
'      WHEN BFILE_IDENTIFIER_ID IS NOT NULL AND IMAGE_TYPE LIKE ''%pdf%''',
'        THEN ''<img src="#WORKSPACE_IMAGES#PDF.jpg" width=120 ''',
'             ||''style="border: 2px solid #CCC;-moz-border-radius: 2px; -webkit-border-radius: 4px;"/>''',
'      ',
'      ELSE',
'        ''<img src="#WORKSPACE_IMAGES#NoPhotoAvailable.jpg" width=120 ''',
'        ||''style="border: 2px solid #CCC;-moz-border-radius: 2px; -webkit-border-radius: 4px;"/>''',
'END) PICTURE',
'',
'FROM STUDENT_DOCUMENT_IMAGING A',
'-- WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'WHERE COURSE_APPLIED_KEY = :P648_COURSE_APPLIED_KEY',
'ORDER BY DOCUMENT_TYPE'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P648_COURSE_APPLIED_KEY'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'These are the basic check-list required for the application, the check list setting is retrieved from TYPE OF PROGRAMME Supporting Document required. <br>',
'Answer YES for those document submitted, any document not submitted will stop this application to proceed to UNI-ADMISSION module.<br><br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(206081591986965231)
,p_name=>'DOCUMENT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Document Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394646729040935945)
,p_name=>'DOCUMENT_REMARK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Document Remark'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712300857855447306)
,p_name=>'DOCUMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Document Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394646660786935944)
,p_name=>'DOCUMENT_TYPE_ID'
,p_data_type=>'NUMBER'
,p_is_visible=>false
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712301345672447311)
,p_name=>'DOC_SUBMITTED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Uploaded ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(812411558344132112)
,p_name=>'PICTURE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Picture'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712301640640447314)
,p_name=>'STUDENT_DOCUMENT_KEY'
,p_data_type=>'NUMBER'
,p_is_visible=>false
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394646971915935947)
,p_name=>'UPLOAD_ANOTHER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Upload Another'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_text', '&UPLOAD_ANOTHER.',
  'target', 'f?p=&APP_ID.:1036:&SESSION.::&DEBUG.:1036:P1036_STUDENT_KEY,P1036_COURSE_APPLIED_KEY,P1036_DOCUMENT_TYPE_ID,P1036_FROM_PAGE,P1036_DOCUMENT_TYPE:&P648_STUDENT_KEY.,&P648_COURSE_APPLIED_KEY.,&DOCUMENT_TYPE_ID.,648,&DOCUMENT_TYPE.',
  'type', 'LINK',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394646815203935946)
,p_name=>'VIEW_UPLOAD'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'View / Upload'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_text', '&VIEW_UPLOAD.',
  'target', 'f?p=&APP_ID.:1036:&SESSION.::&DEBUG.:1036:P1036_STUDENT_DOCUMENT_KEY,P1036_FROM_PAGE:&STUDENT_DOCUMENT_KEY.,648',
  'type', 'LINK',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102555923030721858)
,p_plug_name=>'Attachment'
,p_static_id=>'attachment-2'
,p_parent_plug_id=>wwv_flow_imp.id(102555087174721850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_DOCUMENT_KEY,',
'DOCUMENT_DESCRIPTION,',
'DOCUMENT_TYPE,',
'CREATED_DATE,',
'CREATED_BY',
'FROM STUDENT_DOCUMENT_IMAGING',
'WHERE DOCUMENT_TYPE IS NULL',
'AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Attachment'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(102556010264721859)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_max_rows_per_page=>'15'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>75500052536896130
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556459077721864)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556454041721863)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556196264721861)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556273208721862)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556109664721860)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:687:&SESSION.::&DEBUG.:687:P687_STUDENT_DOCUMENT_KEY:#STUDENT_DOCUMENT_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(214862376056027957)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878065'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:CREATED_DATE:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253584708183377503)
,p_plug_name=>'Audit Log'
,p_static_id=>'audit-log'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39402728703298721)
,p_plug_name=>'Briefing Form'
,p_static_id=>'briefing-form'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_BF_KEY,',
'(SELECT PROGRAMME_CODE||'' ''||PROGRAMME_NAME',
' FROM PROGRAMME_MASTER WHERE PROGRAMME_ID = A.PROGRAMME_ID) PROGRAMME,',
'BRIEFING_DATE,',
'ADMINISTRATION_FEES_PAYMENT_DATE,',
'POST_ARRIVAL_MEDICAL_SCREENING_DATE,',
'HANDOVER_PASSPORT_ISSD_DATE,',
'MPC_START_DATE,',
'BRIEFING_BY,',
'(CASE WHEN STUDENT_SIGNATURE = ''Y'' THEN ',
'        ''Yes''',
'      ELSE',
'        ''No''',
'END) STUDENT_SIGNATURE,',
'STUDENT_SIGNATURE_DATE,',
'''Print'' PRINT_BF',
'FROM STUDENT_BRIEFING_FORM A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(39402844687298722)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:1111:&SESSION.::&DEBUG.:1111:P1111_SBFK,P1111_SK:#STUDENT_BF_KEY#,&P648_STUDENT_KEY.'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>39402844687298722
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403170928298725)
,p_db_column_name=>'ADMINISTRATION_FEES_PAYMENT_DATE'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Administration Fees<br>Payment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403517774298729)
,p_db_column_name=>'BRIEFING_BY'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Briefing By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39402956923298723)
,p_db_column_name=>'BRIEFING_DATE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Briefing Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403359492298727)
,p_db_column_name=>'HANDOVER_PASSPORT_ISSD_DATE'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Handover of Passport to<br>International Student Services Department (ISSD)<br>for Student Visa Endorsement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403421465298728)
,p_db_column_name=>'MPC_START_DATE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'MUET Preparatory Class (MPC) Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403243805298726)
,p_db_column_name=>'POST_ARRIVAL_MEDICAL_SCREENING_DATE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Post Arrival<br>Medical Screening Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190875964541704843)
,p_db_column_name=>'PRINT_BF'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Print Briefing Form'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_BRIEFING_FORM.&_repFormat=pdf&_dataSource=&GLO_JASPERCMDKEY.&P1=#STUDENT_BF_KEY#''));'
,p_column_linktext=>'#PRINT_BF#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403044918298724)
,p_db_column_name=>'PROGRAMME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Programme'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403730530298731)
,p_db_column_name=>'STUDENT_BF_KEY'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Student Bf Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39403634350298730)
,p_db_column_name=>'STUDENT_SIGNATURE'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Student Signature'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190875831576704842)
,p_db_column_name=>'STUDENT_SIGNATURE_DATE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Signature Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39798468733091743)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'397985'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGRAMME:BRIEFING_DATE:ADMINISTRATION_FEES_PAYMENT_DATE:POST_ARRIVAL_MEDICAL_SCREENING_DATE:HANDOVER_PASSPORT_ISSD_DATE:MPC_START_DATE:BRIEFING_BY:STUDENT_SIGNATURE:STUDENT_SIGNATURE_DATE:PRINT_BF'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(257346380266978806)
,p_plug_name=>'Collection'
,p_static_id=>'collection'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.TRANSACTION_TYPE,',
'    ABS(A.AMOUNT_LOCAL_CURRENCY) AS AMOUNT_TO_CANCEL,',
'    -- A.TRANSACTION_NUMBER,',
'    (''<a href="&GLO_REPORT_URL.&GLO_RECEIPT.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.''',
'      ||''&P1=&GLO_INSTITUTE_KEY.&P2=''||A.CAMPUS_KEY||''&P3=''||A.SFM_KEY||''&P0=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||CAMPUS_KEY||SFM_KEY)',
'      ||''" target="_blank">''||A.TRANSACTION_NUMBER||''</a>'') TRANSACTION_NUMBER,',
'    A.TRANSACTION_STATUS,',
'    CURRENCY,',
'    A.CURRENCY_RATE,',
'    A.AMOUNT_LOCAL_CURRENCY* -1 AS AMOUNT_LOCAL_CURRENCY,',
'    NVL(UNMATCH_AMOUNT,0) AS UNMATCHED_AMOUNT,',
'',
'    (CASE WHEN A.TRANSACTION_STATUS = ''Active'' and transaction_type = ''Collection'' THEN',
'        ''Cancel This Receipt''',
'    END) ACTION,',
'    A.MOP,',
'    ''Refund Now'' as refund1,',
'    A.REMARKS,',
'    ''Detail'' as details,',
'    (CASE WHEN A.PAYOR IS NOT NULL THEN A.PAYOR',
'          ELSE (SELECT STUDENT_NAME FROM STUDENT_PROFILE',
'                WHERE STUDENT_KEY = A.STUDENT_KEY)',
'    END) PAYOR,',
'    ( select LISTAGG(PAID_TO_TRANSACTION_NUMBER||''-''||TYPE_OF_FEES||'' ''||PAID_AMOUNT,'' <BR> '') ',
'        from v_student_fee_collection',
'        where sfm_key = a.sfm_key',
'        AND NVL(PAID_AMOUNT,0) <> 0 ) as allocated_to,',
'    A.FROM_BANK,',
'    A.REFERENCE_NO',
'    ',
'FROM V_STUDENT_STATEMENT0 A --V_STUDENT_STATEMENT_MINI1 A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'-- AND A.TRANSACTION_TYPE in (''Collection'')',
'AND A.IS_COLLECTION = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Collection'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB5 Collection Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 10px 0;">',
'        This page displays all collection transactions recorded for the student, including active and cancelled receipts. You can review payment details, payment methods, receipt status, allocation information, and any unallocated payment balances.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;',
'        color:#B00020;">',
'        <b>Note:</b> Authorized users may create miscellaneous collections, cancel receipts, and reallocate unallocated payment amounts where applicable.',
'    </p>',
'',
'</div>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'** Unmatched / Unallocated Amount = Money that have not link to any invoice item, meaning user have not specify the money is to pay for which invoice item.'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(257346541201978807)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>230290583474153078
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92768350344109222)
,p_db_column_name=>'ACTION'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_SFM_KEY:#SFM_KEY#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(230668414039770938)
,p_db_column_name=>'ALLOCATED_TO'
,p_display_order=>180
,p_column_identifier=>'V'
,p_column_label=>'Allocated To'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92767954110109222)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(191209716553549872)
,p_db_column_name=>'AMOUNT_TO_CANCEL'
,p_display_order=>170
,p_column_identifier=>'U'
,p_column_label=>'Amount To Cancel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92767106917109222)
,p_db_column_name=>'CURRENCY'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92767542957109222)
,p_db_column_name=>'CURRENCY_RATE'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Currency Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180816209413145147)
,p_db_column_name=>'DETAILS'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Details'
,p_column_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60554061547809637)
,p_db_column_name=>'FROM_BANK'
,p_display_order=>200
,p_column_identifier=>'X'
,p_column_label=>'From Bank'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92768658383109222)
,p_db_column_name=>'MOP'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Mode Of Payment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98135558019030031)
,p_db_column_name=>'PAYOR'
,p_display_order=>160
,p_column_identifier=>'T'
,p_column_label=>'Paid By'
,p_column_link=>'f?p=&APP_ID.:993:&SESSION.::&DEBUG.:993:P993_SFM_KEY,P993_STUDENT_KEY:#SFM_KEY#,#STUDENT_KEY#'
,p_column_linktext=>'#PAYOR#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553740405809634)
,p_db_column_name=>'REFERENCE_NO'
,p_display_order=>190
,p_column_identifier=>'W'
,p_column_label=>'Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92763928416109220)
,p_db_column_name=>'REFUND1'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Refund'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170911771818107579)
,p_db_column_name=>'REMARKS'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92765139137109221)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92764668313109221)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92765549213109221)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92766356677109221)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92766708817109222)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92765933882109221)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92764341174109221)
,p_db_column_name=>'UNMATCHED_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Unmatched Amount<br>Unallocated Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(257357671219009408)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657131'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETAILS:TRANSACTION_DATE:TRANSACTION_NUMBER:PAYOR:TRANSACTION_STATUS:MOP:AMOUNT_LOCAL_CURRENCY:UNMATCHED_AMOUNT:ACTION:FROM_BANK:REFERENCE_NO:REMARKS:ALLOCATED_TO'
,p_sort_column_1=>'TRANSACTION_DATE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'AMOUNT_LOCAL_CURRENCY:UNMATCH_AMOUNT:UNMATCHED_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253587322626377529)
,p_plug_name=>'Contact Info'
,p_static_id=>'contact-info'
,p_parent_plug_id=>wwv_flow_imp.id(253587559346377532)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102555087174721850)
,p_plug_name=>'Contact Log'
,p_static_id=>'contact-log'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(719957260967505449)
,p_plug_name=>'Contacts and Family'
,p_static_id=>'contacts-and-family'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253587866271377535)
,p_plug_name=>'Correspondence Address'
,p_static_id=>'correspondence-address'
,p_parent_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(577760681067736351)
,p_plug_name=>'Counselor & Agency'
,p_static_id=>'counselor-agency'
,p_parent_plug_id=>wwv_flow_imp.id(253587559346377532)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(577760697631736352)
,p_plug_name=>'Counselor / Agency'
,p_static_id=>'counselor-agency-2'
,p_parent_plug_id=>wwv_flow_imp.id(577760681067736351)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATION_NUMBER,',
'PROGRAMME_CODE,',
'PROGRAMME_NAME,',
'STUDY_INTAKE,',
'ASSIGN_TYPE,',
'ASSIGN_NAME,',
'ASSIGN_BY,',
'ASSIGN_DATE ',
'FROM V_COUNSELOR_AGENT_LOG',
'WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Counselor / Agency'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(577760807750736353)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>575955417966537133
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761626840736361)
,p_db_column_name=>'APPLICATION_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Application Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761723750736362)
,p_db_column_name=>'ASSIGN_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Assign By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761811974736363)
,p_db_column_name=>'ASSIGN_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Assign Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(591821565452538144)
,p_db_column_name=>'ASSIGN_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Counselor / Agency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(591821399242538143)
,p_db_column_name=>'ASSIGN_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Assign Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761291380736358)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761470957736359)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577761502981736360)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Intake'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(593192234481522818)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5913869'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGN_TYPE:ASSIGN_NAME:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:APPLICATION_NUMBER:ASSIGN_BY:ASSIGN_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101748702831047239)
,p_plug_name=>'Counselor & Agent'
,p_static_id=>'counselor-agent'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(577761949094736364)
,p_plug_name=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_static_id=>'counselor-s-agent-s-agency-s-involvement-audit-trail'
,p_parent_plug_id=>wwv_flow_imp.id(577760681067736351)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACTIVITY_DATE,',
'ACTIVITIES,',
'LAST_UPDATED_DATE,',
'LAST_UPDATED_BY,',
'REMARKS',
'FROM STUDENT_ACTIVITIES ',
'WHERE ACTIVITY_KEY IN (SELECT ACTIVITY_KEY FROM COURSE_APPLIED_COUNSELOR_AGENT_LOG)',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(577762002277736365)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>575956612493537145
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577762215494736367)
,p_db_column_name=>'ACTIVITIES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activities'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577762154115736366)
,p_db_column_name=>'ACTIVITY_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Activity Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577762439914736369)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577762345601736368)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(577762525607736370)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(593289380942710597)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5914840'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTIVITY_DATE:ACTIVITIES:LAST_UPDATED_DATE:LAST_UPDATED_BY:REMARKS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101748875195047241)
,p_plug_name=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_static_id=>'counselor-s-agent-s-agency-s-involvement-audit-trail-2'
,p_parent_plug_id=>wwv_flow_imp.id(101748702831047239)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACTIVITY_DATE,',
'ACTIVITIES,',
'LAST_UPDATED_DATE,',
'LAST_UPDATED_BY',
'FROM STUDENT_ACTIVITIES ',
'WHERE (ACTIVITIES LIKE ''%agency%'' OR ACTIVITIES LIKE ''Agency%'')',
'AND STUDENT_KEY = :P648_STUDENT_KEY',
'',
'UNION ALL',
'SELECT ACTIVITY_DATE,',
'ACTIVITIES,',
'LAST_UPDATED_DATE,',
'LAST_UPDATED_BY',
'FROM STUDENT_ACTIVITIES A',
'WHERE (ACTIVITIES NOT LIKE ''%agency%'' OR ACTIVITIES NOT LIKE ''Agency%'')',
'AND EXISTS (SELECT * FROM STUDENT_PROFILE',
'            WHERE COUNSELOR_KEY = A.USER_KEY  ',
'            AND LEAD_KEY = A.LEAD_KEY',
'            AND STUDENT_KEY = :P648_STUDENT_KEY)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(101749081086047243)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>74693123358221514
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101749292017047245)
,p_db_column_name=>'ACTIVITIES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activities'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101749184415047244)
,p_db_column_name=>'ACTIVITY_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Activity Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101749550415047247)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101749368984047246)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(214861707708027945)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878058'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTIVITY_DATE:ACTIVITIES:LAST_UPDATED_DATE:LAST_UPDATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(257228050956983031)
,p_plug_name=>'Credit Note'
,p_static_id=>'credit-br-note'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    A.TRANSACTION_NUMBER,',
'    A.TYPE_OF_FEES,',
'    A.TRANSACTION_STATUS,',
'    A.TRANSACTION_AMOUNT,',
'    (CASE WHEN A.TRANSACTION_STATUS = ''Active'' and NVL(CN_FOR_REFUND,'' '') <> ''Y'' THEN',
'        ''Cancel''',
'    END) ACTION,',
'( CASE WHEN CN_FOR_REFUND = ''Y'' THEN',
'    ''CN DUE TO REFUND''',
'    ELSE',
'    REMARKS',
'END ) AS REMARKS,',
'',
'( SELECT TRANSACTION_NUMBER',
'    FROM STUDENT_FEE_MASTER',
'    WHERE SFM_KEY = A.FOR_SFM_KEY ) AS CN_FOR_INVOICE_ITEM',
'    ',
'FROM STUDENT_FEE_MASTER A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE = ''CN'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Credit<br>Note'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCC4 Credit Note Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 10px 0;">',
'        This page displays all active credit notes issued for the selected invoice. Credit notes are used to reduce the invoice amount due to fee adjustments, cancellations, refunds, or other approved financial corrections.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;',
'        color:#B00020;">',
'        <b>Note:</b> Only active credit notes are displayed. Authorized users may create new credit notes or cancel existing ones if they were created in error.',
'    </p>',
'',
'</div>'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(257228154864983032)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_internal_uid=>230172197137157303
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92758143502109218)
,p_db_column_name=>'ACTION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:652:&SESSION.::&DEBUG.:652:P652_SFM_KEY:#SFM_KEY#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92758884023109218)
,p_db_column_name=>'CN_FOR_INVOICE_ITEM'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'CN For Invoice Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92755732227109217)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Due Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92758465888109218)
,p_db_column_name=>'REMARKS'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92754893505109217)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92754544021109216)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92757306052109217)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'CN Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92755258429109217)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'CN Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92756494485109217)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'CN Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92757681373109218)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'CN Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92756064403109217)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92756918450109217)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'For Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(257269144374722364)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657033'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:TRANSACTION_TYPE:TRANSACTION_NUMBER:CN_FOR_INVOICE_ITEM:TRANSACTION_AMOUNT:TYPE_OF_FEES:TRANSACTION_STATUS:ACTION:REMARKS'
,p_sort_column_1=>'TRANSACTION_DATE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'TRANSACTION_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(826392821079530705)
,p_plug_name=>'Credit Transfer'
,p_static_id=>'credit-transfer'
,p_parent_plug_id=>wwv_flow_imp.id(254585728302192322)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253587484473377531)
,p_plug_name=>'Details'
,p_static_id=>'details'
,p_parent_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>45
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br><br>',
'These are the details information/attachment/linked with this student.',
'<br><br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(333343149289072302)
,p_plug_name=>'DIARY'
,p_static_id=>'diary'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHP''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253589461290377551)
,p_plug_name=>'Disabilities'
,p_static_id=>'disabilities'
,p_parent_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(677743935900533127)
,p_plug_name=>'DISCIPLINE NFORMATION'
,p_static_id=>'discipline-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>89
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SD_KEY,',
'    A.INSTITUTE_KEY,',
'    A.CAMPUS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCS_KEY,',
'    (SELECT PROGRAMME_CODE FROM V_STUDENT_PROGRAMME_SEMESTER WHERE SCS_KEY = A.SCS_KEY) PROGRAMME_CODE,',
'    (SELECT PROGRAMME_NAME FROM V_STUDENT_PROGRAMME_SEMESTER WHERE SCS_KEY = A.SCS_KEY) PROGRAMME_NAME,',
'    (SELECT STUDY_INTAKE FROM V_STUDENT_PROGRAMME_SEMESTER WHERE SCS_KEY = A.SCS_KEY) SEMESTER,',
'    A.DISCIPLINE_TYPE_KEY,',
'    (SELECT DISCIPLINE_TYPE FROM DISCIPLINE_TYPE_SETUP WHERE DTS_KEY = A.DISCIPLINE_TYPE_KEY) DISCIPLINE_TYPE,',
'    (SELECT DISCIPLINE_POINT FROM DISCIPLINE_TYPE_SETUP WHERE DTS_KEY = A.DISCIPLINE_TYPE_KEY) DISCIPLINE_POINT,',
'    A.DISCIPLINE_DESCRIPTIONS,',
'    A.DISCIPLINE_STATUS,',
'    A.INCIDENT_DATE,',
'    A.INCIDENT_LOCATION,',
'    A.HOSTEL_TRANSACTION_KEY,',
'    A.CREATED_BY,',
'    A.CREATED_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.LAST_UPDATED_DATE,',
'    A.IS_MIGRATION,',
'    A.MIGRATION_DATE,',
'    A.OLD_OBJ_ID,',
'    A.ROW_VERSION',
'FROM STUDENT_DISCIPLINE A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAW3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DISCIPLINE<br>INFORMATION'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(677744037015533128)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1852:&SESSION.::&DEBUG.:1852:P1852_SD_KEY:#SD_KEY#'
,p_detail_link_text=>'View'
,p_internal_uid=>675938647231333908
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744344919533131)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745099073533139)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745271805533140)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744734692533135)
,p_db_column_name=>'DISCIPLINE_DESCRIPTIONS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Discipline Descriptions'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045663897092445)
,p_db_column_name=>'DISCIPLINE_POINT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Discipline Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744873053533136)
,p_db_column_name=>'DISCIPLINE_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Discipline Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045583685092444)
,p_db_column_name=>'DISCIPLINE_TYPE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Discipline Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744631663533134)
,p_db_column_name=>'DISCIPLINE_TYPE_KEY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Discipline Type Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745034714533138)
,p_db_column_name=>'HOSTEL_TRANSACTION_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Hostel Transaction Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744895192533137)
,p_db_column_name=>'INCIDENT_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Incident Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045755207092446)
,p_db_column_name=>'INCIDENT_LOCATION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Incident Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744268705533130)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745510717533143)
,p_db_column_name=>'IS_MIGRATION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Is Migration'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745373266533141)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745484906533142)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745615379533144)
,p_db_column_name=>'MIGRATION_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Migration Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745733402533145)
,p_db_column_name=>'OLD_OBJ_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Old Obj Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045239943092441)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045353756092442)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677745815761533146)
,p_db_column_name=>'ROW_VERSION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744499168533133)
,p_db_column_name=>'SCS_KEY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Scs Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744120566533129)
,p_db_column_name=>'SD_KEY'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Sd Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679045484973092443)
,p_db_column_name=>'SEMESTER'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677744442945533132)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(677922688201857671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6761173'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGRAMME_CODE:PROGRAMME_NAME:SEMESTER:DISCIPLINE_TYPE:DISCIPLINE_POINT:DISCIPLINE_DESCRIPTIONS:DISCIPLINE_STATUS:INCIDENT_DATE:INCIDENT_LOCATION:LAST_UPDATED_BY:LAST_UPDATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(845117743719686847)
,p_plug_name=>'Discount'
,p_static_id=>'discount'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83C\DFF7\FE0F Discount Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 12px 0;">',
'        This page allows you to manage student discounts. Four types of discounts are available, each designed for different business requirements.',
'    </p>',
'',
'    <ol style="',
'        font-size:14px;',
'        line-height:1.6;',
'        margin:0 0 0 20px;',
'        padding-left:20px;">',
'',
'        <li>',
unistr('            <b>One-Time Discount</b> \2013 Applied manually to reduce the amount of a specific invoice item. The discount applies only once.'),
'        </li>',
'',
'        <li>',
unistr('            <b>Staff Discount</b> \2013 A recurring discount granted to eligible staff or their dependants. The discount is automatically applied whenever new invoices are generated during the approved validity period.'),
'        </li>',
'',
'        <li>',
unistr('            <b>Special Discount</b> \2013 A recurring discount granted for special approval or promotional purposes. The discount is automatically applied to new invoices during the approved validity period.'),
'        </li>',
'',
'        <li>',
unistr('            <b>Sibling Discount</b> \2013 A recurring discount granted to eligible siblings. The discount is automatically applied whenever new invoices are generated during the approved validity period.'),
'        </li>',
'',
'    </ol>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(695347641439010943)
,p_plug_name=>'Email'
,p_static_id=>'email'
,p_parent_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMAIL_ID,',
'INSTITUTE_KEY,',
'LINK_KEY,',
'EMAIL,',
'IS_PREFERRED,',
'FOR_USER_TYPE',
'FROM ALL_USER_EMAIL',
'WHERE LINK_KEY = :P648_STUDENT_KEY',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Email'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'If the student has more than 1 email record, please enter the record and suggested to have at least 1 preferred email for easier communication.<br><br>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(701225614873817303)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(701225684529817304)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(695348093575010948)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_css_classes=>'email_validate'
,p_item_attributes=>'multiple pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722167211697522747)
,p_name=>'EMAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722167509668522750)
,p_name=>'FOR_USER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOR_USER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'STUDENT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(695347902830010946)
,p_name=>'INSTITUTE_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTE_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'GLO_INSTITUTE_KEY'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722167425712522749)
,p_name=>'IS_PREFERRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PREFERRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Is Preferred'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722167346924522748)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P648_STUDENT_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(695347730124010944)
,p_internal_uid=>668291772396185215
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(701231743778818552)
,p_interactive_grid_id=>wwv_flow_imp.id(695347730124010944)
,p_static_id=>'5444916'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(701231918813818554)
,p_report_id=>wwv_flow_imp.id(701231743778818552)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(701233354912818560)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(695347902830010946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(701235156313818566)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(695348093575010948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(701237771750825535)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(701225614873817303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728366790926713667)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(722167211697522747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728367686325713670)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(722167346924522748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728368646587713673)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(722167425712522749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728369548493713676)
,p_view_id=>wwv_flow_imp.id(701231918813818554)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(722167509668522750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(850533313176421040)
,p_plug_name=>'Email Log'
,p_static_id=>'email-log'
,p_parent_plug_id=>wwv_flow_imp.id(850533199722421039)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'EMAIL_SUBJECT,',
'CREATED_BY,',
'CREATED_DATE,',
'SEL_KEY,',
'student_key',
'FROM STUDENT_EMAIL',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Email Log'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(850533440515421041)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>823477482787595312
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92652582971109172)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92653033496109172)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92652230746109172)
,p_db_column_name=>'EMAIL_SUBJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Email Subject'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92653393975109173)
,p_db_column_name=>'SEL_KEY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:1135:&SESSION.::&DEBUG.:1135:P1135_SEL_KEY,P1135_STUDENT_KEY,P1135_CTRL_PROC:#SEL_KEY#,#STUDENT_KEY#,JOBNTASK'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92653777104109173)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(852101248487777625)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMAIL_SUBJECT:CREATED_BY:CREATED_DATE:SEL_KEY:STUDENT_KEY'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102556579762721865)
,p_plug_name=>'Emails sent during workflow'
,p_static_id=>'emails-sent-during-workflow'
,p_parent_plug_id=>wwv_flow_imp.id(102555087174721850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEL_KEY,',
'EMAIL_SUBJECT,',
'CREATED_BY,',
'CREATED_DATE',
'FROM STUDENT_EMAIL',
'WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(102556723617721866)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_max_rows_per_page=>'15'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>75500765889896137
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556961546721869)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102557128506721870)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556878185721868)
,p_db_column_name=>'EMAIL_SUBJECT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Email Subject'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102556811806721867)
,p_db_column_name=>'SEL_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:874:&SESSION.::&DEBUG.:874:P874_SEL_KEY,P874_STUDENT_KEY:#SEL_KEY#,&P648_STUDENT_KEY.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(214863116808027960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEL_KEY:EMAIL_SUBJECT:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712301834622447316)
,p_plug_name=>'Employment History'
,p_static_id=>'employment-history'
,p_parent_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STUDENT_KEY,',
'       WORK_KEY,',
'       COMPANY_NAME,',
'       POSITION,',
'       START_DATE,',
'       TO_DATE',
'',
'  from STUDENT_WORKING_EXPERIENCE',
' where student_key = :P648_student_key'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employment History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302577870447324)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302692958447325)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302204120447320)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302288670447321)
,p_name=>'POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302433492447322)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302028917447318)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P648_STUDENT_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302467260447323)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'To Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712302082687447319)
,p_name=>'WORK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(712301952335447317)
,p_internal_uid=>685245994607621588
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config)',
'{',
'    config.initActions = function(actions) { actions.remove("row-duplicate"); };',
'    ',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(712387728610527986)
,p_interactive_grid_id=>wwv_flow_imp.id(712301952335447317)
,p_static_id=>'5556476'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(712387871928527987)
,p_report_id=>wwv_flow_imp.id(712387728610527986)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712388411770527990)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(712302028917447318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712389272043527993)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(712302082687447319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712390234153527998)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(712302204120447320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712391119797528002)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(712302288670447321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712392004870528005)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(712302433492447322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712392880937528008)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(712302467260447323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712393815199528011)
,p_view_id=>wwv_flow_imp.id(712387871928527987)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(712302577870447324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712108183317805547)
,p_plug_name=>'English Proficiency'
,p_static_id=>'english-proficiency'
,p_parent_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720014415541716741)
,p_plug_name=>'Enrollment Documents'
,p_static_id=>'enrollment-documents'
,p_parent_plug_id=>wwv_flow_imp.id(720011543767716712)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_DOCUMENT_KEY,',
'    A.DOCUMENT_IMAGE,',
'    A.DOCUMENT_REMARK,',
'    -- A.DOCUMENT_DESCRIPTION,',
'    A.DOCUMENT_TYPE,',
'    A.DOCUMENET_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.IMAGE_TYPE,',
'    A.IMAGE_FILE_NAME,',
'    A.INSTITUTE_KEY,',
'    A.BFILE_IDENTIFIER_ID,',
'    :G_FILE_PATH||BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Enrollment Documents'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720014507645716742)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>692958549917891013
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92613180720109154)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92611200931109153)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92609968254109152)
,p_db_column_name=>'DOCUMENT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Image'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263626533996696370)
,p_db_column_name=>'DOCUMENT_REMARK'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Document Remark'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92610797080109153)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92612405822109153)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92612055769109153)
,p_db_column_name=>'IMAGE_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Image Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92612797101109153)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92611644310109153)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92609567387109152)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92609204509109152)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263626419415696369)
,p_db_column_name=>'URL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720302613342408841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENET_DATE:LAST_UPDATED_BY:DOCUMENT_TYPE:DOCUMENT_REMARK:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133559900228871901)
,p_plug_name=>'Exit Stamp'
,p_static_id=>'exit-stamp'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROW_NUMBER() OVER (',
'         ORDER BY NVL(ies.exit_flight_departure_date, ies.exit_stamp_date) DESC,',
'                  ies.io_exit_entry_stamp_id DESC',
'       ) AS bil,',
'       ies.io_exit_entry_stamp_id,',
'       ies.student_key,',
'       sp.student_name,',
'       sp.student_number AS id_number,',
'       sp.ic_passport AS passport,',
'       (CASE WHEN ies.programme_id IS NOT NULL THEN',
'                (SELECT programme_name FROM programme_master',
'                 WHERE programme_id = ies.programme_id)',
'             ELSE',
'                pr.programme_name',
'        END) programme_name,',
'       TRUNC(ies.exit_stamp_date) AS exit_stamp,',
'       CASE WHEN ies.exit_student_document_key IS NOT NULL THEN ''Y'' ELSE ''N'' END AS exit_stamp_upload,',
'       NVL(exit_stamp_doc.last_updated_by, exit_stamp_doc.created_by) AS exit_stamp_upload_by,',
'       exit_stamp_doc.created_date AS exit_stamp_upload_date,',
'       CASE WHEN ies.exit_student_document_key IS NULL THEN ''Y'' ELSE ''N'' END AS send_reminder_for_exit_stamp,',
'       TRUNC(ies.exit_flight_departure_date) AS flight_departure_date,',
'       CASE WHEN ies.exit_ticket_document_key IS NOT NULL THEN ''Y'' ELSE ''N'' END AS exit_flight_ticket_upload,',
'       exit_ticket_doc.image_file_name AS exit_flight_ticket_file_name,',
'       TRUNC(ies.entry_stamp_date) AS entry_stamp,',
'       CASE WHEN ies.entry_student_document_key IS NOT NULL THEN ''Y'' ELSE ''N'' END AS entry_stamp_upload,',
'       NVL(entry_stamp_doc.last_updated_by, entry_stamp_doc.created_by) AS entry_stamp_upload_by,',
'       entry_stamp_doc.created_date AS entry_stamp_upload_date,',
'       CASE WHEN ies.entry_student_document_key IS NULL THEN ''Y'' ELSE ''N'' END AS send_reminder_for_entry_stamp,',
'       TRUNC(ies.entry_flight_arrival_date) AS flight_arrival_date,',
'       CASE WHEN ies.entry_ticket_document_key IS NOT NULL THEN ''Y'' ELSE ''N'' END AS entry_flight_ticket_upload,',
'       entry_ticket_doc.image_file_name AS entry_flight_ticket_file_name,',
'       ies.exit_student_document_key AS exit_stamp_document_key,',
'       ies.exit_ticket_document_key AS exit_ticket_document_key,',
'       ies.entry_student_document_key AS entry_stamp_document_key,',
'       ies.entry_ticket_document_key AS entry_ticket_document_key,',
'       ies.remarks,',
'       ies.category,',
'       ies.checkout_memo,',
'       ies.checkout_memo_date,',
'       ies.return_home_country,',
'       ''Edit'' AS edit_link',
'  FROM io_exit_entry_stamps ies',
'  JOIN student_profile sp',
'    ON sp.student_key = ies.student_key',
'  LEFT JOIN (',
'       SELECT student_key,',
'              programme_name,',
'              ROW_NUMBER() OVER (',
'                PARTITION BY student_key',
'                ORDER BY scm_key DESC',
'              ) AS rn',
'         FROM v_student_programme_master',
'  ) pr',
'    ON pr.student_key = sp.student_key',
'   AND pr.rn = 1',
'  LEFT JOIN student_document_imaging exit_stamp_doc',
'    ON exit_stamp_doc.student_document_key = ies.exit_student_document_key',
'  LEFT JOIN student_document_imaging exit_ticket_doc',
'    ON exit_ticket_doc.student_document_key = ies.exit_ticket_document_key',
'  LEFT JOIN student_document_imaging entry_stamp_doc',
'    ON entry_stamp_doc.student_document_key = ies.entry_student_document_key',
'  LEFT JOIN student_document_imaging entry_ticket_doc',
'    ON entry_ticket_doc.student_document_key = ies.entry_ticket_document_key',
' WHERE ies.institute_key = :GLO_INSTITUTE_KEY',
'   AND ies.student_key = :P648_STUDENT_KEY',
' ORDER BY NVL(ies.exit_flight_departure_date, ies.exit_stamp_date) DESC,',
'          ies.io_exit_entry_stamp_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133561874636871920)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1125:&SESSION.::&DEBUG.::P1125_IO_EXIT_ENTRY_STAMP_ID:#IO_EXIT_ENTRY_STAMP_ID#'
,p_internal_uid=>133561874636871920
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133561942189871921)
,p_db_column_name=>'BIL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30721022395235919)
,p_db_column_name=>'CATEGORY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30721111225235920)
,p_db_column_name=>'CHECKOUT_MEMO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Checkout Memo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30721198617235921)
,p_db_column_name=>'CHECKOUT_MEMO_DATE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Checkout Memo Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133564170438871943)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Edit Link'
,p_column_link=>'f?p=&APP_ID.:1125:&SESSION.::&DEBUG.::P1125_IO_EXIT_ENTRY_STAMP_ID:#IO_EXIT_ENTRY_STAMP_ID#'
,p_column_linktext=>'#EDIT_LINK#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578599878745350)
,p_db_column_name=>'ENTRY_FLIGHT_TICKET_FILE_NAME'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Entry Flight Ticket File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578664132745351)
,p_db_column_name=>'ENTRY_FLIGHT_TICKET_UPLOAD'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entry Flight Ticket Upload'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563140997871933)
,p_db_column_name=>'ENTRY_STAMP'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Stamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563921916871941)
,p_db_column_name=>'ENTRY_STAMP_DOCUMENT_KEY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Entry Stamp Document Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563232087871934)
,p_db_column_name=>'ENTRY_STAMP_UPLOAD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entry Stamp Upload'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if ENTRY_STAMP_UPLOAD/}',
'           <span class="fa fa-check" aria-hidden="true"></span>',
'        {else/}',
'',
'        {endif/}',
'        '))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563346716871935)
,p_db_column_name=>'ENTRY_STAMP_UPLOAD_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Entry Stamp Upload By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563458371871936)
,p_db_column_name=>'ENTRY_STAMP_UPLOAD_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Entry Stamp Upload Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578356541745348)
,p_db_column_name=>'ENTRY_TICKET_DOCUMENT_KEY'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entry Ticket Document Key'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578855318745353)
,p_db_column_name=>'EXIT_FLIGHT_TICKET_FILE_NAME'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Exit Flight Ticket File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578962973745354)
,p_db_column_name=>'EXIT_FLIGHT_TICKET_UPLOAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Exit Flight Ticket Upload'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562678905871928)
,p_db_column_name=>'EXIT_STAMP'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Exit Stamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563875355871940)
,p_db_column_name=>'EXIT_STAMP_DOCUMENT_KEY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Exit Stamp Document Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562744976871929)
,p_db_column_name=>'EXIT_STAMP_UPLOAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Exit Stamp Upload'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if EXIT_STAMP_UPLOAD/}',
'           <span class="fa fa-check u-success-text" aria-hidden="true"></span>',
'        {else/}',
'',
'        {endif/}',
'        '))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562883007871930)
,p_db_column_name=>'EXIT_STAMP_UPLOAD_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Exit Stamp Upload By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562965027871931)
,p_db_column_name=>'EXIT_STAMP_UPLOAD_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Exit Stamp Upload Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578489106745349)
,p_db_column_name=>'EXIT_TICKET_DOCUMENT_KEY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Exit Ticket Document Key'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61578742857745352)
,p_db_column_name=>'FLIGHT_ARRIVAL_DATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Flight Arrival Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61579054016745355)
,p_db_column_name=>'FLIGHT_DEPARTURE_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Flight Departure Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562384416871925)
,p_db_column_name=>'ID_NUMBER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id Number'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562077363871922)
,p_db_column_name=>'IO_EXIT_ENTRY_STAMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Io Exit Entry Stamp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562495829871926)
,p_db_column_name=>'PASSPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Passport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562582198871927)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133564052148871942)
,p_db_column_name=>'REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30721279930235922)
,p_db_column_name=>'RETURN_HOME_COUNTRY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Return Home/Country'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563578923871937)
,p_db_column_name=>'SEND_REMINDER_FOR_ENTRY_STAMP'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Send Reminder For Entry Stamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133563093566871932)
,p_db_column_name=>'SEND_REMINDER_FOR_EXIT_STAMP'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Send Reminder For Exit Stamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562175163871923)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133562263415871924)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135581497685078195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BIL:EXIT_STAMP:EXIT_STAMP_UPLOAD:EXIT_STAMP_UPLOAD_DATE:ENTRY_STAMP:ENTRY_STAMP_UPLOAD:ENTRY_STAMP_UPLOAD_DATE:REMARKS:EDIT_LINK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(652793817543531434)
,p_name=>'External / Exemption'
,p_static_id=>'external-exemption'
,p_parent_plug_id=>wwv_flow_imp.id(826392821079530705)
,p_template=>2323592004483952560
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--headingFontAlt'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRANSFER_KEY,',
'TRANSFER_CASE_NO,',
'EXT_UNIVERSITY_FROM, ',
'EXT_PROGRAMME_FROM, ',
'EXT_LEVEL1_STATUS, ',
'EXT_LEVEL1_APPREJ_BY, ',
'EXT_LEVEL1_APPREJ_DATE, ',
'EXT_LEVEL2_STATUS, ',
'EXT_LEVEL2_APPREJ_BY, ',
'EXT_LEVEL2_APPREJ_DATE,',
'EXT_LEVEL3_STATUS,',
'EXT_LEVEL3_APPREJ_BY,',
'EXT_LEVEL3_APPREJ_DATE',
'FROM STUDENT_TRANSFER',
'WHERE EXTERNAL_INTERNAL IN (''External'',''Exemption'')',
'AND STUDENT_KEY = :P648_STUDENT_KEY',
'-- ORDER BY TRANSFER_CASE_NO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Data Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794302095531439)
,p_query_column_id=>6
,p_column_alias=>'EXT_LEVEL1_APPREJ_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Approval By<br>(Faculty)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794471701531440)
,p_query_column_id=>7
,p_column_alias=>'EXT_LEVEL1_APPREJ_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Approval Date<br>(Faculty)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794278498531438)
,p_query_column_id=>5
,p_column_alias=>'EXT_LEVEL1_STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Approval Status<br>(Faculty)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794687610531442)
,p_query_column_id=>9
,p_column_alias=>'EXT_LEVEL2_APPREJ_BY'
,p_column_display_sequence=>90
,p_column_heading=>'Approval By<br>(Faculty Dean)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794748630531443)
,p_query_column_id=>10
,p_column_alias=>'EXT_LEVEL2_APPREJ_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Approval Date<br>(Faculty Dean)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794512659531441)
,p_query_column_id=>8
,p_column_alias=>'EXT_LEVEL2_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Approval Status<br>(Faculty Dean)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796480609531460)
,p_query_column_id=>12
,p_column_alias=>'EXT_LEVEL3_APPREJ_BY'
,p_column_display_sequence=>130
,p_column_heading=>'Approval By<br>(RO)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796547163531461)
,p_query_column_id=>13
,p_column_alias=>'EXT_LEVEL3_APPREJ_DATE'
,p_column_display_sequence=>140
,p_column_heading=>'Approval Date<br>(RO)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796342429531459)
,p_query_column_id=>11
,p_column_alias=>'EXT_LEVEL3_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'Approval Status<br>(RO)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794151762531437)
,p_query_column_id=>4
,p_column_alias=>'EXT_PROGRAMME_FROM'
,p_column_display_sequence=>40
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794061754531436)
,p_query_column_id=>3
,p_column_alias=>'EXT_UNIVERSITY_FROM'
,p_column_display_sequence=>30
,p_column_heading=>'From University'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796228674531458)
,p_query_column_id=>2
,p_column_alias=>'TRANSFER_CASE_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Reference No.'
,p_column_link=>'f?p=&APP_ID.:1022:&SESSION.::&DEBUG.:1022:P1022_TRANSFER_KEY:#TRANSFER_KEY#'
,p_column_linktext=>'#TRANSFER_CASE_NO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652793977524531435)
,p_query_column_id=>1
,p_column_alias=>'TRANSFER_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(254585829290192323)
,p_plug_name=>'FINANCE INFORMATION'
,p_static_id=>'finance-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHN''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(256984070185278003)
,p_plug_name=>'Finance Option'
,p_static_id=>'finance-option'
,p_parent_plug_id=>wwv_flow_imp.id(254585829290192323)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(839849662753914847)
,p_plug_name=>'Financial Statement'
,p_static_id=>'financial-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.INVOICE_KEY,',
'    A.CAMPUS_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    A.INVOICE_NUMBER,',
'    (CASE WHEN A.TRANSACTION_TYPE = ''Collection''',
'            THEN ''<a href="&GLO_REPORT_URL.&GLO_RECEIPT.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.''',
'                  ||''&P1=&GLO_INSTITUTE_KEY.&P2=''||A.CAMPUS_KEY||''&P3=''||A.SFM_KEY||''&P0=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||CAMPUS_KEY||SFM_KEY)||''" target="_blank">''||A.TRANSACTION_NUMBER||''</a>''',
'          WHEN A.TRANSACTION_TYPE = ''Invoice''',
'            THEN ''<a href="&GLO_REPORT_URL.&GLO_INVOICE.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.''',
'                  ||''&P1=&GLO_INSTITUTE_KEY.&P2=''||A.CAMPUS_KEY||''&P3=''||A.INVOICE_KEY||''&P5=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||CAMPUS_KEY||INVOICE_KEY)||''" target="_blank">''||A.TRANSACTION_NUMBER||'' ''||A.INSTALMENT||''</a>''',
'          ELSE A.TRANSACTION_NUMBER',
'    END) as TRANSACTION_NUMBER,',
'    A.TYPE_OF_FEES,',
'    A.TRANSACTION_AMOUNT,',
'    A.CURRENCY,',
'    A.CURRENCY_RATE,',
'    A.AMOUNT_LOCAL_CURRENCY,',
'    ( CASE WHEN TRANSACTION_TYPE IN (''Invoice'',''Opening Balance'',''Opening Balance Deposit'') AND NVL(IS_INVOICE,''N'') = ''Y'' THEN',
'        A.INVOICE_BALANCE_DUE',
'      WHEN TRANSACTION_TYPE IN (''Refund'') AND NVL(IS_INVOICE,''N'') = ''N'' THEN',
'        A.INVOICE_BALANCE_DUE',
'    END ) AS INVOICE_BALANCE_DUE,',
'    A.UNMATCH_AMOUNT,',
'    a.matched_Amount,',
'    A.REMARKS,',
'    A.MOP,',
'    (SELECT PROGRAMME_CODE FROM V_STUDENT_PROGRAMME_MASTER WHERE SCM_KEY = A.SCM_KEY) PROGRAMME,',
'    (SELECT INTAKE FROM V_STUDENT_PROGRAMME_MASTER WHERE SCM_KEY = A.SCM_KEY) INTAKE,',
'    TOTAL_CN, ',
'    TOTAL_CN_CANCEL,',
'     TOTAL_DISCOUNT, ',
'     TOTAL_DISCOUNT_CANCEL,',
'     TOTAL_SIBLING_DISCOUNT,',
'     TOTAL_SPECIAL_DISCOUNT,',
'     TOTAL_STAFF_DISCOUNT,',
'     TOTAL_SCHOLARSHIP, ',
'     TOTAL_SCHOLARSHIP_CANCEL, ',
'     TOTAL_NET_TO_PAY, ',
'     TOTAL_COLLECTED, ',
'     TOTAL_REFUND,',
'     ( select sum(amount_local_currency)',
'            from student_fee_master',
'            where STUDENT_KEY = A.STUDENT_KEY',
'            AND SFM_KEY <= A.SFM_KEY ) AS RUNNING_BALANCE,',
'    ''zoom'' as zoom,',
'    FOR_TRANSACTION_NUMBER,',
'    ENR_NUMBER,',
'    A.FROM_BANK,',
'    A.REFERENCE_NO,',
'    A.STUDY_INTAKE SEMESTER,',
'    A.AMOUNT_BEFORE_TAX,',
'    A.TAX_AMOUNT,',
'    A.TAX_RATE',
'',
'FROM V_STUDENT_STATEMENT A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'order by transaction_date, sfm_key'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB0 Student Financial Statement'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 10px 0;">',
'        This page displays the student''s complete financial statement, including all invoices, credit notes, discounts, scholarships, payments, and other financial transactions. The running balance is automatically calculated after each transaction t'
||'o provide the student''s current outstanding balance or overpayment amount.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;',
'        color:#B00020;">',
unistr('        <b>Balance Calculation:</b> Invoice \2212 Credit Note \2212 Discount \2212 Scholarship \2212 Payment = Outstanding Balance / Overpayment'),
'    </p>',
'',
'</div>'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(846674940773011731)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_internal_uid=>819618983045186002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785986545199215656)
,p_db_column_name=>'AMOUNT_BEFORE_TAX'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Amount Before Tax'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92708247979109197)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Amount Local Currency'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92704217928109195)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92707359971109197)
,p_db_column_name=>'CURRENCY'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Currency'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92707829110109197)
,p_db_column_name=>'CURRENCY_RATE'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Currency Rate'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(191206155266549836)
,p_db_column_name=>'ENR_NUMBER'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'ENR Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92715776131109200)
,p_db_column_name=>'FOR_TRANSACTION_NUMBER'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Adjustment For<br>Transaction Number'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553870649809635)
,p_db_column_name=>'FROM_BANK'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'From Bank'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92710995173109198)
,p_db_column_name=>'INTAKE'
,p_display_order=>230
,p_column_identifier=>'U'
,p_column_label=>'Intake'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92708639445109197)
,p_db_column_name=>'INVOICE_BALANCE_DUE'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Invoice Balance Due'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92703801251109195)
,p_db_column_name=>'INVOICE_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Invoice Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92705855415109196)
,p_db_column_name=>'INVOICE_NUMBER'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Invoice Number'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92709449570109197)
,p_db_column_name=>'MATCHED_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Matched Amount'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92710180433109198)
,p_db_column_name=>'MOP'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Mode of Payment'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92704974373109196)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Payment Due Date'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92710604843109198)
,p_db_column_name=>'PROGRAMME'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Programme'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553420039809631)
,p_db_column_name=>'REFERENCE_NO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92709848823109198)
,p_db_column_name=>'REMARKS'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92714998888109200)
,p_db_column_name=>'RUNNING_BALANCE'
,p_display_order=>330
,p_column_identifier=>'AE'
,p_column_label=>'Running Balance'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60554095128809638)
,p_db_column_name=>'SEMESTER'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92703414541109195)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92703013238109195)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785986620739215657)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785986767360215658)
,p_db_column_name=>'TAX_RATE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tax Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92711424563109198)
,p_db_column_name=>'TOTAL_CN'
,p_display_order=>240
,p_column_identifier=>'V'
,p_column_label=>'Total CN'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92711805926109198)
,p_db_column_name=>'TOTAL_CN_CANCEL'
,p_display_order=>250
,p_column_identifier=>'W'
,p_column_label=>'Total CN Cancel'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92714229677109199)
,p_db_column_name=>'TOTAL_COLLECTED'
,p_display_order=>310
,p_column_identifier=>'AC'
,p_column_label=>'Total Collected'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92712222013109199)
,p_db_column_name=>'TOTAL_DISCOUNT'
,p_display_order=>260
,p_column_identifier=>'X'
,p_column_label=>'Total Discount'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92712575332109199)
,p_db_column_name=>'TOTAL_DISCOUNT_CANCEL'
,p_display_order=>270
,p_column_identifier=>'Y'
,p_column_label=>'Total Discount Cancel'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92713827720109199)
,p_db_column_name=>'TOTAL_NET_TO_PAY'
,p_display_order=>300
,p_column_identifier=>'AB'
,p_column_label=>'Total Net To Pay'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92714646123109200)
,p_db_column_name=>'TOTAL_REFUND'
,p_display_order=>320
,p_column_identifier=>'AD'
,p_column_label=>'Total Refund'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92713021752109199)
,p_db_column_name=>'TOTAL_SCHOLARSHIP'
,p_display_order=>280
,p_column_identifier=>'Z'
,p_column_label=>'Total Scholarship'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92713402441109199)
,p_db_column_name=>'TOTAL_SCHOLARSHIP_CANCEL'
,p_display_order=>290
,p_column_identifier=>'AA'
,p_column_label=>'Total Scholarship Cancel'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53257801327169401)
,p_db_column_name=>'TOTAL_SIBLING_DISCOUNT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total Sibling Discount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53257975139169402)
,p_db_column_name=>'TOTAL_SPECIAL_DISCOUNT'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Total Special Discount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53258076778169403)
,p_db_column_name=>'TOTAL_STAFF_DISCOUNT'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Total Staff Discount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92706986784109196)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Transaction Amount'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92704563679109196)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Transaction Date'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92706174358109196)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Transaction Number'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92705395509109196)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Transaction Type'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92706603888109196)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Type Of Fees'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92708972707109197)
,p_db_column_name=>'UNMATCH_AMOUNT'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Unmatch Amount'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92715373613109200)
,p_db_column_name=>'ZOOM'
,p_display_order=>50
,p_column_identifier=>'AF'
,p_column_label=>'Zoom'
,p_column_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(846696788329018456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656602'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ZOOM:TRANSACTION_DATE:PAYMENT_DUE_DATE:TRANSACTION_TYPE:INVOICE_NUMBER:TRANSACTION_NUMBER:TYPE_OF_FEES:TRANSACTION_AMOUNT:CURRENCY:CURRENCY_RATE:AMOUNT_LOCAL_CURRENCY:RUNNING_BALANCE:INVOICE_BALANCE_DUE:UNMATCH_AMOUNT:MATCHED_AMOUNT:REMARKS:MOP:FROM_'
||'BANK:REFERENCE_NO:PROGRAMME:INTAKE:TOTAL_CN:TOTAL_CN_CANCEL:TOTAL_DISCOUNT:TOTAL_DISCOUNT_CANCEL:TOTAL_SIBLING_DISCOUNT:TOTAL_SPECIAL_DISCOUNT:TOTAL_STAFF_DISCOUNT:TOTAL_SCHOLARSHIP:TOTAL_SCHOLARSHIP_CANCEL:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:TOTAL_REFU'
||'ND:FOR_TRANSACTION_NUMBER:ENR_NUMBER:SEMESTER:AMOUNT_BEFORE_TAX:TAX_AMOUNT:TAX_RATE'
,p_sum_columns_on_break=>'AMOUNT_LOCAL_CURRENCY:INVOICE_BALANCE_DUE:UNMATCH_AMOUNT:MATCHED_AMOUNT:TOTAL_CN:TOTAL_CN_CANCEL:TOTAL_DISCOUNT:TOTAL_DISCOUNT_CANCEL:TOTAL_SCHOLARSHIP:TOTAL_SCHOLARSHIP_CANCEL:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:TOTAL_REFUND'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(332188563238957436)
,p_plug_name=>'Outstanding Fees'
,p_static_id=>'font-color-red-outstanding-br-fees-font'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    A.INVOICE_NUMBER,',
'    A.TRANSACTION_NUMBER,',
'    A.TYPE_OF_FEES,',
'    AMOUNT_LOCAL_CURRENCY AS TRANSACTION_AMOUNT,',
'    A.CURRENCY,',
'    A.CURRENCY_RATE,',
'    A.AMOUNT_LOCAL_CURRENCY,',
'    A.INVOICE_BALANCE_DUE,',
'    A.STUDY_INTAKE SEMESTER,',
'    A.AMOUNT_BEFORE_TAX,',
'    A.TAX_AMOUNT,',
'    A.TAX_RATE',
'FROM V_STUDENT_STATEMENT0 A --V_STUDENT_STATEMENT_MINI1 A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE IN (''Invoice'',''Opening Balance'',''Opening Balance Deposit'')',
'AND A.IS_INVOICE = ''Y''',
'AND nvl(A.INVOICE_BALANCE_DUE,0) > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<font color=''red''>Outstanding<BR>Fees</font>'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB0 Outstanding Fees'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays all outstanding fees for the selected student, including unpaid invoices, payment due dates, fee types, and outstanding balances. Any available prepayment amount is also shown and may be applied during payment. Click <stron'
||'g>Pay Outstanding Fees</strong> to record a payment for the selected outstanding charges.',
'    </p>',
'',
'</div>'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(332188617874957437)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_internal_uid=>305132660147131708
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987777991215668)
,p_db_column_name=>'AMOUNT_BEFORE_TAX'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Amount Before Tax'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92797250020109234)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92796451363109233)
,p_db_column_name=>'CURRENCY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92796783773109234)
,p_db_column_name=>'CURRENCY_RATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Currency Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92797605344109234)
,p_db_column_name=>'INVOICE_BALANCE_DUE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Invoice Balance Due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92794775549109233)
,p_db_column_name=>'INVOICE_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Invoice Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92793969962109233)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Due Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60554430117809641)
,p_db_column_name=>'SEMESTER'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92793182632109232)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92792817171109232)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987810388215669)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987930783215670)
,p_db_column_name=>'TAX_RATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tax Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92796035493109233)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92793645263109232)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92795223913109233)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92794408062109233)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92795641339109233)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(332484772465858413)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657420'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'TRANSACTION_DATE:PAYMENT_DUE_DATE:TRANSACTION_TYPE:INVOICE_NUMBER:TRANSACTION_NUMBER:TYPE_OF_FEES:AMOUNT_LOCAL_CURRENCY:INVOICE_BALANCE_DUE:SEMESTER:AMOUNT_BEFORE_TAX:TAX_AMOUNT:TAX_RATE'
,p_sum_columns_on_break=>'INVOICE_BALANCE_DUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(743833997435993002)
,p_plug_name=>'Grades Witheld'
,p_static_id=>'grades-witheld'
,p_parent_plug_id=>wwv_flow_imp.id(325946584932089395)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>55
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRADE_WITHELD_ID,',
'       WITHELD_BY_DEPARTMENT,',
'       WITHELD_REMARKS,',
'       WITHELD_BY,',
'       WITHELD_DATE,',
'       (CASE WHEN (SELECT COUNT(*) FROM STUDENT_GRADE_WITHELD WHERE GRADE_WITHELD_ID = A.GRADE_WITHELD_ID',
'                    AND IS_WITHDRAWN = ''Y''and WITHELD_DATE IS NOT NULL) > 0 THEN',
'            NULL',
'        ELSE',
'            ''WITHDRAWN''',
'        END) IS_WITHDRAWN,',
'       WITHDRAWN_BY,',
'       WITHDRAWN_DATE,',
'       INSTITUTE_KEY,',
'       STUDENT_KEY',
'from STUDENT_GRADE_WITHELD A',
'where STUDENT_KEY = :P648_STUDENT_KEY',
'and INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'and WITHELD_BY_DEPARTMENT = ''Registrar Office''',
'-- and IS_WITHDRAWN <> ''Y''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHM''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Grades Witheld'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'Record Office and Finance Office may bar the student from seeing their Grades or perfoming Course Selection<br><br>'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(190732509867283635)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>163676552139457906
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92482654201109096)
,p_db_column_name=>'GRADE_WITHELD_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Grade Witheld Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92485783714109098)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92484592235109097)
,p_db_column_name=>'IS_WITHDRAWN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Withdrawn'
,p_column_link=>'f?p=&APP_ID.:865:&SESSION.::&DEBUG.:865:P865_GRADE_WITHELD_ID:#GRADE_WITHELD_ID#'
,p_column_linktext=>'#IS_WITHDRAWN#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot "'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92486184556109098)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92485021977109097)
,p_db_column_name=>'WITHDRAWN_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Withdrawn By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92485430950109098)
,p_db_column_name=>'WITHDRAWN_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Witheld Withdrawn On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92483816249109097)
,p_db_column_name=>'WITHELD_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92483040280109097)
,p_db_column_name=>'WITHELD_BY_DEPARTMENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Witheld By Department'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92484245881109097)
,p_db_column_name=>'WITHELD_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92483391979109097)
,p_db_column_name=>'WITHELD_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(234229979701609601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654306'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WITHELD_BY:WITHELD_DATE:WITHELD_REMARKS:WITHDRAWN_DATE:IS_WITHDRAWN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(743835593268993018)
,p_plug_name=>'Grades Witheld_1'
,p_static_id=>'grades-witheld-2'
,p_parent_plug_id=>wwv_flow_imp.id(743833997435993002)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>65
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRADE_WITHELD_ID,',
'       WITHELD_BY_DEPARTMENT,',
'       WITHELD_REMARKS,',
'       WITHELD_BY,',
'       WITHELD_DATE,',
'       (CASE WHEN (SELECT COUNT(*) FROM STUDENT_GRADE_WITHELD WHERE GRADE_WITHELD_ID = A.GRADE_WITHELD_ID',
'                    AND IS_WITHDRAWN = ''Y''and WITHELD_DATE IS NOT NULL) > 0 THEN',
'            NULL',
'        ELSE',
'            ''WITHDRAWN''',
'        END) IS_WITHDRAWN,',
'       WITHDRAWN_BY,',
'       WITHDRAWN_DATE,',
'       INSTITUTE_KEY,',
'       STUDENT_KEY',
'from STUDENT_GRADE_WITHELD A',
'where STUDENT_KEY = :P648_STUDENT_KEY',
'and INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'and WITHELD_BY_DEPARTMENT = ''Finance Office''',
'-- and IS_WITHDRAWN <> ''Y''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHM''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Grades Witheld_1'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(190733571734283646)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>163677614006457917
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92488093975109099)
,p_db_column_name=>'GRADE_WITHELD_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Grade Witheld Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92491309462109100)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92490142565109100)
,p_db_column_name=>'IS_WITHDRAWN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Withdrawn'
,p_column_link=>'f?p=&APP_ID.:865:&SESSION.::&DEBUG.:865:P865_GRADE_WITHELD_ID:#GRADE_WITHELD_ID#'
,p_column_linktext=>'#IS_WITHDRAWN#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot "'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92491665535109100)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92490532506109100)
,p_db_column_name=>'WITHDRAWN_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Withdrawn By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92490934698109100)
,p_db_column_name=>'WITHDRAWN_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Witheld Withdrawn On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92489304646109099)
,p_db_column_name=>'WITHELD_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92488482037109099)
,p_db_column_name=>'WITHELD_BY_DEPARTMENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Witheld By Department'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92489750328109099)
,p_db_column_name=>'WITHELD_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92488868264109099)
,p_db_column_name=>'WITHELD_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(234230635636609605)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654361'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WITHELD_BY:WITHELD_DATE:WITHELD_REMARKS:WITHDRAWN_DATE:IS_WITHDRAWN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(254584604953192311)
,p_name=>'Guardian Info'
,p_static_id=>'guardian-info'
,p_parent_plug_id=>wwv_flow_imp.id(253587559346377532)
,p_template=>2323592004483952560
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUD_GUARDIAN_LINK_KEY,',
'RELATIONSHIP,',
'NATIONALITY,',
'TITLE,',
'SURNAME,',
'GIVEN_NAME,',
'GUARDIAN_NAME,',
'GUARDIAN_IC_PASSPORT,',
'''Unlink'' UNLINK_GUARDIAN,',
'''View'' GUARDIAN_DETAIL',
'FROM V_STUDENT_GUARDIAN_LINK',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92416046285109065)
,p_query_column_id=>6
,p_column_alias=>'GIVEN_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Given Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(394647789754935955)
,p_query_column_id=>10
,p_column_alias=>'GUARDIAN_DETAIL'
,p_column_display_sequence=>20
,p_column_heading=>'Detail'
,p_column_link=>'f?p=&APP_ID.:976:&SESSION.::&DEBUG.:976:P976_STUD_GUARDIAN_LINK_KEY:#STUD_GUARDIAN_LINK_KEY#'
,p_column_linktext=>'#GUARDIAN_DETAIL#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92416836544109065)
,p_query_column_id=>8
,p_column_alias=>'GUARDIAN_IC_PASSPORT'
,p_column_display_sequence=>80
,p_column_heading=>'IC/Passport Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92416440476109065)
,p_query_column_id=>7
,p_column_alias=>'GUARDIAN_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92414796492109065)
,p_query_column_id=>3
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>90
,p_column_heading=>'Nationality'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(394647407247935952)
,p_query_column_id=>2
,p_column_alias=>'RELATIONSHIP'
,p_column_display_sequence=>30
,p_column_heading=>'Relationship'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(394647319838935951)
,p_query_column_id=>1
,p_column_alias=>'STUD_GUARDIAN_LINK_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92415587154109065)
,p_query_column_id=>5
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Surname'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(394647558689935953)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(394647652385935954)
,p_query_column_id=>9
,p_column_alias=>'UNLINK_GUARDIAN'
,p_column_display_sequence=>110
,p_column_heading=>'Action'
,p_column_link=>'f?p=&APP_ID.:1050:&SESSION.::&DEBUG.:1050:P1050_STUD_GUARDIAN_LINK_KEY:#STUD_GUARDIAN_LINK_KEY#'
,p_column_linktext=>'#UNLINK_GUARDIAN#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(719957415459505450)
,p_name=>'Guardian Info'
,p_static_id=>'guardian-info-2'
,p_parent_plug_id=>wwv_flow_imp.id(719957260967505449)
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUD_GUARDIAN_LINK_KEY,',
'RELATIONSHIP,',
'NATIONALITY,',
'TITLE,',
'SURNAME,',
'GIVEN_NAME,',
'GUARDIAN_NAME,',
'GUARDIAN_IC_PASSPORT,',
'''View'' GUARDIAN_DETAIL',
'FROM V_STUDENT_GUARDIAN_LINK',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92602033220109149)
,p_query_column_id=>6
,p_column_alias=>'GIVEN_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Given Name'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32347175745301895)
,p_query_column_id=>9
,p_column_alias=>'GUARDIAN_DETAIL'
,p_column_display_sequence=>20
,p_column_heading=>'Detail'
,p_column_link=>'f?p=&APP_ID.:976:&SESSION.::&DEBUG.:976:P976_STUD_GUARDIAN_LINK_KEY:#STUD_GUARDIAN_LINK_KEY#'
,p_column_linktext=>'#GUARDIAN_DETAIL#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92602804509109149)
,p_query_column_id=>8
,p_column_alias=>'GUARDIAN_IC_PASSPORT'
,p_column_display_sequence=>80
,p_column_heading=>'IC/ID/Passport Number'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92602395497109149)
,p_query_column_id=>7
,p_column_alias=>'GUARDIAN_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92600792974109148)
,p_query_column_id=>3
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>90
,p_column_heading=>'Nationality'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32347037254301893)
,p_query_column_id=>2
,p_column_alias=>'RELATIONSHIP'
,p_column_display_sequence=>30
,p_column_heading=>'Relationship'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32360096761462393)
,p_query_column_id=>1
,p_column_alias=>'STUD_GUARDIAN_LINK_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92601580826109149)
,p_query_column_id=>5
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Surname'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32360206459462394)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'Title'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(850437917125019205)
,p_plug_name=>'Hidden Item'
,p_static_id=>'hidden-item'
,p_plug_display_sequence=>51
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_URL VARCHAR2(4000);',
'    V_CAMPUS_KEY NUMBER;',
'    V_TRANSACTION_NUMBER VARCHAR2(400);',
'    ',
'BEGIN',
'',
'    IF :P648_R IS NOT NULL THEN',
'    ',
'        SELECT CAMPUS_KEY, TRANSACTION_NUMBER',
'        INTO V_CAMPUS_KEY, V_TRANSACTION_NUMBER',
'        FROM STUDENT_FEE_MASTER WHERE SFM_KEY = :P648_R;',
'        ',
'        V_URL := ''&GLO_REPORT_URL.&GLO_RECEIPT.&_repFormat=pdf&_dataSource=&GLO_JASPERCMDKEY.''',
'                  ||''&P1=&GLO_INSTITUTE_KEY.&P2=''||V_CAMPUS_KEY||''&P3=''||:P648_R||''&P0=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||V_CAMPUS_KEY||:P648_R);',
'        ',
'        HTP.P(''<script>'');',
'        HTP.P(''window.open("''||V_URL||''");'');',
'        HTP.P(''</script>'');',
unistr('        HTP.P(''<a target="_blank" href="''||V_URL||''" >Click\00A0this\00A0link\00A0if\00A0receipt\00A0does\00A0not\00A0open\00A0automatically (Receipt number: ''||V_TRANSACTION_NUMBER||'')</a>'');'),
'    ',
'    END IF;',
'        ',
'    :P648_R := NULL;',
'    ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(719952592071505402)
,p_plug_name=>'i-STUDENT FILE'
,p_static_id=>'i-student-file'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAKV''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253585540427377511)
,p_plug_name=>'IDENTIFICATION'
,p_static_id=>'identification'
,p_parent_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--lightBG'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(635163278647041603)
,p_plug_name=>'Immigration Documents'
,p_static_id=>'immigration-documents'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.IMMI_DOC_KEY,',
'A.IMMI_DOC_STATUS,',
'A.CREATED_DATE,',
'(SELECT PROGRAMME_NAME FROM PROGRAMME_MASTER',
'  WHERE PROGRAMME_ID = A.PROGRAMME_ID) PROGRAMME_NAME,',
'(SELECT STUDY_INTAKE FROM COURSE_APPLIED',
'  WHERE COURSE_APPLIED_KEY = A.COURSE_APPLIED_KEY) STUDY_INTAKE,',
'A.SCHEDULE_START,',
'A.TASK_REMARK,',
'A.TRIGGER_FROM,',
'A.IS_ACTIVE',
'FROM IMMIGRATION_DOCUMENT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(635163548111041605)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>608107590383215876
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92570056364109135)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92572020214109136)
,p_db_column_name=>'IMMI_DOC_KEY'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:740:&SESSION.::&DEBUG.:740:P740_IMMI_DOC_KEY,P740_CTRL_PROC:#IMMI_DOC_KEY#,IO'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92573224464109136)
,p_db_column_name=>'IMMI_DOC_STATUS'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92572398065109136)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92570394128109135)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92571208928109136)
,p_db_column_name=>'SCHEDULE_START'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Schedule Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92570843314109136)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Intake / Semester'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92571588131109136)
,p_db_column_name=>'TASK_REMARK'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Task Remark'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92572826965109136)
,p_db_column_name=>'TRIGGER_FROM'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Apply For'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(635211562921231473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_DOC_KEY:IMMI_DOC_STATUS:CREATED_DATE:PROGRAMME_NAME:STUDY_INTAKE:SCHEDULE_START:TASK_REMARK:TRIGGER_FROM:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263626385362696368)
,p_plug_name=>'Incidentals and Warning Letter'
,p_static_id=>'incidentals-and-warning-letter'
,p_parent_plug_id=>wwv_flow_imp.id(720011543767716712)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720298310429403747)
,p_plug_name=>'Incidentals and Warning Letter'
,p_static_id=>'incidentals-and-warning-letter-2'
,p_parent_plug_id=>wwv_flow_imp.id(263626385362696368)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_DOCUMENT_KEY,',
'    A.DOCUMENT_IMAGE,',
'    A.DOCUMENT_REMARK,',
'    -- A.DOCUMENT_DESCRIPTION,',
'    A.DOCUMENT_TYPE,',
'    A.DOCUMENET_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.IMAGE_TYPE,',
'    A.IMAGE_FILE_NAME,',
'    A.INSTITUTE_KEY,',
'    A.BFILE_IDENTIFIER_ID,',
'    :G_FILE_PATH||BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Incidentals and Warning Letter'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720298512881403749)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>693242555153578020
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92618335522109156)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92616277934109155)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92615153079109154)
,p_db_column_name=>'DOCUMENT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Image'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263626275055696367)
,p_db_column_name=>'DOCUMENT_REMARK'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Document Remark'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92615947615109155)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92617507276109155)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92617134125109155)
,p_db_column_name=>'IMAGE_TYPE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Image Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92617953584109156)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92616685034109155)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92614692101109154)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92614295808109154)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263626131084696366)
,p_db_column_name=>'URL'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720519475549105563)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655627'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENET_DATE:LAST_UPDATED_BY:DOCUMENT_REMARK:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(820696980944122620)
,p_name=>'Information'
,p_static_id=>'information'
,p_parent_plug_id=>wwv_flow_imp.id(820696910445122619)
,p_template=>4502917002193490937
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRANSFER_KEY,',
'TRANSFER_CASE_NO,',
'TRANSFER_STATUS,',
'(SELECT PROGRAMME_CODE||''<br>''||PROGRAMME_NAME FROM PROGRAMME_MASTER',
' WHERE PROGRAMME_ID = A.PROGRAMME_ID_FROM) FROM_PROGRAMME,',
'INT_SEMESTER_FROM,',
'(SELECT PROGRAMME_CODE||''<br>''||PROGRAMME_NAME FROM PROGRAMME_MASTER',
' WHERE PROGRAMME_ID = A.INT_PROGRAMME_KEY_TO) TO_PROGRAMME,',
'INT_SEMESTER_TO',
'FROM STUDENT_TRANSFER A',
'WHERE CREDIT_TRANSFER_ONLY = ''N''',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Data Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92516046451109112)
,p_query_column_id=>4
,p_column_alias=>'FROM_PROGRAMME'
,p_column_display_sequence=>40
,p_column_heading=>'From Programme'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92513971339109111)
,p_query_column_id=>5
,p_column_alias=>'INT_SEMESTER_FROM'
,p_column_display_sequence=>50
,p_column_heading=>'From Semester'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92515251565109111)
,p_query_column_id=>7
,p_column_alias=>'INT_SEMESTER_TO'
,p_column_display_sequence=>70
,p_column_heading=>'To Semester'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652793673471531432)
,p_query_column_id=>6
,p_column_alias=>'TO_PROGRAMME'
,p_column_display_sequence=>60
,p_column_heading=>'To Programme'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652793724234531433)
,p_query_column_id=>2
,p_column_alias=>'TRANSFER_CASE_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Reference No.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92516782064109112)
,p_query_column_id=>1
,p_column_alias=>'TRANSFER_KEY'
,p_column_display_sequence=>10
,p_column_heading=>'View'
,p_column_link=>'f?p=&APP_ID.:1020:&SESSION.::&DEBUG.:1020:P1020_TRANSFER_KEY:#TRANSFER_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'ori pg 816'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92513572455109111)
,p_query_column_id=>3
,p_column_alias=>'TRANSFER_STATUS'
,p_column_display_sequence=>30
,p_column_heading=>'Transfer Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(688925704879265743)
,p_plug_name=>'Installment '
,p_static_id=>'installment'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB3 Installment Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays invoices that are eligible for installment plans. Review the outstanding invoices and assign an installment plan where applicable, based on your institution''s payment policies.',
'        <br><br>',
'        <b>Note:</b> Only invoices with fee types marked as <b>"Allowed for Installment"</b> will be displayed in this list. The <b>Allowed for Installment</b> setting can only be maintained by authorized users.',
'    </p>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(548691367963239941)
,p_plug_name=>' Insurance'
,p_static_id=>'insurance'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTRACT_START, ',
'CONTRACT_END, ',
'FEE_OWING,',
'FEE_REMITTED,',
'SIC_ID,',
'case when IMMI_VA_KEY is not null then (SELECT VAL_REF_NO FROM IMMIGRATION_VAL_APPLICATION WHERE IMMI_VA_KEY = A.IMMI_VA_KEY) END VAL_REF_NO,',
'EMGS_REF_NUMBER,',
'EMGS_APPLIED_DATE,',
'',
'A.CARD_COLLECTION_DATE,',
'A.SENT_REMINDER,',
'(SELECT DISTINCT B.CUSTOMER_NAME||'' - ''||(SELECT DEPARTMENT_NAME FROM DEPARTMENT_SETUP WHERE DEPARTMENT_KEY = B.DEPARTMENT_KEY)',
'     FROM CUSTOMER B WHERE CUSTOMER_KEY = A.CARD_COLLECT_HANDLE_KEY)CARD_COLLECTION_HANDLED_BY',
'',
'FROM STUDENT_INSURANCE_CONTRACT A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(548691461892239942)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:769:&SESSION.::&DEBUG.:769:P769_SIC_ID,P769_CTRL_PROC:#SIC_ID#,IO'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>521635504164414213
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149134213217858134)
,p_db_column_name=>'CARD_COLLECTION_DATE'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Card Collection Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149134956219858141)
,p_db_column_name=>'CARD_COLLECTION_HANDLED_BY'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Card Collection Handled By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92544289739109124)
,p_db_column_name=>'CONTRACT_END'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Contract End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92543875100109124)
,p_db_column_name=>'CONTRACT_START'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Contract Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820595160305105)
,p_db_column_name=>'EMGS_APPLIED_DATE'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'EMGS Applied Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820464648305104)
,p_db_column_name=>'EMGS_REF_NUMBER'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'EMGS Reference Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92545117555109125)
,p_db_column_name=>'FEE_OWING'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Fee Owing'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92544726263109124)
,p_db_column_name=>'FEE_REMITTED'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Fee Remitted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149134050327858132)
,p_db_column_name=>'SENT_REMINDER'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Sent Reminder'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92545493031109125)
,p_db_column_name=>'SIC_ID'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Sic Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820388149305103)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'VAL Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(548767253661867035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTRACT_START:CONTRACT_END:VAL_REF_NO:EMGS_REF_NUMBER:EMGS_APPLIED_DATE:SENT_REMINDER:CARD_COLLECTION_DATE:CARD_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(812466883483471602)
,p_plug_name=>'INSURANCE'
,p_static_id=>'insurance-2'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AALH''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(812467024495471603)
,p_plug_name=>' Insurance'
,p_static_id=>'insurance-3'
,p_parent_plug_id=>wwv_flow_imp.id(812466883483471602)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTRACT_START, ',
'CONTRACT_END, ',
'FEE_OWING,',
'FEE_REMITTED,',
'SIC_ID,',
'case when IMMI_VA_KEY is not null then (SELECT VAL_REF_NO FROM IMMIGRATION_VAL_APPLICATION WHERE IMMI_VA_KEY = A.IMMI_VA_KEY) END VAL_REF_NO,',
'EMGS_REF_NUMBER,',
'EMGS_APPLIED_DATE,',
'',
'A.CARD_COLLECTION_DATE,',
'A.SENT_REMINDER,',
'(SELECT DISTINCT B.CUSTOMER_NAME||'' - ''||(SELECT DEPARTMENT_NAME FROM DEPARTMENT_SETUP WHERE DEPARTMENT_KEY = B.DEPARTMENT_KEY)',
'     FROM CUSTOMER B WHERE CUSTOMER_KEY = A.CARD_COLLECT_HANDLE_KEY)CARD_COLLECTION_HANDLED_BY',
'',
'FROM STUDENT_INSURANCE_CONTRACT A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(812467205717471605)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:769:&SESSION.::&DEBUG.:769:P769_SIC_ID,P769_CTRL_PROC:#SIC_ID#,INSURANCE'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>785411247989645876
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149135018031858142)
,p_db_column_name=>'CARD_COLLECTION_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Card Collection Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149135286265858144)
,p_db_column_name=>'CARD_COLLECTION_HANDLED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Card Collection Handled By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92642870501109167)
,p_db_column_name=>'CONTRACT_END'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Contract End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92642540814109167)
,p_db_column_name=>'CONTRACT_START'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Contract Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8822991417305129)
,p_db_column_name=>'EMGS_APPLIED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'EMGS Applied Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8822851852305128)
,p_db_column_name=>'EMGS_REF_NUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'EMGS Reference Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92643713963109167)
,p_db_column_name=>'FEE_OWING'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fee Owing'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92643324152109167)
,p_db_column_name=>'FEE_REMITTED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fee Remitted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149135190514858143)
,p_db_column_name=>'SENT_REMINDER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sent Reminder'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92644135772109167)
,p_db_column_name=>'SIC_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sic Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8822742335305127)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'VAL Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(812478749194351175)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655885'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTRACT_START:CONTRACT_END:VAL_REF_NO:EMGS_REF_NUMBER:EMGS_APPLIED_DATE:SENT_REMINDER:CARD_COLLECTION_DATE:CARD_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(826392883975530706)
,p_name=>'Internal'
,p_static_id=>'internal'
,p_parent_plug_id=>wwv_flow_imp.id(826392821079530705)
,p_template=>2323592004483952560
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--headingFontAlt'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRANSFER_KEY,',
'TRANSFER_CASE_NO,',
'INT_PROGRAMME_FROM,',
'INT_PROGRAMME_TO,',
'FACULTY_TO_APPROVAL,',
'FACULTY_TO_APPREJ_BY,',
'FACULTY_TO_APPREJ_DATE,',
'FACULTY_FROM_APPROVAL,',
'FACULTY_FROM_APPREJ_BY,',
'FACULTY_FROM_APPREJ_DATE,',
'RO_APPROVAL,',
'RO_APPREJ_BY,',
'RO_APPREJ_DATE',
'FROM STUDENT_TRANSFER',
'WHERE EXTERNAL_INTERNAL = ''Internal''',
'AND CREDIT_TRANSFER_ONLY = ''Y''',
'AND STUDENT_KEY = :P648_STUDENT_KEY',
'-- ORDER BY TRANSFER_CASE_NO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Data Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795707962531453)
,p_query_column_id=>9
,p_column_alias=>'FACULTY_FROM_APPREJ_BY'
,p_column_display_sequence=>90
,p_column_heading=>'Approval By<br>(Faculty From)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795816850531454)
,p_query_column_id=>10
,p_column_alias=>'FACULTY_FROM_APPREJ_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Approval Date<br>(Faculty From)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795676408531452)
,p_query_column_id=>8
,p_column_alias=>'FACULTY_FROM_APPROVAL'
,p_column_display_sequence=>80
,p_column_heading=>'Approval Status<br>(Faculty From)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795459456531450)
,p_query_column_id=>6
,p_column_alias=>'FACULTY_TO_APPREJ_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Approval By<br>(Faculty To)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795529605531451)
,p_query_column_id=>7
,p_column_alias=>'FACULTY_TO_APPREJ_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Approval Date<br>(Faculty To)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795354767531449)
,p_query_column_id=>5
,p_column_alias=>'FACULTY_TO_APPROVAL'
,p_column_display_sequence=>50
,p_column_heading=>'Approval Status<br>(Faculty To)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795090698531447)
,p_query_column_id=>3
,p_column_alias=>'INT_PROGRAMME_FROM'
,p_column_display_sequence=>30
,p_column_heading=>'From Programme'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795224010531448)
,p_query_column_id=>4
,p_column_alias=>'INT_PROGRAMME_TO'
,p_column_display_sequence=>40
,p_column_heading=>'To Programme'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796048407531456)
,p_query_column_id=>12
,p_column_alias=>'RO_APPREJ_BY'
,p_column_display_sequence=>120
,p_column_heading=>'Approval By<br>(RO)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652796152998531457)
,p_query_column_id=>13
,p_column_alias=>'RO_APPREJ_DATE'
,p_column_display_sequence=>130
,p_column_heading=>'Approval Date<br>(RO)'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652795960658531455)
,p_query_column_id=>11
,p_column_alias=>'RO_APPROVAL'
,p_column_display_sequence=>110
,p_column_heading=>'Approval Status<br>(RO)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(652794998596531446)
,p_query_column_id=>2
,p_column_alias=>'TRANSFER_CASE_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Reference No.'
,p_column_link=>'f?p=&APP_ID.:1022:&SESSION.::&DEBUG.:1022:P1022_TRANSFER_KEY:#TRANSFER_KEY#'
,p_column_linktext=>'#TRANSFER_CASE_NO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92517818939109113)
,p_query_column_id=>1
,p_column_alias=>'TRANSFER_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167691711217478901)
,p_plug_name=>'Internal Staff Email Log'
,p_static_id=>'internal-staff-email-log'
,p_parent_plug_id=>wwv_flow_imp.id(850533199722421039)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'SSMAIL_KEY,',
'EMAIL_SUBJECT,',
'CREATED_BY,',
'CREATED_DATE,',
'LINK_COLUMN,',
'LINK_KEY',
'',
'FROM STAFF_SEND_EMAIL',
'WHERE LINK_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(167691816232478902)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>167691816232478902
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167692122747478905)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167692266836478906)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167692061072478904)
,p_db_column_name=>'EMAIL_SUBJECT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Email Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167692323586478907)
,p_db_column_name=>'LINK_COLUMN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link Column'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167692463771478908)
,p_db_column_name=>'LINK_KEY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Link Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167691994275478903)
,p_db_column_name=>'SSMAIL_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:7004:&SESSION.::&DEBUG.:7004:P7004_SSMAIL_KEY:#SSMAIL_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(167704490699500622)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMAIL_SUBJECT:CREATED_DATE:SSMAIL_KEY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(546689109366748242)
,p_plug_name=>'INTERNATIONAL OFFICE'
,p_static_id=>'international-br-office'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'V_CHECK_ACCESS NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AALI''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    SELECT COUNT(*) INTO V_CHECK_ACCESS FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AALI''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 AND V_CHECK_ACCESS >0 AND :P648_LOCAL_OVERSEAS_STUDENT = ''International'' THEN',
'        RETURN TRUE;',
'    ELSIF V_CHECK > 0 AND V_CHECK_ACCESS = 0 AND :P648_LOCAL_OVERSEAS_STUDENT = ''International'' THEN',
'        RETURN TRUE;',
'    ELSIF V_CHECK = 0 AND V_CHECK_ACCESS > 0 AND :P648_LOCAL_OVERSEAS_STUDENT = ''International'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(256984372162278006)
,p_plug_name=>'Invoices'
,p_static_id=>'invoices'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    (''<a href="&GLO_REPORT_URL.&GLO_INVOICE.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.''',
'      ||''&P1=&GLO_INSTITUTE_KEY.&P2=''||A.CAMPUS_KEY||''&P3=''||A.INVOICE_KEY||''&P5=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||CAMPUS_KEY||INVOICE_KEY)',
'      ||''" target="_blank">''||A.INVOICE_NUMBER||''</a>'') INVOICE_NUMBER,',
'    A.TYPE_OF_FEES,',
'    A.CURRENCY,',
'    A.CURRENCY_RATE,',
'    A.AMOUNT_LOCAL_CURRENCY,',
'    A.TOTAL_ALLOCATED AS TOTAL_COLLECTED,',
'    A.INVOICE_BALANCE_DUE,',
'    TOTAL_NET_TO_PAY AS NET_INVOICE_AMOUNT,',
'    TOTAL_ADJUSTMENT,',
'	( case when nvl(A.INVOICE_BALANCE_DUE,0) <> 0 then',
'		''Set Installment''',
'	end )  as installment,',
'    A.REMARKS,',
'    A.STUDY_INTAKE SEMESTER,',
'    A.AMOUNT_BEFORE_TAX,',
'    A.TAX_AMOUNT,',
'    A.TAX_RATE',
'',
'FROM V_STUDENT_STATEMENT0 A --V_STUDENT_STATEMENT_MINI1 A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE IN (''Invoice'',''Opening Balance'',''Opening Balance Deposit'')',
'AND A.IS_INVOICE = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Invoices'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83E\DDFE Invoices'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays all invoices issued to the selected student, together with the fee details, payment due dates, adjustments, amounts paid, outstanding balances, and invoice remarks. Click the <strong>Search</strong> icon to view the detaile'
||'d fee breakdown for an invoice, or use <strong>Create New Invoice</strong> to issue a new invoice.',
'    </p>',
'',
'</div>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>**<br>',
'Net Invoice amount = Original Invoice Amount - All Adjusted Amount .<br>',
'Invoice Balance Due = Net Invoice Amount - Total Paid.',
'',
''))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(256984471969278007)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_internal_uid=>229928514241452278
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987462315215665)
,p_db_column_name=>'AMOUNT_BEFORE_TAX'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Amount Before Tax'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92752164502109215)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Original Invoice Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92751412484109215)
,p_db_column_name=>'CURRENCY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92751798229109215)
,p_db_column_name=>'CURRENCY_RATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Currency Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(984008784736549156)
,p_db_column_name=>'INSTALLMENT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Installment'
,p_column_link=>'f?p=&APP_ID.:3001:&SESSION.::&DEBUG.:3001:P3001_SFM_KEY:#SFM_KEY#'
,p_column_linktext=>'#INSTALLMENT#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92752652725109215)
,p_db_column_name=>'INVOICE_BALANCE_DUE'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Invoice Balance Due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92750615770109215)
,p_db_column_name=>'INVOICE_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Invoice Number'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92748237179109214)
,p_db_column_name=>'NET_INVOICE_AMOUNT'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Net Invoice Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92749793491109214)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Due Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60553682909809633)
,p_db_column_name=>'REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
end;
/
begin
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60554308714809640)
,p_db_column_name=>'SEMESTER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92748973564109214)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92748623381109214)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987522751215666)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987648113215667)
,p_db_column_name=>'TAX_RATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tax Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209218562279471676)
,p_db_column_name=>'TOTAL_ADJUSTMENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Total Adjustment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92752975748109216)
,p_db_column_name=>'TOTAL_COLLECTED'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Total Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92749402695109214)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92750201878109215)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92751022456109215)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(256997584776333740)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656974'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TRANSACTION_DATE:PAYMENT_DUE_DATE:TRANSACTION_TYPE:INVOICE_NUMBER:TYPE_OF_FEES:AMOUNT_LOCAL_CURRENCY:TOTAL_ADJUSTMENT:NET_INVOICE_AMOUNT:TOTAL_COLLECTED:INVOICE_BALANCE_DUE:SEMESTER:REMARKS:AMOUNT_BEFORE_TAX:TAX_AMOUNT:TAX_RATE'
,p_sort_column_1=>'TRANSACTION_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRANSACTION_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'AMOUNT_LOCAL_CURRENCY:INVOICE_BALANCE_DUE:TOTAL_COLLECTED:NET_INVOICE_AMOUNT:TOTAL_ADJUSTMENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(562394788981929002)
,p_plug_name=>'IO Activities'
,p_static_id=>'io-activities'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TASK_KEY,',
'CREATED_DATE,',
'CREATED_BY,',
'NULL OUTCOME,',
'TASK_COMPLETED_DATE,',
'JOB,',
'STATUS',
'FROM STAFF_TASK_LIST',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND (MODULE = ''IO'' OR JOB LIKE ''Visa%'' OR JOB LIKE ''Immigration%'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'NEVER'
,p_ai_enabled=>false
,p_plug_comment=>'VAL/Visa Activities'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(562394978582929004)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No records found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>535339020855103275
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92547808271109126)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92547400295109126)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92549033705109126)
,p_db_column_name=>'JOB'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92548235352109126)
,p_db_column_name=>'OUTCOME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Outcome'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92549374487109126)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92548589568109126)
,p_db_column_name=>'TASK_COMPLETED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Task Completed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92546971764109125)
,p_db_column_name=>'TASK_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Task Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(562403681648965280)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:JOB:TASK_COMPLETED_DATE:OUTCOME:STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(806842901139016636)
,p_plug_name=>'IO Arrival'
,p_static_id=>'io-arrival'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'ARRIVAL_STATUS,',
'ARRIVAL_REMARKS,',
'IO_DATE_REPORTED,',
'STUDENT_MOBILE_NO,',
'BRIEFING_DATE,',
'HEALTH_EXAMINATION_DATE,',
'PASSPORT_SUBMISSION_DATE,',
'ENTRY_VISA_EXPIRY_DATE,',
'STUDENT_KEY,',
'BRIEFING_TIME_FROM,',
'BRIEFING_TIME_TO,',
'FACULTY_HANDOVER_DATE,',
'HEALTH_EXAMINATION_STATUS',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811280163409723004)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811280274302723005)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'N',
  'hide_control', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811282435141723026)
,p_name=>'ARRIVAL_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARRIVAL_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Arrival Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806844044904016647)
,p_name=>'ARRIVAL_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARRIVAL_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Arrival Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as dis , field_value as return',
'from v_setup_detail',
'where field_name = ''ARRIVAL_STATUS''',
'and (institute_key = :GLO_INSTITUTE_KEY or institute_key is null)',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-None-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806844281698016650)
,p_name=>'BRIEFING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRIEFING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Briefing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(830089796766687132)
,p_name=>'BRIEFING_TIME_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRIEFING_TIME_FROM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Time From'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE) + (LEVEL-1)/24/60, ''HH24:MI'') DV, TO_CHAR(TRUNC(SYSDATE) + (LEVEL-1)/24/60, ''HH24:MI'') RV',
'  FROM DUAL',
'CONNECT BY LEVEL <= 24*60;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(830089899898687133)
,p_name=>'BRIEFING_TIME_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRIEFING_TIME_TO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Time To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE) + (LEVEL-1)/24/60, ''HH24:MI'') DV, TO_CHAR(TRUNC(SYSDATE) + (LEVEL-1)/24/60, ''HH24:MI'') RV',
'  FROM DUAL',
'CONNECT BY LEVEL <= 24*60;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811280119887723003)
,p_name=>'ENTRY_VISA_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_VISA_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Visa <br> Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(149209111570656937)
,p_name=>'FACULTY_HANDOVER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACULTY_HANDOVER_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Faculty<br>Handover Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806844433565016651)
,p_name=>'HEALTH_EXAMINATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEALTH_EXAMINATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Health Examination <br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ITEM_IS_NOT_NULL'
,p_readonly_condition=>'HEALTH_EXAMINATION_DATE'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180226978146618928)
,p_name=>'HEALTH_EXAMINATION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEALTH_EXAMINATION_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Health Examination<br>Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Pending;Pending,Passed;Passed,Failed;Failed'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Pending'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806844125926016648)
,p_name=>'IO_DATE_REPORTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IO_DATE_REPORTED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'IO Date Reported'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811280009479723002)
,p_name=>'PASSPORT_SUBMISSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PASSPORT_SUBMISSION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Passport Submission <br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(811280518202723007)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806844244908016649)
,p_name=>'STUDENT_MOBILE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_MOBILE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Student Mobile <br>No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(806843953473016646)
,p_internal_uid=>779787995745190917
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(811285912041720093)
,p_interactive_grid_id=>wwv_flow_imp.id(806843953473016646)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(811286124284720093)
,p_report_id=>wwv_flow_imp.id(811285912041720093)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(149253070520646713)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(149209111570656937)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(199994864108333849)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(180226978146618928)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811286621817720091)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(806844044904016647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811287527451720088)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(806844125926016648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811288438814720085)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(806844244908016649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811289350808720082)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(806844281698016650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811290213656720079)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(806844433565016651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811291137650720076)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(811280009479723002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811292058559720073)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(811280119887723003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811296353696710752)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(811280163409723004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811300878679706521)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(811280518202723007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(811335871350046010)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(811282435141723026)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(830216458369124617)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(830089796766687132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(830217274587124621)
,p_view_id=>wwv_flow_imp.id(811286124284720093)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(830089899898687133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(476881474910943654)
,p_plug_name=>'LEFT'
,p_static_id=>'left'
,p_parent_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(817053587021542037)
,p_name=>'List Of Classes'
,p_static_id=>'list-of-classes'
,p_parent_plug_id=>wwv_flow_imp.id(817053513555542036)
,p_template=>2323592004483952560
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'A.SUBJECT_CODE,',
'A.SUBJECT_NAME,',
'A.SESSION_NAME_ORIGINAL AS SESSION_NAME,',
'A.LECTURER_NAME,',
'A.RESOURCE_NAME,',
'A.ON_EVERY,',
'A.DAY_NO,',
'TRUNC(C.TIME_TABLE_DATE) TIME_TABLE_DATE,',
'A.TIME_FROM,',
'A.TIME_TO,',
'A.TIME_FROM_CHAR,',
'A.TIME_TO_CHAR,',
'A.STUDENT_KEY,',
'''<font color=red>''||CLASHED_WITH||''</font>'' as CLASHED_WITH',
'',
'FROM V_STUDENT_TIME_TABLE A',
'    JOIN TIME_TABLE_RELEASE_STUDENT B ON A.SEMESTER = B.SEMESTER',
'                                        AND A.FACULTY_KEY = B.FACULTY_KEY',
'    JOIN TIME_TABLE_DETAIL C ON A.TTW_KEY = C.TTW_KEY',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY ',
'AND A.SEMESTER = :P648_SEL_SEMESTER3',
'-- AND TRUNC(C.TIME_TABLE_DATE) BETWEEN TRUNC(TO_DATE(:P113_DATE_FROM,''DD/MM/YYYY''))',
'-- 				                AND TRUNC(TO_DATE(:P113_DATE_TO,''DD/MM/YYYY''))',
'AND NVL(TT_RELEASE_TO_STUDENT,'' '') = ''Y''',
'AND A.SC_SUB_KEY IS NOT NULL',
'AND A.SELECTED = ''Y''',
'-- AND A.SHOW_HIDE = ''Y''',
'-- ORDER BY DAY_NO , TIME_FROM_CHAR',
'ORDER BY TIME_TABLE_DATE, TIME_FROM_CHAR',
'',
'',
'',
'-- SELECT',
'-- SUBJECT_CODE||''-''||SUBJECT_NAME AS SUBJECT_NAME,',
'-- CLASS_CODE,',
'-- SESSION_NAME,',
'-- TIME_DATE,',
'-- TIME_DAY,',
'-- TIME_FROM,',
'-- TIME_TO,',
'-- LECTURER_NAME,',
'-- RESOURCE_CODE',
'',
'-- FROM V_STUDENT_COURSE_SELECTION_TIMETABLE3 A',
'-- WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'-- AND SEMESTER = :P648_SEL_SEMESTER3',
'-- AND SUBJECT_KEY IN ( SELECT SUBJECT_KEY ',
'--                         FROM STUDENT_COURSE_SUBJECT',
'--                         WHERE STUDENT_KEY = :P648_STUDENT_KEY )',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_SEL_SEMESTER3,P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641921354882065249)
,p_query_column_id=>14
,p_column_alias=>'CLASHED_WITH'
,p_column_display_sequence=>170
,p_column_heading=>'Clashed With'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641920831106065244)
,p_query_column_id=>7
,p_column_alias=>'DAY_NO'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92511834219109110)
,p_query_column_id=>4
,p_column_alias=>'LECTURER_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Lecturer Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641920760180065243)
,p_query_column_id=>6
,p_column_alias=>'ON_EVERY'
,p_column_display_sequence=>50
,p_column_heading=>'Day'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641920630222065242)
,p_query_column_id=>5
,p_column_alias=>'RESOURCE_NAME'
,p_column_display_sequence=>100
,p_column_heading=>'Resource Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92509832460109109)
,p_query_column_id=>3
,p_column_alias=>'SESSION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Session Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641921268406065248)
,p_query_column_id=>13
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641920557575065241)
,p_query_column_id=>1
,p_column_alias=>'SUBJECT_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Subject Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92509033894109109)
,p_query_column_id=>2
,p_column_alias=>'SUBJECT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Subject Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92511011892109110)
,p_query_column_id=>9
,p_column_alias=>'TIME_FROM'
,p_column_display_sequence=>60
,p_column_heading=>'Time From'
,p_column_format=>'HH24:MI'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641921086258065246)
,p_query_column_id=>11
,p_column_alias=>'TIME_FROM_CHAR'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641920963338065245)
,p_query_column_id=>8
,p_column_alias=>'TIME_TABLE_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Class Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92511430489109110)
,p_query_column_id=>10
,p_column_alias=>'TIME_TO'
,p_column_display_sequence=>70
,p_column_heading=>'Time To'
,p_column_format=>'HH24:MI'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(641921159467065247)
,p_query_column_id=>12
,p_column_alias=>'TIME_TO_CHAR'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99315615922088839)
,p_plug_name=>'List of Invoice'
,p_static_id=>'list-of-invoice'
,p_parent_plug_id=>wwv_flow_imp.id(254585869759192324)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SFM_KEY,',
'B.SFM_KEY RECEIPT_SFM_KEY,',
'B.CAMPUS_KEY,',
'A.TRANSACTION_DATE,',
'A.FEE_CODE,',
'A.TYPE_OF_FEES,',
'B.RECEIPT_NUMBER,',
'A.AMOUNT_LOCAL_CURRENCY,',
'NVL(B.TOTAL_PAID,0) TOTAL_PAID,',
'A.AMOUNT_LOCAL_CURRENCY - NVL(B.TOTAL_PAID,0) BALANCE_TO_PAY',
'FROM STUDENT_FEE_MASTER A,',
'    (SELECT I.SFM_KEY_PAID,',
'     J.SFM_KEY,',
'     J.CAMPUS_KEY,',
'     J.TRANSACTION_NUMBER RECEIPT_NUMBER,',
'     NVL(SUM(I.PAID_AMOUNT),0) TOTAL_PAID',
'     FROM STUDENT_FEE_COLLECTION I,',
'     STUDENT_FEE_MASTER J',
'     WHERE I.SFM_KEY = J.SFM_KEY',
'     GROUP BY I.SFM_KEY_PAID,J.TRANSACTION_NUMBER,',
'     J.SFM_KEY,J.CAMPUS_KEY) B',
'WHERE A.SFM_KEY = B.SFM_KEY_PAID(+)',
'AND A.TYPE_OF_FEES LIKE ''%Hostel%''',
'AND A.TRANSACTION_TYPE = ''Invoice''',
'--AND TYPE_OF_FEES IN (SELECT TYPE_OF_FEES FROM TYPE_OF_FEES_LOOKUP',
'--                     WHERE HOSTEL_CODE IS NOT NULL)',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(99315719791088840)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>72259762063263111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99316207674088845)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Invoice Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99316441515088847)
,p_db_column_name=>'BALANCE_TO_PAY'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Balance To Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195562372124996233)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>30
,p_column_identifier=>'J'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99316010170088843)
,p_db_column_name=>'FEE_CODE'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Fee Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195562141287996230)
,p_db_column_name=>'RECEIPT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Receipt Number'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_RECEIPT.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.&P1=&GLO_INSTITUTE_KEY.&P2=#CAMPUS_KEY#&P3=#RECEIPT_SFM_KEY#''));'
,p_column_linktext=>'#RECEIPT_NUMBER#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195562338897996232)
,p_db_column_name=>'RECEIPT_SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Receipt Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99315832076088841)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99316289906088846)
,p_db_column_name=>'TOTAL_PAID'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Total Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99315867183088842)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99316098939088844)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(193772380922138153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1667165'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:FEE_CODE:TYPE_OF_FEES:RECEIPT_NUMBER:AMOUNT_LOCAL_CURRENCY:TOTAL_PAID:BALANCE_TO_PAY:RECEIPT_SFM_KEY:CAMPUS_KEY'
,p_sort_column_1=>'TRANSACTION_DATE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'BALANCE_TO_PAY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(688925837333265744)
,p_plug_name=>'List Of Invoices Eligible For Instalment'
,p_static_id=>'list-of-invoices-eligible-for-installment'
,p_parent_plug_id=>wwv_flow_imp.id(688925704879265743)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'TRANSACTION_DATE,',
'TRANSACTION_TYPE,',
'TRANSACTION_NUMBER,',
'FEE_CODE,',
'TYPE_OF_FEES,',
'AMOUNT_LOCAL_CURRENCY,',
'TOTAL_NET_TO_PAY,',
'TOTAL_COLLECTED,',
'INVOICE_BALANCE_DUE,',
'INVOICE_BALANCE_DUE  as inv_amount,',
'STUDY_INTAKE,',
'CAMPUS_CODE,',
'SUBJECT_CODE,',
'CREATED_BY,',
'CREATED_DATE,',
'ENR_NUMBER,',
'sfm_key,',
'campus_key,',
'( select install_key ',
'    from student_installment ',
'    where sfm_key = AA.SFM_KEY ) as install_key,',
'',
'( case when ( select count(*) from student_installment ',
'                where sfm_key = AA.SFM_KEY )> 0 THEN ',
'    ''Instalment Assigned''',
'END ) AS INA,',
'',
'CASE ',
'    WHEN (',
'        SELECT COUNT(*)',
'        FROM STUDENT_INSTALLMENT SI',
'        WHERE SI.SFM_KEY = AA.SFM_KEY',
'    ) = 0',
'    THEN ''No Instalment, Assign Now''',
'END AS AN,',
'',
'',
'CASE ',
'    WHEN (',
'        SELECT COUNT(*)',
'        FROM STUDENT_INSTALLMENT SI',
'        WHERE SI.SFM_KEY = AA.SFM_KEY',
'    ) = 0',
'    THEN',
'        APEX_PAGE.GET_URL(',
'            p_page        => 1027,',
'            p_clear_cache => ''1027'',',
'            p_items       => ''P1027_INSTITUTE_KEY,P1027_OUTSTANDING_INVOICE_AMOUNT,P1027_CAMPUS_KEY,P1027_STUDENT_KEY,P1027_SFM_KEY'',',
'            p_values      => :P648_INSTITUTE_KEY || '','' ||',
'                             AA.INVOICE_BALANCE_DUE || '','' ||',
'                             AA.CAMPUS_KEY || '','' ||',
'                             :P648_STUDENT_KEY || '','' ||',
'                             AA.SFM_KEY',
'        )',
'END AS AN_URL',
'',
'FROM V_STUDENT_STATEMENT0 aa',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND NVL(ALLOWED_INSTALLMENT,'' '') = ''Y''',
'AND TRANSACTION_TYPE = ''Invoice''',
'and nvl(INVOICE_BALANCE_DUE,0) > 0 '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List Of Invoices Eligible For Installment'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(688925894212265745)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1027:&SESSION.::&DEBUG.:1027:P1027_SFM_KEY:#SFM_KEY#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>687120504428066525
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926525566265751)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Amount Local Currency'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196878481206221631)
,p_db_column_name=>'AN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Assign<br>Installment'
,p_column_link=>'#AN_URL#'
,p_column_linktext=>'#AN#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50150674242609825)
,p_db_column_name=>'AN_URL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'An Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927007474265756)
,p_db_column_name=>'CAMPUS_CODE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Campus Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927644279265762)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927268485265758)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927306526265759)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927402487265760)
,p_db_column_name=>'ENR_NUMBER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Enr Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926382060265749)
,p_db_column_name=>'FEE_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fee Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927770091265763)
,p_db_column_name=>'INA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Installment<br>Assigned ?'
,p_column_link=>'f?p=&APP_ID.:1027:&SESSION.::&DEBUG.:1027:P1027_INSTALL_KEY:#INSTALL_KEY#'
,p_column_linktext=>'#INA#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196878615809221633)
,p_db_column_name=>'INSTALL_KEY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Install Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926844028265754)
,p_db_column_name=>'INVOICE_BALANCE_DUE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Invoice Balance Due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196878545634221632)
,p_db_column_name=>'INV_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Inv Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927573776265761)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Assign Installment'
,p_column_link=>'f?p=&APP_ID.:1027:&SESSION.::&DEBUG.:1027:P1027_SFM_KEY,P1027_CAMPUS_KEY,P1027_INSTITUTE_KEY,P1027_STUDENT_KEY,P1027_OUTSTANDING_INVOICE_AMOUNT:#SFM_KEY#,#CAMPUS_KEY#,&GLO_INSTITUTE_KEY.,&P648_STUDENT_KEY.,#INV_AMOUNT#'
,p_column_linktext=>'Assign Now'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926965295265755)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Study Intake'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688927098255265757)
,p_db_column_name=>'SUBJECT_CODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Subject Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926713757265753)
,p_db_column_name=>'TOTAL_COLLECTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Total Collected'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926610642265752)
,p_db_column_name=>'TOTAL_NET_TO_PAY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Net To Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999,999.99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926088602265746)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926217381265748)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926189496265747)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(688926394068265750)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(705556174601461698)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7037508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AN:INA:TRANSACTION_DATE:TRANSACTION_TYPE:TRANSACTION_NUMBER:FEE_CODE:TYPE_OF_FEES:AMOUNT_LOCAL_CURRENCY:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE:STUDY_INTAKE:SUBJECT_CODE:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253584877421377505)
,p_plug_name=>'Main Info'
,p_static_id=>'main-info'
,p_parent_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHR''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(254584248670192307)
,p_plug_name=>'Major Illnesses'
,p_static_id=>'major-illnesses'
,p_parent_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(627332746222623127)
,p_plug_name=>'MC and Letters'
,p_static_id=>'mc-and-letters'
,p_parent_plug_id=>wwv_flow_imp.id(333343149289072302)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_DOCUMENT_KEY,',
'    A.DOCUMENT_IMAGE,',
'    A.DOCUMENT_DESCRIPTION,',
'    A.DOCUMENT_TYPE,',
'    A.DOCUMENET_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.IMAGE_TYPE,',
'    A.IMAGE_FILE_NAME,',
'    A.INSTITUTE_KEY,',
'    A.BFILE_IDENTIFIER_ID,',
'    :G_FILE_PATH||A.BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND NVL(A.DOCUMENT_TYPE,''X'') IN (''Medical Certificate / Letter'',''Letter From Parents'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'MC and Letters'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'This tab will display only the attachments uploaded by students related to their absences in the student portal.'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(627332827599623128)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>625527437815423908
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333914089623139)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333457834623134)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333202810623132)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333172891623131)
,p_db_column_name=>'DOCUMENT_IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Image'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333349626623133)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333766603623137)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Image File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333641332623136)
,p_db_column_name=>'IMAGE_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Image Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333823275623138)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333578475623135)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627333040214623130)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627332906602623129)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627334060663623140)
,p_db_column_name=>'URL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(627524029156387446)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6257187'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:STUDENT_DOCUMENT_KEY:DOCUMENT_IMAGE:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:DOCUMENET_DATE:LAST_UPDATED_BY:IMAGE_TYPE:IMAGE_FILE_NAME:INSTITUTE_KEY:BFILE_IDENTIFIER_ID:URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253589280883377549)
,p_plug_name=>'Medical Info'
,p_static_id=>'medical-info'
,p_parent_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253584770064377504)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(755722923198416134)
,p_plug_name=>'Notes'
,p_static_id=>'notes'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_DIARY_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.DIARY_TYPE,',
'    A.DIARY_TOPIC,',
'    A.DIARY_NOTE,',
'    A.CREATED_BY,',
'    A.CREATED_BY_USER_KEY,',
'    A.CREATED_DATE',
'FROM STUDENT_DIARY A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.DIARY_TYPE = ''FINANCE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Notes'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(755723120258416136)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>728667162530590407
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92666449529109178)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92666764867109179)
,p_db_column_name=>'CREATED_BY_USER_KEY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By User Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92667167662109179)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92666000002109178)
,p_db_column_name=>'DIARY_NOTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Diary Note'
,p_column_link=>'f?p=&APP_ID.:686:&SESSION.::&DEBUG.:686:P686_STUDENT_DIARY_KEY,P686_STUDENT_KEY,P686_CTRL_PROC:#STUDENT_DIARY_KEY#,#STUDENT_KEY#,FO_DIARY'
,p_column_linktext=>'#DIARY_NOTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92665567983109178)
,p_db_column_name=>'DIARY_TOPIC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diary Topic'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92665251593109178)
,p_db_column_name=>'DIARY_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Diary Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92664411734109178)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92664048030109177)
,p_db_column_name=>'STUDENT_DIARY_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Diary Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92664782020109178)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(755814282564802855)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656116'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DIARY_TOPIC:DIARY_NOTE'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(333343299238072304)
,p_plug_name=>'Notes'
,p_static_id=>'notes-2'
,p_parent_plug_id=>wwv_flow_imp.id(333343149289072302)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_DIARY_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.DIARY_TYPE,',
'    A.DIARY_TOPIC,',
'    A.DIARY_NOTE,',
'    A.CREATED_BY,',
'    A.CREATED_BY_USER_KEY,',
'    A.CREATED_DATE',
'FROM STUDENT_DIARY A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.DIARY_TYPE = ''REGISTRAR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Notes'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(333343694172072308)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>306287736444246579
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92533060631109119)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92533517077109119)
,p_db_column_name=>'CREATED_BY_USER_KEY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By User Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92533923279109120)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92532683224109119)
,p_db_column_name=>'DIARY_NOTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Diary Note'
,p_column_link=>'f?p=&APP_ID.:686:&SESSION.::&DEBUG.:686:P686_STUDENT_DIARY_KEY,P686_STUDENT_KEY,P686_CTRL_PROC:#STUDENT_DIARY_KEY#,#STUDENT_KEY#,RO_DIARY'
,p_column_linktext=>'#DIARY_NOTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92532274022109119)
,p_db_column_name=>'DIARY_TOPIC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diary Topic'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92531914236109119)
,p_db_column_name=>'DIARY_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Diary Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92531101947109119)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92530714682109118)
,p_db_column_name=>'STUDENT_DIARY_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Diary Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92531466343109119)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(333461033614323615)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DIARY_TOPIC:DIARY_NOTE'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102555162326721851)
,p_plug_name=>'Notes'
,p_static_id=>'notes-3'
,p_parent_plug_id=>wwv_flow_imp.id(102555087174721850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_DIARY_KEY,',
'DIARY_NOTE,',
'LAST_UPDATED_BY,',
'LAST_UPDATED_DATE',
'FROM STUDENT_DIARY',
'WHERE DIARY_TYPE = ''CONTACT LOG''',
'AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(102555615566721855)
,p_name=>'DIARY_NOTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIARY_NOTE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Diary Note'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(102555737921721856)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(102555767579721857)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(102555530548721854)
,p_name=>'STUDENT_DIARY_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_DIARY_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(102555453207721853)
,p_internal_uid=>75499495479896124
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No Records Found'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(208650782907682967)
,p_interactive_grid_id=>wwv_flow_imp.id(102555453207721853)
,p_static_id=>'1815949'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(208650971878682967)
,p_report_id=>wwv_flow_imp.id(208650782907682967)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(208651550878682973)
,p_view_id=>wwv_flow_imp.id(208650971878682967)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(102555530548721854)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(208652400130682975)
,p_view_id=>wwv_flow_imp.id(208650971878682967)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(102555615566721855)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(208653302125682976)
,p_view_id=>wwv_flow_imp.id(208650971878682967)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(102555737921721856)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(208654242376682978)
,p_view_id=>wwv_flow_imp.id(208650971878682967)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(102555767579721857)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629029693002875522)
,p_plug_name=>'Notes'
,p_static_id=>'notes-4'
,p_parent_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMMI_NOTES_KEY,',
'CREATED_DATE,',
'CREATED_BY,',
'IMMI_NOTES',
'FROM IMMIGRATION_NOTES',
'WHERE IMMI_VISA_KEY IS NULL',
'AND IMMI_VA_KEY IS NULL',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
,p_plug_comment=>'VAL/Visa Activities'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(629029779187875523)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>601973821460049794
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92567690103109134)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92567311927109134)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92568512108109134)
,p_db_column_name=>'IMMI_NOTES'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92568146170109134)
,p_db_column_name=>'IMMI_NOTES_KEY'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:760:&SESSION.::&DEBUG.:760:P760_IMMI_NOTES_KEY,P760_FROM_PAGE:#IMMI_NOTES_KEY#,648'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(629128347494436173)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_NOTES_KEY:IMMI_NOTES:CREATED_DATE:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851386565503864146)
,p_plug_name=>'Notes Attachment'
,p_static_id=>'notes-attachment'
,p_parent_plug_id=>wwv_flow_imp.id(755722923198416134)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STUDENT_KEY,',
'       DOCUMENT_DESCRIPTION,',
'       DOCUMENT_TYPE,',
'       DOCUMENET_DATE,',
'       SD_KEY,',
'       DOCUMENT_TYPE_ID,',
'       INSTITUTE_KEY,',
'       BFILE_IDENTIFIER_ID,',
'       CREATED_BY,',
'       CREATED_DATE,',
'       FK_COLUMN,',
'       FK_KEY,',
'       LOCAL_FOREIGN,',
'       IMAGE_FILE_NAME,',
'       (SELECT ORI_FILENAME FROM BFILE_DIRECTORY',
'        WHERE BFILE_IDENTIFIER_ID = A.BFILE_IDENTIFIER_ID) ORI_FILENAME,',
'       ''Edit'',',
'       Student_document_key',
'  from STUDENT_DOCUMENT_IMAGING A',
'  where student_key = :P648_STUDENT_KEY',
'  and institute_key = :P648_INSTITUTE_KEY',
'  and document_type = ''Notes Attachment'''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Notes Attachment'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(851386677055864147)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:940:&SESSION.::&DEBUG.:940:P940_STUDENT_DOCUMENT_KEY,P940_STUDENT_KEY,P940_INSTITUTE_KEY,P940_BFILE_IDENTIFIER_ID:#STUDENT_DOCUMENT_KEY#,#STUDENT_KEY#,#INSTITUTE_KEY#,#BFILE_IDENTIFIER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>824330719328038418
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92674348047109182)
,p_db_column_name=>'''EDIT'''
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'vv'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92671483410109180)
,p_db_column_name=>'BFILE_IDENTIFIER_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bfile Identifier Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92671877443109181)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92672331738109181)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92669930848109180)
,p_db_column_name=>'DOCUMENET_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Documenet Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92669139505109180)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92669471405109180)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92670746932109180)
,p_db_column_name=>'DOCUMENT_TYPE_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92672737463109181)
,p_db_column_name=>'FK_COLUMN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fk Column'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92673077186109181)
,p_db_column_name=>'FK_KEY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fk Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92673936633109181)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Image Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92671151136109180)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92673533384109181)
,p_db_column_name=>'LOCAL_FOREIGN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Local Foreign'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20400773101407501)
,p_db_column_name=>'ORI_FILENAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Original Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92670357125109180)
,p_db_column_name=>'SD_KEY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sd Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92674660620109182)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Student Document Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92668703987109179)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(854166429199344880)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656191'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME:ORI_FILENAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(428630680473495557)
,p_plug_name=>'Notification'
,p_static_id=>'notification'
,p_parent_plug_id=>wwv_flow_imp.id(850533199722421039)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,body,sent_time,created_by from notifications',
'where rcpt_student_key=:P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Notification'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(428630735316495558)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>426825345532296338
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428630912688495560)
,p_db_column_name=>'BODY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Body'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428631157079495562)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428631084169495561)
,p_db_column_name=>'SENT_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sent Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(428630813166495559)
,p_db_column_name=>'TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(435610666670236898)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4338053'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TITLE:BODY:SENT_TIME:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(711058586812117806)
,p_plug_name=>'O-Level Or Equivalent'
,p_static_id=>'o-level-or-equivalent'
,p_parent_plug_id=>wwv_flow_imp.id(711058361929117804)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629028716210875512)
,p_plug_name=>'Other Visa'
,p_static_id=>'other-visa'
,p_parent_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMMI_OTHER_VISA_KEY,',
'(SELECT VISA_TYPE FROM VISA_TYPE',
' WHERE VISA_TYPE_ID = IMMI_OTHER_VISA_TYPE) IMMI_OTHER_VISA_TYPE,',
'IMMI_OTHER_VISA_REF_NO,',
'IMMI_OTHER_VISA_ISSUE_DATE,',
'IMMI_OTHER_VISA_EXPIRY_DATE,',
'IMMI_OTHER_VISA_EXEMPTED,',
'(CASE WHEN IMMI_VA_KEY IS NOT NULL THEN (SELECT VAL_REF_NO FROM IMMIGRATION_VAL_APPLICATION WHERE IMMI_VA_KEY = A.IMMI_VA_KEY) END) VAL_REF_NO',
'FROM IMMIGRATION_OTHER_VISA A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(629028939622875514)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>601972981895049785
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92565760048109133)
,p_db_column_name=>'IMMI_OTHER_VISA_EXEMPTED'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>'Student Visa<br>Exempted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92565381618109133)
,p_db_column_name=>'IMMI_OTHER_VISA_EXPIRY_DATE'
,p_display_order=>50
,p_column_identifier=>'L'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92565012674109133)
,p_db_column_name=>'IMMI_OTHER_VISA_ISSUE_DATE'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'Issue Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92563827386109133)
,p_db_column_name=>'IMMI_OTHER_VISA_KEY'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:745:&SESSION.::&DEBUG.:745:P745_IMMI_OTHER_VISA_KEY:#IMMI_OTHER_VISA_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92564565685109133)
,p_db_column_name=>'IMMI_OTHER_VISA_REF_NO'
,p_display_order=>30
,p_column_identifier=>'J'
,p_column_label=>'Reference No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92564197675109133)
,p_db_column_name=>'IMMI_OTHER_VISA_TYPE'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Visa Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820275666305102)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>70
,p_column_identifier=>'N'
,p_column_label=>'VAL Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(629049946911909686)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_OTHER_VISA_KEY:IMMI_OTHER_VISA_TYPE:IMMI_OTHER_VISA_REF_NO:IMMI_OTHER_VISA_ISSUE_DATE:IMMI_OTHER_VISA_EXPIRY_DATE:VAL_REF_NO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(805935232594864533)
,p_plug_name=>'Overall Job and Task'
,p_static_id=>'overall-job-and-task'
,p_parent_plug_id=>wwv_flow_imp.id(850533199722421039)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'(SELECT STUDENT_NAME FROM STUDENT_PROFILE WHERE STUDENT_KEY = A.STUDENT_KEY) STUDENT_NAME,',
'STUDENT_KEY,',
'REFERENCE_NUMBER,',
'(CASE WHEN A.JOB = ''Change Job Status'' THEN ',
'        ''To ''||A.STATUS',
'        ELSE',
'        A.STATUS',
'    END) STATUS,',
'JOB,',
'NVL(TASK_COMPLETED,''N'') TASK_COMPLETED,',
'TASK_COMPLETED_BY,',
'TASK_COMPLETED_DATE,',
'DEPARTMENT,',
'CREATED_BY,',
'CREATED_DATE,',
'LAST_UPDATED_BY,',
'LAST_UPDATED_DATE,',
'(SELECT STUDY_INTAKE FROM STUDENT_COURSE_SEMESTER WHERE SCS_KEY = A.LINK_KEY) SEMESTER,',
'(SELECT CUSTOMER_NAME FROM CUSTOMER WHERE CUSTOMER_KEY = A.COUNSELOR_KEY) COUNSELOR,',
'(SELECT CUSTOMER_NAME FROM CUSTOMER WHERE CUSTOMER_KEY = A.TO_USER_KEY) REASSIGN_TO',
'FROM STAFF_TASK_LIST A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'',
'UNION ALL',
'',
'SELECT',
'(SELECT STUDENT_NAME FROM STUDENT_PROFILE WHERE STUDENT_KEY = A.STUDENT_KEY) STUDENT_NAME,',
'A.STUDENT_KEY,',
'A.APPLICATION_NUMBER,',
'(CASE WHEN A.APPLICANT_ACCEPT_DATE IS NULL THEN ',
'        ''Preparing''',
'     ELSE',
'        ''Completed''',
'END) STATUS,',
'''Student Declaration'',',
'NULL,',
'NULL,',
'NULL,',
'NULL,',
'NULL,',
'NULL,',
'NULL,',
'NULL,',
'NULL SEMESTER,',
'NULL COUNSELOR,',
'NULL REASSIGN_TO',
'FROM COURSE_APPLIED A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.OFFER_LETTER_KEY IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Overall Job and Task'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(805935319861864534)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>778879362134038805
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263623751402696342)
,p_db_column_name=>'COUNSELOR'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Counselor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92649108198109170)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92649534720109171)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92648660881109170)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92647507371109169)
,p_db_column_name=>'JOB'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92649918385109171)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92650323589109171)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263623794573696343)
,p_db_column_name=>'REASSIGN_TO'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Reassign To'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92646749202109169)
,p_db_column_name=>'REFERENCE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Reference Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(263623661582696341)
,p_db_column_name=>'SEMESTER'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92647082249109169)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92646311564109169)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92645882644109168)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92650680167109171)
,p_db_column_name=>'TASK_COMPLETED'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Task Completed'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92647956745109169)
,p_db_column_name=>'TASK_COMPLETED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Task Completed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92648284112109170)
,p_db_column_name=>'TASK_COMPLETED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Task Completed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(806801474817883654)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655955'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REFERENCE_NUMBER:JOB:STATUS:SEMESTER:COUNSELOR:REASSIGN_TO:TASK_COMPLETED_DATE:CREATED_BY:CREATED_DATE:LAST_UPDATED_BY:LAST_UPDATED_DATE'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'REFERENCE_NUMBER'
,p_break_enabled_on=>'REFERENCE_NUMBER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(850533199722421039)
,p_plug_name=>'OVERALL JOB AND TASK'
,p_static_id=>'overall-job-br-and-task'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AALG''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(511113583868456317)
,p_plug_name=>'Passport'
,p_static_id=>'passport'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.PASSPORT_KEY,',
'    A.STUDENT_KEY,',
'    A.PASSPORT_NO,',
'    A.PASSPORT_ISSUE_DATE,',
'    A.PASSPORT_EXPIRY_DATE,',
'    A.PLACE_OF_ISSUE,',
'    A.PLACE_OF_BIRTH,',
'    A.IS_ACTIVE,',
'    A.PASSPORT_COLLECT_HANDLE_BY,',
'    A.PASSPORT_COLLECT_DATE,',
'    A.SENT_REMINDER,',
'    (SELECT DISTINCT B.CUSTOMER_NAME||'' - ''||(SELECT DEPARTMENT_NAME FROM DEPARTMENT_SETUP WHERE DEPARTMENT_KEY = B.DEPARTMENT_KEY)',
'         FROM CUSTOMER B WHERE CUSTOMER_KEY = A.PASSPORT_COLLECT_HANDLE_BY)PASSPORT_COLLECTION_HANDLED_BY',
'FROM STUDENT_PASSPORT A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY A.IS_ACTIVE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'NEVER'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(511113764581456319)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:763:&SESSION.::&DEBUG.:763:P763_PASSPORT_KEY:#PASSPORT_KEY#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_internal_uid=>484057806853630590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92538459014109122)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149133980678858131)
,p_db_column_name=>'PASSPORT_COLLECTION_HANDLED_BY'
,p_display_order=>140
,p_column_identifier=>'Z'
,p_column_label=>'Passport Collection Handled By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149133705018858129)
,p_db_column_name=>'PASSPORT_COLLECT_DATE'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Passport Collect Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149133664262858128)
,p_db_column_name=>'PASSPORT_COLLECT_HANDLE_BY'
,p_display_order=>110
,p_column_identifier=>'W'
,p_column_label=>'Passport Collect Handle By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244415888826020525)
,p_db_column_name=>'PASSPORT_EXPIRY_DATE'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Passport Expiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244415779918020524)
,p_db_column_name=>'PASSPORT_ISSUE_DATE'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Passport Issue Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244415582928020522)
,p_db_column_name=>'PASSPORT_KEY'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Passport Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244415659373020523)
,p_db_column_name=>'PASSPORT_NO'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Passport No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244416089474020527)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(244415897183020526)
,p_db_column_name=>'PLACE_OF_ISSUE'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Place Of Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149133841439858130)
,p_db_column_name=>'SENT_REMINDER'
,p_display_order=>130
,p_column_identifier=>'Y'
,p_column_label=>'Sent Reminder'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92535719531109121)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(557556682861944766)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654829'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PASSPORT_NO:PASSPORT_ISSUE_DATE:PASSPORT_EXPIRY_DATE:PLACE_OF_ISSUE:PLACE_OF_BIRTH:IS_ACTIVE:SENT_REMINDER:PASSPORT_COLLECT_DATE:PASSPORT_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394647871198935956)
,p_plug_name=>'Passport'
,p_static_id=>'passport-2'
,p_parent_plug_id=>wwv_flow_imp.id(720296349638403727)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.PASSPORT_KEY,',
'    A.STUDENT_KEY,',
'    A.PASSPORT_NO,',
'    A.PASSPORT_ISSUE_DATE,',
'    A.PASSPORT_EXPIRY_DATE,',
'    A.PLACE_OF_ISSUE,',
'    A.PLACE_OF_BIRTH,',
'    A.IS_ACTIVE',
'FROM STUDENT_PASSPORT A',
'WHERE A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND A.STUDENT_KEY = :P648_STUDENT_KEY',
'--ORDER BY A.IS_ACTIVE DESC',
'ORDER BY A.PASSPORT_EXPIRY_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Passport'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(394647963044935957)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>392842573260736737
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648783686935965)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648472618935962)
,p_db_column_name=>'PASSPORT_EXPIRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Passport Expiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648353675935961)
,p_db_column_name=>'PASSPORT_ISSUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Passport Issue Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648056695935958)
,p_db_column_name=>'PASSPORT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Passport Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648258087935960)
,p_db_column_name=>'PASSPORT_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Passport No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648604193935964)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648559726935963)
,p_db_column_name=>'PLACE_OF_ISSUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Place Of Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394648174359935959)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(458427384229328653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4566220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PASSPORT_KEY:STUDENT_KEY:PASSPORT_NO:PASSPORT_ISSUE_DATE:PASSPORT_EXPIRY_DATE:PLACE_OF_ISSUE:PLACE_OF_BIRTH:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720296349638403727)
,p_plug_name=>'Passport/Student Pass Information'
,p_static_id=>'passport-student-pass-information'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253588001163377536)
,p_plug_name=>'Permanent Address'
,p_static_id=>'permanent-address'
,p_parent_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253587559346377532)
,p_plug_name=>'PERSONAL INFORMATION'
,p_static_id=>'personal-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587484473377531)
,p_icon_css_classes=>'fa-clipboard-user'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHJ''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253587735035377533)
,p_plug_name=>'Personal Info'
,p_static_id=>'personal-info'
,p_parent_plug_id=>wwv_flow_imp.id(253587559346377532)
,p_icon_css_classes=>'fa-clipboard-user'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(726219489333651902)
,p_plug_name=>'Phone Number'
,p_static_id=>'phone-number'
,p_parent_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PHONE_NUMBER_ID,',
'INSTITUTE_KEY,',
'LINK_KEY,',
'PHONE_NUMBER,',
'PHONE_TYPE,',
'IS_PREFERRED,',
'FOR_USER_TYPE',
'FROM ALL_USER_PHONE_NUMBER',
'WHERE LINK_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Phone Number'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'If the student has more than 1 phone number record, please enter the record and suggested to have at least 1 preferred phone number for easier communication.<br>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221814130651925)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221929182651926)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722167075058522746)
,p_name=>'FOR_USER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOR_USER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'STUDENT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221345466651920)
,p_name=>'INSTITUTE_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTE_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'GLO_INSTITUTE_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221693302651924)
,p_name=>'IS_PREFERRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PREFERRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Is Preferred'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(722166972004522745)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P648_STUDENT_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221484508651922)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221159514651919)
,p_name=>'PHONE_NUMBER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(726221633220651923)
,p_name=>'PHONE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Phone Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Home;Home,Fax;Fax,Work;Work,Hand;Hand,Toll Free;Toll Free'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(726221063952651918)
,p_internal_uid=>699165106224826189
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(726249782514944319)
,p_interactive_grid_id=>wwv_flow_imp.id(726221063952651918)
,p_static_id=>'5695097'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(726249977861944319)
,p_report_id=>wwv_flow_imp.id(726249782514944319)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726250469248944321)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(726221159514651919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726251360523944324)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(726221345466651920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726253248191944329)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(726221484508651922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726254083521944332)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(726221633220651923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726255038964944335)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(726221693302651924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(726255915850944338)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(726221814130651925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728365009377713660)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(722166972004522745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(728365901337713664)
,p_view_id=>wwv_flow_imp.id(726249977861944319)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(722167075058522746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(720297857461403742)
,p_name=>'Photo'
,p_static_id=>'photo'
,p_parent_plug_id=>wwv_flow_imp.id(720493106444943325)
,p_template=>2675634334296186762
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerHidden js-removeLandmark'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.student_key,',
'a.student_photo_key,',
'(case when bfile_identifier_id  is not null then',
'''<img src="''||bfile_url(',
'        p_app_id => :APP_ID,',
'        p_app_session => :APP_SESSION,',
'        p_bfid => bfile_identifier_id)||''" height=125 width=90 style="border: 2px solid #CCC;-moz-border-radius: 2px;',
'-webkit-border-radius: 4px;" />''',
'-- ||''<br>Name: <b>''||b.student_name||''</b><br>IC/Passport:<b> ''||b.id_number',
'else',
'''<img src="#WORKSPACE_IMAGES#NoPhotoAvailable.jpg" width=60px height=60px style="border: 2px solid #CCC;-moz-border-radius: 2px;',
'-webkit-border-radius: 4px;" />''',
'-- ||''<br>Name: <b>''||student_name||''</b><br>IC/Passport:<b> ''||id_number',
'end) as photo',
'',
'FROM STUDENT_PHOTO_MASTER a , student_profile b',
'WHERE a.STUDENT_KEY = :P648_STUDENT_KEY',
'and (a.student_key = b.student_key ) '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92641076099109166)
,p_query_column_id=>3
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>30
,p_column_heading=>'Photo'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92640303936109165)
,p_query_column_id=>1
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92640709283109166)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_PHOTO_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(253585014793377506)
,p_name=>'Photo'
,p_static_id=>'photo-2'
,p_parent_plug_id=>wwv_flow_imp.id(476881474910943654)
,p_template=>2675634334296186762
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerHidden js-removeLandmark'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.student_key,',
'a.student_photo_key,',
'(case when bfile_identifier_id  is not null then',
'''<img src="''||bfile_url(',
'        p_app_id => :APP_ID,',
'        p_app_session => :APP_SESSION,',
'        p_bfid => bfile_identifier_id)||''" height=125 width=90 style="border: 2px solid #CCC;-moz-border-radius: 2px;',
'-webkit-border-radius: 4px;" />''||''<br>Name: <b>''||b.student_name||''</b><br>IC/Passport:<b> ''||b.id_number',
'else',
'''<img src="#WORKSPACE_IMAGES#NoPhotoAvailable.jpg" width=60px height=60px style="border: 2px solid #CCC;-moz-border-radius: 2px;',
'-webkit-border-radius: 4px;" />''||''<br>Name: <b>''||student_name||''</b><br>IC/Passport:<b> ''||id_number',
'end) as photo',
'',
'FROM STUDENT_PHOTO_MASTER a , student_profile b',
'WHERE a.STUDENT_KEY = :P648_STUDENT_KEY',
'and (a.student_key = b.student_key ) '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92373560560109046)
,p_query_column_id=>3
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>30
,p_column_heading=>'Photo'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92372773935109046)
,p_query_column_id=>1
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92373248595109046)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_PHOTO_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(737856822166396547)
,p_name=>'Pre-Payment Account / Unallocated Amount'
,p_static_id=>'pre-payment-account-br-unallocated-amount'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_template=>4502917002193490937
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    RECEIPT_DATE, ',
'    RECEIPT_NUMBER,',
'    MODE_OF_PAYMENT, ',
'    COLLECTED_AMOUNT, ',
'    ALLOCATED_AMOUNT, ',
'    UNALLOCATED_AMOUNT, ',
'    STUDENT_KEY,',
'    ( CASE WHEN NVL(UNALLOCATED_AMOUNT,0) <> 0 THEN',
'        ''Allocate Now''',
'    END ) AS ALLOCATE_CREDIT_BALANCE,',
'    SFM_KEY',
'FROM V_STUDENT_FEE_PREPAYMENT',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB3 Pre-Payment Account / Unallocated Amount'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays the student''s current <strong>Pre-Payment Account</strong> (also known as the <strong>Unallocated Amount</strong> in some institutions). The available balance can be used to offset future invoices or outstanding fees.',
'        <br><br>',
'        The system automatically updates this balance when:',
unistr('        <br>\2022 A payment collected is greater than the invoice amount (excess payment).'),
unistr('        <br>\2022 A Credit Note (CN) is issued for a previously paid invoice, returning the amount to the Pre-Payment Account.'),
'        <br><br>',
'        Click <strong>Allocate Now</strong> to apply the available balance to an outstanding invoice.',
'    </p>',
'',
'</div>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Pre-Payment records found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92657365044109175)
,p_query_column_id=>5
,p_column_alias=>'ALLOCATED_AMOUNT'
,p_column_display_sequence=>120
,p_column_heading=>'Allocated Amount'
,p_column_format=>'999,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180816555243145150)
,p_query_column_id=>8
,p_column_alias=>'ALLOCATE_CREDIT_BALANCE'
,p_column_display_sequence=>140
,p_column_heading=>'Allocate Credit Balance'
,p_column_link=>'f?p=&APP_ID.:989:&SESSION.::&DEBUG.:989:P989_SFMK,P989_STUDENT_KEY:#SFM_KEY#,#STUDENT_KEY#'
,p_column_linktext=>'#ALLOCATE_CREDIT_BALANCE#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92656989573109174)
,p_query_column_id=>4
,p_column_alias=>'COLLECTED_AMOUNT'
,p_column_display_sequence=>110
,p_column_heading=>'Collected Amount'
,p_column_format=>'999,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92656622305109174)
,p_query_column_id=>3
,p_column_alias=>'MODE_OF_PAYMENT'
,p_column_display_sequence=>100
,p_column_heading=>'Mode Of Payment'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92655837279109174)
,p_query_column_id=>1
,p_column_alias=>'RECEIPT_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Receipt Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92656195074109174)
,p_query_column_id=>2
,p_column_alias=>'RECEIPT_NUMBER'
,p_column_display_sequence=>90
,p_column_heading=>'Receipt Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180816598054145151)
,p_query_column_id=>9
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92658245672109175)
,p_query_column_id=>7
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92657847182109175)
,p_query_column_id=>6
,p_column_alias=>'UNALLOCATED_AMOUNT'
,p_column_display_sequence=>130
,p_column_heading=>'Unallocated Amount<BR>Pre-Payment Amount<br>Excess Payment Amount'
,p_column_format=>'999,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(712108547693805550)
,p_name=>'Pre-Qualification Checked'
,p_static_id=>'pre-qualification-checked'
,p_parent_plug_id=>wwv_flow_imp.id(712108183317805547)
,p_template=>2102002977963900996
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (SELECT SUBJECT_CODE||'' - ''||SUBJECT_NAME FROM SUBJECT_MASTER',
'  WHERE SUBJECT_KEY = A.SUBJECT_REQUIRED) SUBJECT_REQUIRED,',
'(SELECT SUBJECT_CODE||'' - ''||SUBJECT_NAME FROM SUBJECT_MASTER',
'  WHERE SUBJECT_KEY = A.SUBJECT_REQUIRED2) SUBJECT_REQUIRED2',
'from UCSI_ENGLISH_FILTER A',
'where institute_key = :glo_institute_key',
'and ENGLISH_SUBJECT_TYPE = :P648_ENGLISH_PROFICIENCY',
'and result = :P648_ENGLISH_SCORE'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<b>Pre-Qualification Checked</b>',
'<br>',
'<br>',
'If the student do not have the required grade, system will recommend additional English subject to be enroll. ',
'<br><br>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Additional ENGLISH Subject(s) Exempted !!!'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92450278713109080)
,p_query_column_id=>1
,p_column_alias=>'SUBJECT_REQUIRED'
,p_column_display_sequence=>10
,p_column_heading=>'Subject Required'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92450716566109080)
,p_query_column_id=>2
,p_column_alias=>'SUBJECT_REQUIRED2'
,p_column_display_sequence=>20
,p_column_heading=>'2nd Subject Required'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(325946584932089395)
,p_plug_name=>'Programme Info'
,p_static_id=>'programme-info'
,p_parent_plug_id=>wwv_flow_imp.id(254585728302192322)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(289442278594309279)
,p_name=>'Programme Listing'
,p_static_id=>'programme-listing'
,p_parent_plug_id=>wwv_flow_imp.id(325946584932089395)
,p_template=>4073835273271169698
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.SCM_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.ID_TYPE,',
'    A.ID_NUMBER,',
'    A.UCSI_REFERENCE_NUMBER,',
'    A.SCM_REGISTERED_DATE,',
'    A.SCM_STUDENT_NUMBER,',
'    A.COURSE_KEY,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    A.SEMESTERGROUP_KEY,',
'    A.SEMESTER_GROUP,',
'    A.DEPARTMENT_KEY,',
'    A.DEPARTMENT_CODE,',
'    A.FACULTY_KEY,',
'    A.FACULTY_CODE,',
'    A.FACULTY_NAME,',
'    A.PROGRAMME_TYPE_ID,',
'    A.PROGRAMME_TYPE,',
'    A.INTAKE,',
'    A.FIRST_CAMPUS_KEY,',
'    (SELECT CAMPUS_CODE FROM CAMPUS_MASTER WHERE CAMPUS_KEY = A.CAMPUS_KEY) CAMPUS_CODE,',
'    (SELECT CAMPUS_NAME FROM CAMPUS_MASTER WHERE CAMPUS_KEY = A.CAMPUS_KEY) CAMPUS_NAME,',
'    A.SCM_STATUS,',
'    A.SCM_REMARKS,',
'    A.CREATED_BY,',
'    A.CREATED_DATE,',
'    A.UCSI_REPORTED_DATE,',
'    A.UCSI_CONVOCATION_DATE,',
'    A.PROGRAMME_ID,',
'    -- ( CASE WHEN TRANSFER_KEY IS NULL THEN',
'    --     ''Transfer To<br>Another<br>Programme'' ',
'    --     ELSE',
'    --     ''Applied with status = ''||TRANSFER_STATUS ',
'    -- END ) as Programme_transfer,',
'    -- ''Credit<br>Transfer In'' as credit_transfer_in,',
'    -- TRANSFER_KEY,',
'    (SELECT CGPA FROM STUDENT_GPA_RESULT WHERE SCM_KEY = A.SCM_KEY AND ',
'     SCS_KEY IN (SELECT SCS_KEY FROM STUDENT_COURSE_SEMESTER WHERE SCM_KEY = A.SCM_KEY) ORDER BY STUDY_INTAKE DESC FETCH FIRST ROW ONLY',
'    ) CGPA,',
'    UCSI_SENATE_DATE,',
'    APEX_PAGE.GET_URL',
'    (',
'        p_page   => 534,',
'        p_clear_cache => 534,',
'        p_items  => ''GLO_DEPARTMENT_KEY,P534_PROGRAMME_ID,P534_FP,P534_STUDENT_KEY'',',
'        p_values => A.DEPARTMENT_KEY||'',''||A.PROGRAMME_ID||'',648,''||A.STUDENT_KEY   ',
'    ) PROGRAMME_CODE_URL,',
'    PROGRAMME_STRUCTURE,',
'    (SELECT B.PROGRAMME_CODE FROM V_STUDENT_PROGRAMME_MASTER B WHERE B.SCM_KEY = A.UCSI_PROGRESS_FROM_SCM)PROGRESS_FROM',
'FROM V_STUDENT_PROGRAMME_MASTER A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY A.INTAKE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Programme Records'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92502830229109106)
,p_query_column_id=>24
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>270
,p_column_heading=>'Campus '
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92503217425109106)
,p_query_column_id=>25
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>280
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92506411513109108)
,p_query_column_id=>33
,p_column_alias=>'CGPA'
,p_column_display_sequence=>330
,p_column_heading=>'CGPA'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92497175303109103)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92504454270109107)
,p_query_column_id=>28
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>300
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92504811599109107)
,p_query_column_id=>29
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92499562903109104)
,p_query_column_id=>16
,p_column_alias=>'DEPARTMENT_CODE'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92499234712109103)
,p_query_column_id=>15
,p_column_alias=>'DEPARTMENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92500444086109104)
,p_query_column_id=>18
,p_column_alias=>'FACULTY_CODE'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92499993112109104)
,p_query_column_id=>17
,p_column_alias=>'FACULTY_KEY'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92500772878109104)
,p_query_column_id=>19
,p_column_alias=>'FACULTY_NAME'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92502411246109106)
,p_query_column_id=>23
,p_column_alias=>'FIRST_CAMPUS_KEY'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92495569965109102)
,p_query_column_id=>6
,p_column_alias=>'ID_NUMBER'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92495208777109102)
,p_query_column_id=>5
,p_column_alias=>'ID_TYPE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92493970833109101)
,p_query_column_id=>2
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92502007199109106)
,p_query_column_id=>22
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>70
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92497613914109103)
,p_query_column_id=>11
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>130
,p_column_heading=>'Code'
,p_column_link=>'f?p=&APP_ID.:534:&SESSION.::&DEBUG.:Y,534:GLO_DEPARTMENT_KEY,P534_PROGRAMME_ID,P534_FP,P534_STUDENT_KEY:#DEPARTMENT_KEY#,#PROGRAMME_ID#,648,#STUDENT_KEY#'
,p_column_linktext=>'#PROGRAMME_CODE#'
,p_column_link_attr=>'target = "_blank"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(218561276792518432)
,p_query_column_id=>35
,p_column_alias=>'PROGRAMME_CODE_URL'
,p_column_display_sequence=>350
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92506013127109108)
,p_query_column_id=>32
,p_column_alias=>'PROGRAMME_ID'
,p_column_display_sequence=>340
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92498022139109103)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>120
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32624549756780037)
,p_query_column_id=>36
,p_column_alias=>'PROGRAMME_STRUCTURE'
,p_column_display_sequence=>360
,p_column_heading=>'Programme Structure'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92501582720109104)
,p_query_column_id=>21
,p_column_alias=>'PROGRAMME_TYPE'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92501221654109104)
,p_query_column_id=>20
,p_column_alias=>'PROGRAMME_TYPE_ID'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14329801730126421)
,p_query_column_id=>37
,p_column_alias=>'PROGRESS_FROM'
,p_column_display_sequence=>370
,p_column_heading=>'Progress From'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92493641968109101)
,p_query_column_id=>1
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92496419597109102)
,p_query_column_id=>8
,p_column_alias=>'SCM_REGISTERED_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Created'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92503959109109107)
,p_query_column_id=>27
,p_column_alias=>'SCM_REMARKS'
,p_column_display_sequence=>290
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92503613983109106)
,p_query_column_id=>26
,p_column_alias=>'SCM_STATUS'
,p_column_display_sequence=>140
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92496821392109102)
,p_query_column_id=>9
,p_column_alias=>'SCM_STUDENT_NUMBER'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92498381982109103)
,p_query_column_id=>13
,p_column_alias=>'SEMESTERGROUP_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92498793754109103)
,p_query_column_id=>14
,p_column_alias=>'SEMESTER_GROUP'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92494397418109101)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92494770001109102)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92505584915109107)
,p_query_column_id=>31
,p_column_alias=>'UCSI_CONVOCATION_DATE'
,p_column_display_sequence=>320
,p_column_heading=>'Convo Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92496043477109102)
,p_query_column_id=>7
,p_column_alias=>'UCSI_REFERENCE_NUMBER'
,p_column_display_sequence=>110
,p_column_heading=>'File Number'
,p_column_link=>'f?p=&APP_ID.:645:&SESSION.::&DEBUG.:645:P645_SCM_KEY:#SCM_KEY#'
,p_column_linktext=>'#UCSI_REFERENCE_NUMBER#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92505222017109107)
,p_query_column_id=>30
,p_column_alias=>'UCSI_REPORTED_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Reported Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92506836041109108)
,p_query_column_id=>34
,p_column_alias=>'UCSI_SENATE_DATE'
,p_column_display_sequence=>310
,p_column_heading=>'Senate Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(719953662879505413)
,p_name=>'Programme Listing'
,p_static_id=>'programme-listing-2'
,p_parent_plug_id=>wwv_flow_imp.id(719953592329505412)
,p_template=>4073835273271169698
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.SCM_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.ID_TYPE,',
'    A.ID_NUMBER,',
'    A.UCSI_REFERENCE_NUMBER,',
'    A.SCM_REGISTERED_DATE,',
'    A.SCM_STUDENT_NUMBER,',
'    A.COURSE_KEY,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    A.SEMESTERGROUP_KEY,',
'    A.SEMESTER_GROUP,',
'    A.DEPARTMENT_KEY,',
'    A.DEPARTMENT_CODE,',
'    A.FACULTY_KEY,',
'    A.FACULTY_CODE,',
'    A.FACULTY_NAME,',
'    A.PROGRAMME_TYPE_ID,',
'    A.PROGRAMME_TYPE,',
'    A.INTAKE,',
'    A.FIRST_CAMPUS_KEY,',
'    (SELECT CAMPUS_CODE FROM CAMPUS_MASTER WHERE CAMPUS_KEY = A.FIRST_CAMPUS_KEY) CAMPUS_CODE,',
'    (SELECT CAMPUS_NAME FROM CAMPUS_MASTER WHERE CAMPUS_KEY = A.FIRST_CAMPUS_KEY) CAMPUS_NAME,',
'    A.SCM_STATUS,',
'    A.SCM_REMARKS,',
'    A.CREATED_BY,',
'    A.CREATED_DATE,',
'    A.UCSI_REPORTED_DATE,',
'    A.UCSI_CONVOCATION_DATE,',
'    -- ( CASE WHEN TRANSFER_KEY IS NULL THEN',
'    --     ''Transfer To<br>Another<br>Programme'' ',
'    --     ELSE',
'    --     ''Applied with status = ''||TRANSFER_STATUS ',
'    -- END ) as Programme_transfer,',
'    -- ''Credit<br>Transfer In'' as credit_transfer_in,',
'    -- TRANSFER_KEY,',
'    NULL CGPA',
'',
'FROM V_STUDENT_PROGRAMME_MASTER A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY A.INTAKE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Programme Records'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92594957738109146)
,p_query_column_id=>24
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>290
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92595364116109146)
,p_query_column_id=>25
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>300
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92598252370109147)
,p_query_column_id=>32
,p_column_alias=>'CGPA'
,p_column_display_sequence=>80
,p_column_heading=>'CGPA'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92589434766109144)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92596630950109147)
,p_query_column_id=>28
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>320
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92596997670109147)
,p_query_column_id=>29
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>330
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92591786984109145)
,p_query_column_id=>16
,p_column_alias=>'DEPARTMENT_CODE'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92591408315109145)
,p_query_column_id=>15
,p_column_alias=>'DEPARTMENT_KEY'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92592564209109145)
,p_query_column_id=>18
,p_column_alias=>'FACULTY_CODE'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92592200596109145)
,p_query_column_id=>17
,p_column_alias=>'FACULTY_KEY'
,p_column_display_sequence=>340
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92592965659109145)
,p_query_column_id=>19
,p_column_alias=>'FACULTY_NAME'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92594609529109146)
,p_query_column_id=>23
,p_column_alias=>'FIRST_CAMPUS_KEY'
,p_column_display_sequence=>280
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92587783989109143)
,p_query_column_id=>6
,p_column_alias=>'ID_NUMBER'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92587412092109143)
,p_query_column_id=>5
,p_column_alias=>'ID_TYPE'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92586247289109143)
,p_query_column_id=>2
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92594220536109146)
,p_query_column_id=>22
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>10
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92589784524109144)
,p_query_column_id=>11
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>60
,p_column_heading=>'Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92590256285109144)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92593777237109146)
,p_query_column_id=>21
,p_column_alias=>'PROGRAMME_TYPE'
,p_column_display_sequence=>270
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92593359452109145)
,p_query_column_id=>20
,p_column_alias=>'PROGRAMME_TYPE_ID'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92585810775109143)
,p_query_column_id=>1
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92588616767109144)
,p_query_column_id=>8
,p_column_alias=>'SCM_REGISTERED_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Created Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92596175588109146)
,p_query_column_id=>27
,p_column_alias=>'SCM_REMARKS'
,p_column_display_sequence=>310
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92595804283109146)
,p_query_column_id=>26
,p_column_alias=>'SCM_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92588998327109144)
,p_query_column_id=>9
,p_column_alias=>'SCM_STUDENT_NUMBER'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92590569722109144)
,p_query_column_id=>13
,p_column_alias=>'SEMESTERGROUP_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92590990055109145)
,p_query_column_id=>14
,p_column_alias=>'SEMESTER_GROUP'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92586573889109143)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92587036689109143)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92597769447109147)
,p_query_column_id=>31
,p_column_alias=>'UCSI_CONVOCATION_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Estimated Graduation'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92588241807109144)
,p_query_column_id=>7
,p_column_alias=>'UCSI_REFERENCE_NUMBER'
,p_column_display_sequence=>40
,p_column_heading=>'File Number'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92597400120109147)
,p_query_column_id=>30
,p_column_alias=>'UCSI_REPORTED_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Reported Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(820696910445122619)
,p_plug_name=>'Programme Transfer'
,p_static_id=>'programme-transfer'
,p_parent_plug_id=>wwv_flow_imp.id(254585728302192322)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720294321465403707)
,p_plug_name=>'Receipts'
,p_static_id=>'receipts'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.SFM_KEY,',
'    A.TRANSACTION_DATE,',
'    A.PAYMENT_DUE_DATE,',
'    A.TRANSACTION_TYPE,',
'    A.TYPE_OF_FEES,',
'    A.TRANSACTION_STATUS,',
'    A.TRANSACTION_AMOUNT,',
'    A.CURRENCY,',
'    A.CURRENCY_RATE,',
'    ABS(A.AMOUNT_LOCAL_CURRENCY) AS AMOUNT_LOCAL_CURRENCY,',
'    A.UNMATCH_AMOUNT,',
'    (CASE WHEN A.TRANSACTION_STATUS = ''Active'' THEN',
'        ''Cancel''',
'    END) ACTION,',
'    A.MOP,',
'    (CASE WHEN transaction_type=''Collection'' THEN',
'''<a href="&GLO_REPORT_URL.&GLO_RECEIPT.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.&P1=&GLO_INSTITUTE_KEY.&P2=''||A.CAMPUS_KEY||''&P3=''||A.SFM_KEY||''&P0=''||JASPER_CHECKSUM(''&GLO_INSTITUTE_KEY.''||CAMPUS_KEY||SFM_KEY)||''" target="_blan'
||'k">''||A.TRANSACTION_NUMBER||''</a>''',
'    ELSE A.TRANSACTION_NUMBER',
'END) as TRANSACTION_NUMBER',
'FROM V_STUDENT_STATEMENT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE = ''Collection'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Receipts'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720294541162403709)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>693238583434577980
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92624645888109159)
,p_db_column_name=>'ACTION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92624241461109158)
,p_db_column_name=>'AMOUNT_LOCAL_CURRENCY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Amount (RM)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92623385995109158)
,p_db_column_name=>'CURRENCY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92623785812109158)
,p_db_column_name=>'CURRENCY_RATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Currency Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92625393983109159)
,p_db_column_name=>'MOP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Method'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92621000602109157)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Due Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92620239057109157)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92619787106109156)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92625804565109159)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Payor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92623043802109158)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92620591089109157)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Deposit Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92621827408109157)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Receipt'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92622627885109158)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92621452283109157)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92622245570109157)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92624984164109159)
,p_db_column_name=>'UNMATCH_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Adjustments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720381734289143981)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:TRANSACTION_NUMBER:STUDENT_NAME:MOP:AMOUNT_LOCAL_CURRENCY:UNMATCH_AMOUNT'
,p_sum_columns_on_break=>'AMOUNT_LOCAL_CURRENCY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(728379993417743608)
,p_name=>'Refund'
,p_static_id=>'refund'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_template=>4502917002193490937
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TRANSACTION_DATE, ',
'    TRANSACTION_NUMBER, ',
'    AMOUNT_LOCAL_CURRENCY AS TRANSACTION_AMOUNT, ',
'    TYPE_OF_FEES,',
'    TRANSACTION_STATUS, ',
'    SFM_KEY,',
'    REMARKS,',
'    TOTAL_COLLECTED,',
'    CREATED_BY,',
'    CREATED_DATE,',
'    ''View'' as ZOOM',
'FROM V_STUDENT_STATEMENT0 --STUDENT_FEE_MASTER',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND TRANSACTION_TYPE = ''Refund''',
'AND TRANSACTION_STATUS = ''Active'''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCB8 Refund Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 10px 0;">',
'        This page displays all refund transactions processed for the student. You can review refund details, payment methods, approval status, and related financial information.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;',
'        color:#B00020;">',
'        <b>Note:</b> Authorized users may create new refunds for approved overpayments or other eligible financial adjustments in accordance with your institution''s refund policy.',
'    </p>',
'',
'</div>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No refund transaction found for this student.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(583970098759877944)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>120
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(583970206521877945)
,p_query_column_id=>10
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>130
,p_column_heading=>'Created Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(224459108606554255)
,p_query_column_id=>7
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>90
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92813317192109240)
,p_query_column_id=>6
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(224460504827554269)
,p_query_column_id=>8
,p_column_alias=>'TOTAL_COLLECTED'
,p_column_display_sequence=>110
,p_column_heading=>'Allocated From Receipt'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92812098387109240)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_AMOUNT'
,p_column_display_sequence=>100
,p_column_heading=>'Transaction Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92811279216109239)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Transaction Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92811660506109240)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_NUMBER'
,p_column_display_sequence=>30
,p_column_heading=>'Transaction Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92812884461109240)
,p_query_column_id=>5
,p_column_alias=>'TRANSACTION_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Transaction Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(224460845358554272)
,p_query_column_id=>4
,p_column_alias=>'TYPE_OF_FEES'
,p_column_display_sequence=>60
,p_column_heading=>'Type Of Fees'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(230669641558770950)
,p_query_column_id=>11
,p_column_alias=>'ZOOM'
,p_column_display_sequence=>10
,p_column_heading=>'Zoom'
,p_column_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(830190234033038012)
,p_plug_name=>'Remarks'
,p_static_id=>'remarks'
,p_parent_plug_id=>wwv_flow_imp.id(816365174451275841)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STUDENT_DIARY_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.DIARY_TYPE,',
'    A.DIARY_TOPIC,',
'    A.DIARY_NOTE,',
'    A.CREATED_BY,',
'    A.CREATED_BY_USER_KEY,',
'    A.CREATED_DATE',
'FROM STUDENT_DIARY A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.DIARY_TYPE = ''Sponsorship'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_check number;',
'',
'begin',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_SPONSORSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SPONSORSHIP_STATUS = ''Active'';',
'',
'    if v_check > 0 then',
'        return true;',
'',
'    end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Remarks'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405954707363116)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835406011133363117)
,p_name=>'CREATED_BY_USER_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY_USER_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835406093449363118)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405794163363115)
,p_name=>'DIARY_NOTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIARY_NOTE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Remark'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405709355363114)
,p_name=>'DIARY_TOPIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIARY_TOPIC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Topic'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405592677363113)
,p_name=>'DIARY_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIARY_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405455929363111)
,p_name=>'INSTITUTE_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTE_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405308228363110)
,p_name=>'STUDENT_DIARY_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_DIARY_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835405525570363112)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(835405194813363109)
,p_internal_uid=>808349237085537380
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(835568513626350693)
,p_interactive_grid_id=>wwv_flow_imp.id(835405194813363109)
,p_static_id=>'6788284'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(835568746469350693)
,p_report_id=>wwv_flow_imp.id(835568513626350693)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835569201287350695)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(835405308228363110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835570135924350698)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(835405455929363111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835571040164350701)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(835405525570363112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835571863329350704)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(835405592677363113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835572799233350707)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(835405709355363114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835573663640350710)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(835405794163363115)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>677
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835574568203350713)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(835405954707363116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835575443879350716)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(835406011133363117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(835576292159350719)
,p_view_id=>wwv_flow_imp.id(835568746469350693)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(835406093449363118)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712103864137805504)
,p_plug_name=>'Result for A-Level'
,p_static_id=>'result-for-a-level'
,p_parent_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUBJECT,',
'    MANDATORY,',
'    ACTUAL_GRADE,',
'    STUD_QUAL_DETAIL_KEY,',
'    STUDENT_KEY,',
'    (CASE WHEN MANDATORY = ''Y'' THEN ',
'      ''U''',
'      WHEN MANDATORY = ''N'' THEN',
'      ''UD''',
'    END) ACTION_COLUMN',
'',
'FROM STUDENT_QUALIFICATION_DETAIL',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND O_A_LEVEL = ''A'''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Result for A-Level'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<br><font color=''red''>The mandatory subject cannot be removed. For other subject which are not mandatory, please use the checkbox to remove unnecessary/unwanted record</font><br><br>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104592024805511)
,p_name=>'ACTION_COLUMN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104294855805508)
,p_name=>'ACTUAL_GRADE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_GRADE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Actual<br>Grade'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as display,',
'field_value as return',
'',
'from v_setup_detail',
'where institute_key = :glo_institute_key',
'and field_name = ''QUALIFICATION_GRADE''',
'order by 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104965355805515)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712105124900805516)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104253626805507)
,p_name=>'MANDATORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANDATORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mandatory'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104521126805510)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104435941805509)
,p_name=>'STUD_QUAL_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUD_QUAL_DETAIL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104128222805506)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Subject'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(712104020810805505)
,p_internal_uid=>685048063082979776
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_edit_row_operations_column=>'ACTION_COLUMN'
,p_lost_update_check_type=>'VALUES'
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(712117479794899265)
,p_interactive_grid_id=>wwv_flow_imp.id(712104020810805505)
,p_static_id=>'5553774'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(712117687837899265)
,p_report_id=>wwv_flow_imp.id(712117479794899265)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712118603681899270)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(712104128222805506)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712119533405899276)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(712104253626805507)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712120426174899280)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(712104294855805508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712121234968899283)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(712104435941805509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712122142650899286)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(712104521126805510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712123051108899289)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(712104592024805511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712128508388905365)
,p_view_id=>wwv_flow_imp.id(712117687837899265)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(712104965355805515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(711058798203117808)
,p_plug_name=>'Result For O-Level'
,p_static_id=>'result-for-o-level'
,p_parent_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUBJECT,',
'    MANDATORY,',
'    ACTUAL_GRADE,',
'    STUD_QUAL_DETAIL_KEY,',
'    STUDENT_KEY,',
'    (CASE WHEN MANDATORY = ''Y'' THEN ',
'      ''U''',
'      WHEN MANDATORY = ''N'' THEN',
'      ''UD''',
'    END) ACTION_COLUMN',
'',
'FROM STUDENT_QUALIFICATION_DETAIL',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND O_A_LEVEL = ''O'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Result For O-Level'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<br><font color=''red''>The mandatory subject cannot be removed. For other subject which are not mandatory, please use the checkbox to remove unnecessary/unwanted record</font><br><br>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711059470498117815)
,p_name=>'ACTION_COLUMN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711059227341117812)
,p_name=>'ACTUAL_GRADE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_GRADE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Actual<br>Grade'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as display,',
'field_value as return',
'',
'from v_setup_detail',
'where institute_key = :glo_institute_key',
'and field_name = ''QUALIFICATION_GRADE''',
'order by 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104705671805512)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712104848333805513)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711059081075117811)
,p_name=>'MANDATORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANDATORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mandatory'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711059367850117814)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711059261881117813)
,p_name=>'STUD_QUAL_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUD_QUAL_DETAIL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711058975885117810)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Subject'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(711058914093117809)
,p_internal_uid=>684002956365292080
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_edit_row_operations_column=>'ACTION_COLUMN'
,p_lost_update_check_type=>'VALUES'
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(711145836541173292)
,p_interactive_grid_id=>wwv_flow_imp.id(711058914093117809)
,p_static_id=>'5544057'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(711146009700173293)
,p_report_id=>wwv_flow_imp.id(711145836541173292)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711146475606173295)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(711058975885117810)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.2188
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711147453145173300)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(711059081075117811)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711148284993173302)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(711059227341117812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711149244780173305)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(711059261881117813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711150116229173308)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(711059367850117814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711150980537173311)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(711059470498117815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712123953513899292)
,p_view_id=>wwv_flow_imp.id(711146009700173293)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(712104705671805512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(688798913300792622)
,p_name=>'Scholarship'
,p_static_id=>'scholarship'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_template=>4502917002193490937
,p_display_sequence=>170
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCH_KEY,',
'    A.REGISTER_DATE,',
'    A.SS_STATUS,',
'    A.SCM_KEY,',
'    A.PROGRAMME_CODE||'' - ''||A.PROGRAMME_NAME FOR_PROGRAMME,',
'    A.ENR_NUMBER, ',
'    A.ENR_STATUS,',
'    A.INTAKE,',
'    A.LATEST_SEMESTER,',
'    (SELECT NVL(SUM(AMOUNT_LOCAL_CURRENCY) ,0)',
'        FROM STUDENT_FEE_MASTER',
'        WHERE STUDENT_KEY = A.STUDENT_KEY',
'        AND SS_KEY = A.SS_KEY',
'        AND SCM_KEY = A.SCM_KEY',
'        ) AS DISBURSED_AMOUNT,',
'    ''View'' DETAILS',
'FROM V_STUDENT_SCHOLARSHIP A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TYPE = ''SCHOLARSHIP'';'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83C\DF93 Scholarship'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays all scholarships assigned to the selected student, including the application status, approved programme, enrolment information, and the total amount disbursed. Click <strong>View</strong> to review the scholarship details o'
||'r use <strong>Assign Scholarship To This Student</strong> to create a new scholarship assignment.',
'    </p>',
'',
'</div>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570182215377627442)
,p_query_column_id=>13
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>50
,p_column_heading=>'Details'
,p_column_link=>'f?p=&APP_ID.:2029:&SESSION.::&DEBUG.:2029:P2029_SS_KEY,P2029_FROM_PAGE:#SS_KEY#,648'
,p_column_linktext=>'#DETAILS#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92809378874109239)
,p_query_column_id=>12
,p_column_alias=>'DISBURSED_AMOUNT'
,p_column_display_sequence=>140
,p_column_heading=>'Disbursed Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(223060067084926073)
,p_query_column_id=>8
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>100
,p_column_heading=>'ENR Number'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(223060228611926074)
,p_query_column_id=>9
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>110
,p_column_heading=>'ENR Status'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570182318367627443)
,p_query_column_id=>7
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>90
,p_column_heading=>'For Programme'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570182410346627444)
,p_query_column_id=>10
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>120
,p_column_heading=>'Intake'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(223060304276926075)
,p_query_column_id=>11
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>130
,p_column_heading=>'Last/Latest <br>Semester'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92807407063109238)
,p_query_column_id=>4
,p_column_alias=>'REGISTER_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Applied Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92807056117109238)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92808248896109238)
,p_query_column_id=>6
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92806160441109238)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92807851346109238)
,p_query_column_id=>5
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92806631939109238)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(711058361929117804)
,p_plug_name=>'SECONDARY EDUCATIONS'
,p_static_id=>'secondary-educations'
,p_parent_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(325946707823089396)
,p_name=>'Semesters'
,p_static_id=>'semesters'
,p_parent_plug_id=>wwv_flow_imp.id(325946584932089395)
,p_template=>4073835273271169698
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.SCS_KEY,',
'    A.SCM_KEY,',
'    A.STUDENT_KEY,',
'    A.STUDENT_NAME,',
'    A.STUDENT_NUMBER,',
'    A.INSTITUTE_KEY,',
'    A.CAMPUS_KEY,',
'    A.CAMPUS_CODE,',
'    A.CAMPUS_NAME,',
'    A.COURSE_KEY,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    (CASE WHEN STUDY_INTAKE <> ''0000-00'' THEN',
'        A.STUDY_INTAKE',
'    ELSE',
'        NULL',
'    END) STUDY_INTAKE,',
'    A.UCSI_REFERENCE_NUMBER,',
'    A.UCSI_PROGRAMME_STRUCTURE_ID,',
'    A.PROGRAMME_STRUCTURE,',
'    A.UCSI_SEMESTER_KEY,',
'    A.TOTAL_COURSE_TAKEN,',
'    A.TOTAL_WEIGHTAGE,',
'    (CASE WHEN A.SCS_STATUS = ''Selection'' THEN ''Active''',
'          ELSE A.SCS_STATUS',
'    END) SCS_STATUS,',
'    (CASE WHEN A.STUDY_INTAKE = ''0000-00'' THEN NULL',
'          WHEN (SELECT COUNT(*) FROM STUDENT_GPA_RESULT WHERE SCS_KEY = A.SCS_KEY) = 0 THEN NULL',
'          ELSE ''Print''',
'    END) PRINT_SEMESTER_TRANSCRIPT,',
'    (SELECT SEMESTER_GPA FROM STUDENT_GPA_RESULT B WHERE B.SCS_KEY = A.SCS_KEY) GPA,',
'    (SELECT CGPA FROM STUDENT_GPA_RESULT B WHERE B.SCS_KEY = A.SCS_KEY) CGPA,',
'    A.IS_FINAL_SEMESTER',
'FROM V_STUDENT_PROGRAMME_SEMESTER A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.STUDY_INTAKE != ''0000-00''',
'-- ORDER BY A.PROGRAMME_CODE,A.STUDY_INTAKE '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No semester records'
,p_report_total_text_format=>'<b>Programme Total: <b>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92464556816109087)
,p_query_column_id=>8
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92464153631109087)
,p_query_column_id=>7
,p_column_alias=>'CAMPUS_KEY'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92464936764109088)
,p_query_column_id=>9
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92470505437109090)
,p_query_column_id=>23
,p_column_alias=>'CGPA'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92465355807109088)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92470068554109089)
,p_query_column_id=>22
,p_column_alias=>'GPA'
,p_column_display_sequence=>230
,p_column_heading=>'GPA'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92463731868109087)
,p_query_column_id=>6
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118219243381778902)
,p_query_column_id=>24
,p_column_alias=>'IS_FINAL_SEMESTER'
,p_column_display_sequence=>150
,p_column_heading=>'Final Semester'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92469677856109089)
,p_query_column_id=>21
,p_column_alias=>'PRINT_SEMESTER_TRANSCRIPT'
,p_column_display_sequence=>250
,p_column_heading=>'Print Semester Transcript'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_ST.&_repFormat=pdf&_dataSource=&GLO_JASPERCMDKEY.&P1=&GLO_INSTITUTE_KEY.&P2=#SCS_KEY#''));'
,p_column_linktext=>'#PRINT_SEMESTER_TRANSCRIPT#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92465746810109088)
,p_query_column_id=>11
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92466134098109088)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92467665332109089)
,p_query_column_id=>16
,p_column_alias=>'PROGRAMME_STRUCTURE'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92462104726109087)
,p_query_column_id=>2
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92461737311109086)
,p_query_column_id=>1
,p_column_alias=>'SCS_KEY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92469280971109089)
,p_query_column_id=>20
,p_column_alias=>'SCS_STATUS'
,p_column_display_sequence=>220
,p_column_heading=>'Semester Status'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92462468821109087)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92462902787109087)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92463340050109087)
,p_query_column_id=>5
,p_column_alias=>'STUDENT_NUMBER'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92466488350109088)
,p_query_column_id=>13
,p_column_alias=>'STUDY_INTAKE'
,p_column_display_sequence=>140
,p_column_heading=>'Semester'
,p_column_link=>'f?p=&APP_ID.:598:&SESSION.::&DEBUG.:598:P598_FP,P598_SCS_KEY:648,#SCS_KEY#'
,p_column_linktext=>'#STUDY_INTAKE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92468490060109089)
,p_query_column_id=>18
,p_column_alias=>'TOTAL_COURSE_TAKEN'
,p_column_display_sequence=>200
,p_column_heading=>'Number Of Courses'
,p_column_alignment=>'CENTER'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92468910028109089)
,p_query_column_id=>19
,p_column_alias=>'TOTAL_WEIGHTAGE'
,p_column_display_sequence=>210
,p_column_heading=>'Total Weightage'
,p_column_alignment=>'CENTER'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92467310346109088)
,p_query_column_id=>15
,p_column_alias=>'UCSI_PROGRAMME_STRUCTURE_ID'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92466937384109088)
,p_query_column_id=>14
,p_column_alias=>'UCSI_REFERENCE_NUMBER'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92468141421109089)
,p_query_column_id=>17
,p_column_alias=>'UCSI_SEMESTER_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(984009720093549165)
,p_name=>'Sibling Discount'
,p_static_id=>'sibling-discount'
,p_parent_plug_id=>wwv_flow_imp.id(845117743719686847)
,p_template=>2323592004483952560
,p_display_sequence=>200
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCH_KEY,',
'    A.REGISTER_DATE,',
'    A.SCH_CODE DISCOUNT_CODE,',
'    A.SCH_NAME DISCOUNT_SCHEME,',
'    A.SS_STATUS,',
'    A.SCM_KEY,',
'    A.PROGRAMME_CODE||'' - ''||A.PROGRAMME_NAME FOR_PROGRAMME,',
'    A.ENR_NUMBER, ',
'    A.ENR_STATUS,',
'    A.INTAKE,',
'    A.LATEST_SEMESTER,',
'    A.SIBLING_TO_STUDENT,',
'    (SELECT NVL(SUM(AMOUNT_LOCAL_CURRENCY) ,0)',
'        FROM STUDENT_FEE_MASTER',
'        WHERE STUDENT_KEY = A.STUDENT_KEY',
'        AND SS_KEY = A.SS_KEY',
'        AND SCM_KEY = A.SCM_KEY',
'        ) AS DISBURSED_AMOUNT,',
'    ''View'' DETAILS',
'FROM V_STUDENT_DISCOUNT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TYPE = ''SIBLING DISCOUNT''',
'ORDER BY A.REGISTER_DATE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No sibling discount scheme assign to this student.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570834053559277141)
,p_query_column_id=>16
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>50
,p_column_heading=>'Details'
,p_column_link=>'f?p=&APP_ID.:2083:&SESSION.::&DEBUG.:2083:P2083_SS_KEY,P2083_FROM_PAGE:#SS_KEY#,648'
,p_column_linktext=>'#DETAILS#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833923062277140)
,p_query_column_id=>15
,p_column_alias=>'DISBURSED_AMOUNT'
,p_column_display_sequence=>180
,p_column_heading=>'Disbursed Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833206441277133)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>90
,p_column_heading=>'Discount Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833378005277134)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>100
,p_column_heading=>'Discount Scheme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833524422277136)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833659989277137)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>150
,p_column_heading=>'Enr Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833457084277135)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>130
,p_column_heading=>'For Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833773235277138)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>160
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833792040277139)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>170
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(984009950561549167)
,p_query_column_id=>4
,p_column_alias=>'REGISTER_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Register Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(984009801910549166)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(984010143895549169)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570834283268277143)
,p_query_column_id=>14
,p_column_alias=>'SIBLING_TO_STUDENT'
,p_column_display_sequence=>110
,p_column_heading=>'Sibling To Student'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(984010515778549173)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(984010049629549168)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570833179953277132)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(845117761793686848)
,p_name=>'Special Discount'
,p_static_id=>'special-discount'
,p_parent_plug_id=>wwv_flow_imp.id(845117743719686847)
,p_template=>2323592004483952560
,p_display_sequence=>190
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCH_KEY,',
'    A.REGISTER_DATE,',
'    A.SCH_CODE DISCOUNT_CODE,',
'    A.SCH_NAME DISCOUNT_SCHEME,',
'    A.SS_STATUS,',
'    A.SCM_KEY,',
'    A.PROGRAMME_CODE||'' - ''||A.PROGRAMME_NAME FOR_PROGRAMME,',
'    A.ENR_NUMBER, ',
'    A.ENR_STATUS,',
'    A.INTAKE,',
'    A.LATEST_SEMESTER,',
'    (SELECT NVL(SUM(AMOUNT_LOCAL_CURRENCY) ,0)',
'        FROM STUDENT_FEE_MASTER',
'        WHERE STUDENT_KEY = A.STUDENT_KEY',
'        AND SS_KEY = A.SS_KEY',
'        AND SCM_KEY = A.SCM_KEY',
'        ) AS DISBURSED_AMOUNT,',
'    ''View'' DETAILS',
'FROM V_STUDENT_DISCOUNT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TYPE = ''SPECIAL DISCOUNT''',
'ORDER BY A.REGISTER_DATE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No special discount scheme assign to this student.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832583529277126)
,p_query_column_id=>15
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>10
,p_column_heading=>'Details'
,p_column_link=>'f?p=&APP_ID.:934:&SESSION.::&DEBUG.:934:P934_SS_KEY,P934_FROM_PAGE:#SS_KEY#,648'
,p_column_linktext=>'#DETAILS#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832477739277125)
,p_query_column_id=>14
,p_column_alias=>'DISBURSED_AMOUNT'
,p_column_display_sequence=>160
,p_column_heading=>'Disbursed Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184830652627468)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>80
,p_column_heading=>'Discount Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184914308627469)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>90
,p_column_heading=>'Discount Scheme'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832060119277121)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832097797277122)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>130
,p_column_heading=>'ENR Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184992065627470)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>110
,p_column_heading=>'For Programme'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832263464277123)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>140
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570832319114277124)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>150
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92727775090109205)
,p_query_column_id=>4
,p_column_alias=>'REGISTER_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Register Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92727451069109205)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92728573563109206)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92730165993109206)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92728178944109205)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>100
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184748334627467)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(816365174451275841)
,p_plug_name=>'Sponsorship'
,p_static_id=>'sponsorship'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83C\DF93 Student Sponsorship'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays all sponsorships assigned to the student. You can review existing sponsorship records or assign a new sponsorship to support the student''s tuition fees or other eligible charges.',
'    </p>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(831949605803923417)
,p_plug_name=>'Sponsorship Assigned'
,p_static_id=>'sponsorship-assigned'
,p_parent_plug_id=>wwv_flow_imp.id(816365174451275841)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCH_KEY,',
'    A.REGISTER_DATE,',
'    A.APPLICATION_NO,',
'    A.BOARD_NAME SPONSOR_BOARD,',
'    A.SCH_CODE SCHEME_CODE,',
'    A.SS_STATUS,',
'    A.SCM_KEY,',
'    A.PROGRAMME_CODE||'' - ''||A.PROGRAMME_NAME FOR_PROGRAMME,',
'    A.ENR_NUMBER, ',
'    A.ENR_STATUS,',
'    A.INTAKE,',
'    A.LATEST_SEMESTER,',
'    (SELECT NVL(SUM(AMOUNT_LOCAL_CURRENCY) ,0)',
'        FROM STUDENT_FEE_MASTER',
'        WHERE STUDENT_KEY = A.STUDENT_KEY',
'        AND SS_KEY = A.SS_KEY',
'        AND SCM_KEY = A.SCM_KEY',
'        ) AS DISBURSED_AMOUNT,',
'    ''View'' DETAILS',
'FROM V_STUDENT_SPONSORSHIP A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sponsorship Assigned'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'Here is the list of sponsorship assigned to this student.'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(831949732096923418)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No sponsorship(s) assigned'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_internal_uid=>804893774369097689
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(633965027936435623)
,p_db_column_name=>'APPLICATION_NO'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'Application No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409916949528548)
,p_db_column_name=>'DETAILS'
,p_display_order=>230
,p_column_identifier=>'Z'
,p_column_label=>'Details'
,p_column_link=>'f?p=&APP_ID.:2245:&SESSION.::&DEBUG.:2245:P2245_SS_KEY,P2245_FROM_PAGE:#SS_KEY#,648'
,p_column_linktext=>'#DETAILS#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409812464528547)
,p_db_column_name=>'DISBURSED_AMOUNT'
,p_display_order=>220
,p_column_identifier=>'Y'
,p_column_label=>'Disbursed Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409503767528544)
,p_db_column_name=>'ENR_NUMBER'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'ENR Number'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409635140528545)
,p_db_column_name=>'ENR_STATUS'
,p_display_order=>200
,p_column_identifier=>'W'
,p_column_label=>'ENR Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409445140528543)
,p_db_column_name=>'FOR_PROGRAMME'
,p_display_order=>180
,p_column_identifier=>'U'
,p_column_label=>'For Programme'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(173480498755021335)
,p_db_column_name=>'INTAKE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Intake'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409703037528546)
,p_db_column_name=>'LATEST_SEMESTER'
,p_display_order=>210
,p_column_identifier=>'X'
,p_column_label=>'Last/Latest<br>Semester'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409139540528540)
,p_db_column_name=>'REGISTER_DATE'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Applied Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(633964927196435622)
,p_db_column_name=>'SCHEME_CODE'
,p_display_order=>250
,p_column_identifier=>'AB'
,p_column_label=>'Scheme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409083314528539)
,p_db_column_name=>'SCH_KEY'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Sch Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409387392528542)
,p_db_column_name=>'SCM_KEY'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Scm Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(633964860678435621)
,p_db_column_name=>'SPONSOR_BOARD'
,p_display_order=>240
,p_column_identifier=>'AA'
,p_column_label=>'Sponsor Board'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631408835952528537)
,p_db_column_name=>'SS_KEY'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Ss Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631409288400528541)
,p_db_column_name=>'SS_STATUS'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631408911193528538)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(831996408784506721)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656386'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETAILS:REGISTER_DATE:APPLICATION_NO:SPONSOR_BOARD:SCHEME_CODE:SS_STATUS:FOR_PROGRAMME:ENR_NUMBER:ENR_STATUS:INTAKE:LATEST_SEMESTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(832977728543650612)
,p_plug_name=>'Sponsorship Attachment'
,p_static_id=>'sponsorship-attachment'
,p_parent_plug_id=>wwv_flow_imp.id(816365174451275841)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STUDENT_KEY,',
'       DOCUMENT_DESCRIPTION,',
'       DOCUMENT_TYPE,',
'       DOCUMENET_DATE,',
'       SD_KEY,',
'       DOCUMENT_TYPE_ID,',
'       INSTITUTE_KEY,',
'       BFILE_IDENTIFIER_ID,',
'       CREATED_BY,',
'       CREATED_DATE,',
'       FK_COLUMN,',
'       FK_KEY,',
'       LOCAL_FOREIGN,',
'       IMAGE_FILE_NAME,',
'       ''Edit'',',
'       Student_document_key',
'  from STUDENT_DOCUMENT_IMAGING',
'  where student_key = :P648_STUDENT_KEY',
'  and institute_key = :P648_INSTITUTE_KEY',
'  and document_type = ''Sponsorship Attachment'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_check number;',
'',
'begin',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_SPONSORSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SPONSORSHIP_STATUS = ''Active'';',
'',
'    if v_check > 0 then',
'        return true;',
'',
'    end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sponsorship Attachment'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(836335482878607402)
,p_name=>'''EDIT'''
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'''EDIT'''
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:921:&SESSION.::&DEBUG.:921:P921_INSTITUTE_KEY,P921_STUDENT_DOCUMENT_KEY,P921_STUDENT_KEY,P921_BFILE_IDENTIFIER_ID:&INSTITUTE_KEY.,&STUDENT_DOCUMENT_KEY.,&STUDENT_KEY.,&BFILE_IDENTIFIER_ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408808253363145)
,p_name=>'BFILE_IDENTIFIER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BFILE_IDENTIFIER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408914483363146)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408992417363147)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408379927363141)
,p_name=>'DOCUMENET_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENET_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408224841363139)
,p_name=>'DOCUMENT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408267999363140)
,p_name=>'DOCUMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408611101363143)
,p_name=>'DOCUMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835409096358363148)
,p_name=>'FK_COLUMN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FK_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835409225712363149)
,p_name=>'FK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FK_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835409431301363151)
,p_name=>'IMAGE_FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMAGE_FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408756858363144)
,p_name=>'INSTITUTE_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTE_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835409289637363150)
,p_name=>'LOCAL_FOREIGN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCAL_FOREIGN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408470983363142)
,p_name=>'SD_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(836335635331607403)
,p_name=>'STUDENT_DOCUMENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_DOCUMENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(835408130429363138)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(835407986141363137)
,p_internal_uid=>808352028413537408
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(836308354759583074)
,p_interactive_grid_id=>wwv_flow_imp.id(835407986141363137)
,p_static_id=>'6795682'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(836308486008583074)
,p_report_id=>wwv_flow_imp.id(836308354759583074)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(156755715300262584)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(836335482878607402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(156757139837262588)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(836335635331607403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836309023503583076)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(835408130429363138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836309902882583081)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(835408224841363139)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>527
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836310800708583085)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(835408267999363140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836311739671583088)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(835408379927363141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836312625266583091)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(835408470983363142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836313477952583094)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(835408611101363143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836314375770583097)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(835408756858363144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836315351536583099)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(835408808253363145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836316239701583102)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(835408914483363146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836317146942583105)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(835408992417363147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836318011020583108)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(835409096358363148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836318941545583111)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(835409225712363149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836319659151583114)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(835409289637363150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(836320621039583117)
,p_view_id=>wwv_flow_imp.id(836308486008583074)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(835409431301363151)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(570183168520627451)
,p_name=>'Staff Discount'
,p_static_id=>'staff-discount'
,p_parent_plug_id=>wwv_flow_imp.id(845117743719686847)
,p_template=>2323592004483952560
,p_display_sequence=>180
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.SS_KEY,',
'    A.STUDENT_KEY,',
'    A.SCH_KEY,',
'    A.REGISTER_DATE,',
'    A.SCH_CODE DISCOUNT_CODE,',
'    A.SCH_NAME DISCOUNT_SCHEME,',
'    A.SS_STATUS,',
'    A.SCM_KEY,',
'    A.PROGRAMME_CODE||'' - ''||A.PROGRAMME_NAME FOR_PROGRAMME,',
'    A.ENR_NUMBER, ',
'    A.ENR_STATUS,',
'    A.INTAKE,',
'    A.LATEST_SEMESTER,',
'    (SELECT NVL(SUM(AMOUNT_LOCAL_CURRENCY) ,0)',
'        FROM STUDENT_FEE_MASTER',
'        WHERE STUDENT_KEY = A.STUDENT_KEY',
'        AND SS_KEY = A.SS_KEY',
'        AND SCM_KEY = A.SCM_KEY',
'        ) AS DISBURSED_AMOUNT,',
'    ''View'' DETAILS',
'FROM V_STUDENT_DISCOUNT A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TYPE = ''STAFF DISCOUNT''',
'ORDER BY A.REGISTER_DATE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No staff discount scheme assign to this student.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184457449627464)
,p_query_column_id=>15
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>40
,p_column_heading=>'Details'
,p_column_link=>'f?p=&APP_ID.:935:&SESSION.::&DEBUG.:935:P935_SS_KEY,P935_FROM_PAGE:#SS_KEY#,648'
,p_column_linktext=>'#DETAILS#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184300228627463)
,p_query_column_id=>14
,p_column_alias=>'DISBURSED_AMOUNT'
,p_column_display_sequence=>150
,p_column_heading=>'Disbursed Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184533540627465)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>60
,p_column_heading=>'Discount Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184603004627466)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>70
,p_column_heading=>'Discount Scheme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183979227627459)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184007611627460)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'ENR Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183843587627458)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>100
,p_column_heading=>'For Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184091386627461)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>130
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570184236044627462)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>140
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183517069627455)
,p_query_column_id=>4
,p_column_alias=>'REGISTER_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Register Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183481205627454)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183740647627457)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183281599627452)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183610057627456)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(570183375831627453)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233786765071013703)
,p_plug_name=>'Status'
,p_static_id=>'status'
,p_parent_plug_id=>wwv_flow_imp.id(476881474910943654)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>35
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<BR><BR>'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<BR><BR>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(482784698615286161)
,p_plug_name=>'Status'
,p_static_id=>'status-2'
,p_parent_plug_id=>wwv_flow_imp.id(476881474910943654)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>15
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<BR><BR>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(846725352013219719)
,p_plug_name=>'Student Statement '
,p_static_id=>'student-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_icon_css_classes=>'fa-align-justify'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TO_DATE(A.PAYMENT_DUE_DATE) PAYMENT_DUE_DATE,',
'    TO_DATE(A.TRANSACTION_DATE) TRANSACTION_DATE,',
'    A.INVOICE_KEY,',
'    A.CAMPUS_KEY,',
'    (CASE WHEN A.TRANSACTION_TYPE IN (''Opening Balance'',''Opening Balance Deposit'') THEN MIN(A.TRANSACTION_NUMBER)',
'          ELSE A.INVOICE_NUMBER',
'     END) INVOICE_NUMBER,',
'    SUM(A.AMOUNT_LOCAL_CURRENCY) TRANSACTION_AMOUNT,',
'--    ABS(SUM(A.TOTAL_CN)) TOTAL_CN,',
'--    ABS(SUM(A.TOTAL_DISCOUNT)) TOTAL_DISCOUNT,',
'--    ABS(SUM(A.TOTAL_SCHOLARSHIP)) TOTAL_SCHOLARSHIP,',
'--    (ABS(SUM(A.TOTAL_CN)) + ABS(SUM(A.TOTAL_DISCOUNT)) + ABS(SUM(A.TOTAL_SCHOLARSHIP))) TOTAL_ADJUSTMENT,',
'    ABS(SUM(A.TOTAL_NET_TO_PAY)) TOTAL_NET_TO_PAY,',
'    ABS(SUM(A.TOTAL_COLLECTED))TOTAL_COLLECTED,',
'    SUM(A.INVOICE_BALANCE_DUE) INVOICE_BALANCE_DUE,',
'    A.PROGRAMME_CODE,',
'    A.PROGRAMME_NAME,',
'    A.STUDY_INTAKE,',
'    ( CASE WHEN SUM(A.INVOICE_BALANCE_DUE) <> 0 ',
'                AND current_date - TO_DATE(A.PAYMENT_DUE_DATE) > 0 THEN',
'        current_date - TO_DATE(A.PAYMENT_DUE_DATE) ',
'    END ) as days_due,',
'    (JASPER_CHECKSUM(:GLO_INSTITUTE_KEY || A.CAMPUS_KEY || A.INVOICE_KEY)) AS JASPER_CHECKSUM,',
'    A.AMOUNT_BEFORE_TAX,',
'    A.TAX_AMOUNT,',
'    A.TAX_RATE',
'',
'FROM V_STUDENT_STATEMENT A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND A.TRANSACTION_TYPE IN (''Invoice'',''Opening Balance'',''Opening Balance Deposit'')',
'AND A.IS_INVOICE = ''Y''',
'AND A.AMOUNT_LOCAL_CURRENCY <> ABS(A.TOTAL_CN) ',
'GROUP BY ',
'TO_DATE(A.PAYMENT_DUE_DATE),',
'TO_DATE(A.TRANSACTION_DATE),',
'A.INVOICE_NUMBER,',
'A.PROGRAMME_CODE,',
'A.PROGRAMME_NAME,',
'A.STUDY_INTAKE,',
'A.ACADEMIC_SEMESTER,',
'A.PHYSICAL_SEMESTER,',
'A.INVOICE_KEY,',
'A.CAMPUS_KEY,',
'A.TRANSACTION_TYPE,',
'A.AMOUNT_BEFORE_TAX,',
'A.TAX_AMOUNT,',
'A.TAX_RATE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Student<BR>Statement '
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCC4 Student Statement'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;">',
'        This page displays the student''s billing statement, similar to the statement available in the Student Portal. It includes invoices, payments received, outstanding balances, due dates, and transaction history. You may also print the billing st'
||'atement or a detailed billing breakdown.',
'    </p>',
'',
'</div>'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(846726519387219731)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>819670561659394002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987182787215662)
,p_db_column_name=>'AMOUNT_BEFORE_TAX'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Amount Before Tax'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195562801839996237)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92747122070109213)
,p_db_column_name=>'DAYS_DUE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Days Due'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92745529884109213)
,p_db_column_name=>'INVOICE_BALANCE_DUE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Invoice Balance Due'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195562757659996236)
,p_db_column_name=>'INVOICE_KEY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Invoice Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92743936311109212)
,p_db_column_name=>'INVOICE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Invoice Number'
,p_column_link=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_INVOICE.&_repFormat=pdf&_repLocale=en_US&_dataSource=&GLO_JASPERCMDKEY.&P1=&GLO_INSTITUTE_KEY.&P2=#CAMPUS_KEY#&P3=#INVOICE_KEY#&P5=#JASPER_CHECKSUM#''));'
,p_column_linktext=>'#INVOICE_NUMBER#'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(594511759979841547)
,p_db_column_name=>'JASPER_CHECKSUM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Jasper Checksum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92743067885109212)
,p_db_column_name=>'PAYMENT_DUE_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Payment Due Date'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92745936780109213)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Programme Code'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92746321297109213)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Programme Name'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92746703048109213)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Semester'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987270803215663)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785987360214215664)
,p_db_column_name=>'TAX_RATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tax Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92745065067109212)
,p_db_column_name=>'TOTAL_COLLECTED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Collected'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92744738510109212)
,p_db_column_name=>'TOTAL_NET_TO_PAY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Net To Pay'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92744304160109212)
,p_db_column_name=>'TRANSACTION_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Transaction Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92743540673109212)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Transaction Date'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(846775261350552570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656915'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:INVOICE_NUMBER:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:PAYMENT_DUE_DATE:DAYS_DUE:AMOUNT_BEFORE_TAX:TAX_AMOUNT:TAX_RATE'
,p_sum_columns_on_break=>'TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(719952732862505403)
,p_plug_name=>'Student Detail'
,p_static_id=>'student-detail'
,p_parent_plug_id=>wwv_flow_imp.id(720493106444943325)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720493106444943325)
,p_plug_name=>'Student Details'
,p_static_id=>'student-details'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629055982833987609)
,p_plug_name=>'Student Immigration Records'
,p_static_id=>'student-immigration-records'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_read_only_when_type=>'FUNCTION_BODY'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(719953592329505412)
,p_plug_name=>'Student Information'
,p_static_id=>'student-information'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(332178163591955945)
,p_name=>'Student Ledger / Statement'
,p_static_id=>'student-ledger-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(256984070185278003)
,p_template=>4502917002193490937
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'transaction_date, ',
'transaction_type,',
'transaction_number||instalment as transaction_number,',
'amount_local_currency,',
'type_of_fees,  ',
'MOP,',
'( select sum(amount_local_currency)',
'    from student_fee_master',
'    where STUDENT_KEY = A.STUDENT_KEY',
'    AND SFM_KEY <= A.SFM_KEY ) AS RUNNING_BALANCE,',
'',
'''Details'' as det,',
'sfm_key,',
'remarks,',
'A.FROM_BANK,',
'A.REFERENCE_NO,',
'A.STUDY_INTAKE SEMESTER,',
'A.AMOUNT_BEFORE_TAX,',
'A.TAX_AMOUNT,',
'A.TAX_RATE',
'',
'from V_STUDENT_STATEMENT0 A --student_fee_master A',
'where student_key = :P648_STUDENT_KEY',
'',
'ORDER BY SFM_KEY',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DCD6 Student Ledger / Statement'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0 0 10px 0;">',
'        This page displays the complete financial ledger for the student, including all invoices, credit notes, discounts, scholarships, payments, refunds, and other financial transactions. The running balance is updated after each transaction to sho'
||'w the student''s current outstanding balance or overpayment.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.4;',
'        margin:0;',
'        color:#B00020;">',
unistr('        <b>Balance Calculation:</b> Invoice \2212 Credit Note \2212 Discount \2212 Scholarship \2212 Payment \2212 Refund = Outstanding Balance / Overpayment'),
'    </p>',
'',
'</div>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(785986797004215659)
,p_query_column_id=>14
,p_column_alias=>'AMOUNT_BEFORE_TAX'
,p_column_display_sequence=>130
,p_column_heading=>'Amount Before Tax'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92784481289109229)
,p_query_column_id=>4
,p_column_alias=>'AMOUNT_LOCAL_CURRENCY'
,p_column_display_sequence=>80
,p_column_heading=>'Amount Local Currency'
,p_column_format=>'999,999,999.99'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(209218199897471672)
,p_query_column_id=>8
,p_column_alias=>'DET'
,p_column_display_sequence=>30
,p_column_heading=>'Details'
,p_column_link=>'f?p=&APP_ID.:897:&SESSION.::&DEBUG.:897:P897_SFM_KEY,P897_FROM_PAGE:#SFM_KEY#,648'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553931352809636)
,p_query_column_id=>11
,p_column_alias=>'FROM_BANK'
,p_column_display_sequence=>101
,p_column_heading=>'From Bank'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92786553673109229)
,p_query_column_id=>6
,p_column_alias=>'MOP'
,p_column_display_sequence=>100
,p_column_heading=>'Mode Of Payment'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60553533748809632)
,p_query_column_id=>12
,p_column_alias=>'REFERENCE_NO'
,p_column_display_sequence=>102
,p_column_heading=>'Reference No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(595973862946467323)
,p_query_column_id=>10
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>120
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92791340249109231)
,p_query_column_id=>7
,p_column_alias=>'RUNNING_BALANCE'
,p_column_display_sequence=>90
,p_column_heading=>'Running Balance'
,p_column_format=>'999,999,999.99'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60554249867809639)
,p_query_column_id=>13
,p_column_alias=>'SEMESTER'
,p_column_display_sequence=>110
,p_column_heading=>'Semester'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92779703263109227)
,p_query_column_id=>9
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(785986919632215660)
,p_query_column_id=>15
,p_column_alias=>'TAX_AMOUNT'
,p_column_display_sequence=>140
,p_column_heading=>'Tax Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(785986996952215661)
,p_query_column_id=>16
,p_column_alias=>'TAX_RATE'
,p_column_display_sequence=>150
,p_column_heading=>'Tax Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92780942936109227)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Transaction Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92782548994109228)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_NUMBER'
,p_column_display_sequence=>60
,p_column_heading=>'Transaction Number'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92781659693109228)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Transaction Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92782920091109228)
,p_query_column_id=>5
,p_column_alias=>'TYPE_OF_FEES'
,p_column_display_sequence=>70
,p_column_heading=>'Type Of Fees'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833148600523924746)
,p_plug_name=>'Student Outstanding Barring'
,p_static_id=>'student-outstanding-barring'
,p_parent_plug_id=>wwv_flow_imp.id(332188563238957436)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SFB_KEY,',
'       STUDENT_KEY,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       LAST_UPDATED_BY,',
'       LAST_UPDATED_DATE,',
'       STATUS,',
'       CAMPUS_KEY,',
'       INSTITUTE_KEY,',
'       REMARKS,',
'       ( select student_name from student_profile where student_key = XX.student_key ) as STUDENT_NAME,',
'       BAR_KEY,',
'       UNBAR,',
'       (CASE WHEN XX.STATUS = ''Barred'' AND XX.UNBAR = ''N'' THEN',
'            ''Unbar''',
'        ELSE',
'            NULL',
'        END) as VIEWING,',
'        SEMESTER,',
'        (CASE',
'            WHEN XX.STATUS = ''Barred'' AND XX.IS_AUTOBARRING = ''Y'' THEN',
'                ''Yes''',
'            WHEN XX.STATUS = ''Unbarred'' AND XX.IS_AUTOUNBARRING = ''Y'' THEN',
'                ''Yes''',
'        ELSE',
'            ''No''',
'        END) AUTO_BARRED_UNBARRED',
'  from STUDENT_FEE_BARRING XX',
' where student_key = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Student Outstanding Barring'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(851334385872743704)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'HTML:XLSX'
,p_enable_mail_download=>'Y'
,p_internal_uid=>824278428144917975
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618963420247071447)
,p_db_column_name=>'AUTO_BARRED_UNBARRED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Auto By System'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92803858779109237)
,p_db_column_name=>'BAR_KEY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Bar Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92802324972109236)
,p_db_column_name=>'CAMPUS_KEY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Campus Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92800738822109235)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92800264459109235)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92802684742109236)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
end;
/
begin
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92801152571109235)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92801466061109236)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92803147017109236)
,p_db_column_name=>'REMARKS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618963308666071446)
,p_db_column_name=>'SEMESTER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92799543096109235)
,p_db_column_name=>'SFB_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sfb Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92801925641109236)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92799858995109235)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92803488778109236)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92804325832109237)
,p_db_column_name=>'UNBAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Unbar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92804682264109237)
,p_db_column_name=>'VIEWING'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:1057:&SESSION.::&DEBUG.:1057:P1057_SFB_KEY,P1057_STATUS:#SFB_KEY#,Unbarred'
,p_column_linktext=>'#VIEWING#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(851359837821824818)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657491'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VIEWING:STUDENT_NAME:CREATED_DATE:CREATED_BY:STATUS:SEMESTER:REMARKS:AUTO_BARRED_UNBARRED'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(624503217097460421)
,p_plug_name=>'Student Outstanding Barring Whitelist Request'
,p_static_id=>'student-outstanding-barring-whitelist-request'
,p_parent_plug_id=>wwv_flow_imp.id(332188563238957436)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.SFBW_KEY,',
'    A.INSTITUTE_KEY,',
'    A.STUDENT_KEY,',
'    A.NUMBER_OF_DAYS,',
'    A.DATE_FROM,',
'    A.DATE_TO,',
'    A.REMARKS,',
'    A.CREATED_BY,',
'    A.CREATED_DATE,',
'    A.LAST_UPDATED_BY,',
'    A.LAST_UPDATED_DATE,',
'    A.WHITELIST_STATUS,',
'    A.COMPLETED_BY,',
'    A.COMPLETED_DATE,',
'    A.CANCELLED_BY,',
'    A.CANCELLED_DATE,',
'    A.CANCELLED_REASON,',
'    (CASE WHEN A.WHITELIST_STATUS = ''Active'' THEN',
'        ''Cancel''',
'    END) ACTION',
'FROM STUDENT_FEE_BARRING_WHITELIST A',
'WHERE A.STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Student Outstanding Barring Whitelist Request'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'To use this feature, please ensure that the ''Auto Unbarring'' setting is switched on. Once enabled, the system will check every 30 minutes and automatically unbar the student if they have been barred.',
'<br><br>'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(624503357667460422)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'HTML:XLSX'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1058:&SESSION.::&DEBUG.:1058:P1058_SFBW_KEY:#SFBW_KEY#'
,p_detail_link_text=>'View'
,p_internal_uid=>622697967883261202
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624505172764460440)
,p_db_column_name=>'ACTION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:1058:&SESSION.::&DEBUG.:1058:P1058_SFBW_KEY,P1058_IS_CANCELLED:#SFBW_KEY#,Y'
,p_column_linktext=>'#ACTION#'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504827709460437)
,p_db_column_name=>'CANCELLED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cancelled By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504986531460438)
,p_db_column_name=>'CANCELLED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cancelled Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624505072084460439)
,p_db_column_name=>'CANCELLED_REASON'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cancelled Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504676320460435)
,p_db_column_name=>'COMPLETED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Completed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504695575460436)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504126359460430)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504283457460431)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503827110460427)
,p_db_column_name=>'DATE_FROM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date From'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503989638460428)
,p_db_column_name=>'DATE_TO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date To'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503569591460424)
,p_db_column_name=>'INSTITUTE_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Institute Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504359697460432)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504467754460433)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503728934460426)
,p_db_column_name=>'NUMBER_OF_DAYS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Number Of Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504014914460429)
,p_db_column_name=>'REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503412109460423)
,p_db_column_name=>'SFBW_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sfbw Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624503652743460425)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(624504546656460434)
,p_db_column_name=>'WHITELIST_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(624514129347474461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6227088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTION:NUMBER_OF_DAYS:DATE_FROM:DATE_TO:WHITELIST_STATUS:REMARKS:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252957983277489601)
,p_plug_name=>'STUDENT PROFILE'
,p_static_id=>'student-profile'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>21
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    PROFILE_CREATION_DATE,',
'    PROFILE_CREATED_BY,',
'    STUDENT_NAME,',
'    SALUTATION,',
'    FAMILY_NAME,',
'    GIVEN_NAME,',
'    IC_PASSPORT,',
'    E_MAIL,',
'    STUDENT_MOBILE_NO,',
'    CURRENT_PROFILE_STATUS,',
'    STUDENT_CURRENT_OCCUPATION,',
'    STUDENT_TYPE,',
'    STUDENT_TYPE_SUB_CATAGORY,',
'    STUDENT_PROFILE_REMARKS,',
'    APPLICATION_NO,',
'    MARITAL_STATUS,',
'    SEX,',
'    DATE_OF_BIRTH,',
'    PLACE_OF_BIRTH,',
'    RELIGION,',
'    AGENT_INTRODUCE,',
'    TOTAL_PARENT_INCOME,',
'    FUNDING,',
'    DISABILITIES,',
'    DISABILITIES_REMARK,',
'    -- FIRST_PROGRAMME_ENROLL_DATE,',
'    INTRO_BY_STUDENT_IC,',
'    NATIONAL_SERVICE,',
'    NATIONAL_SERVICE_BATCH_NO,',
'    FUTURE_CAREER_OPTION,',
'    -- FIRST_POIN_OF_CONTACT,',
'    ACADEMIC_LEVEL_ENTRY_YEAR,',
'    ACADEMIC_LEVEL_DURING_ENTRY,',
'    LOCAL_OVERSEAS_STUDENT,',
'    CONCLUDED_BY,',
'    AREA_OF_INTEREST,',
'    HOW_DO_YOU_KNOW_US,',
'    STUDENT_KEY,',
'    LAST_UPDATED_DATE,',
'    LAST_UPDATED_BY,',
'    CAMPUS_KEY,',
'    MAJOR_ILLNESSES,',
'    SPECIAL_ABILITIES,',
'    STUDENT_NUMBER,',
'    VIP,',
'    NAME_TO_PRINT,',
'    MATRIX_NUMBER,',
'    ALUMNI_MEMBER,',
'    STUDENT_BANK_NAME,',
'    STUDENT_BANK_ACC_NO,',
'    FROM_MODULE,',
'    IC_TYPE,',
'    RACE,',
'    NATIONALITY_ID,',
'    COUNTRY_FROM_ID,',
'    INSTITUTE_KEY,',
'    INTRODUCER_TYPE,',
'    INTRODUCER_NAME,',
'    AREA_OF_INTEREST2,',
'    HOSTEL_ACCOMODATION,',
'    INCOME_RANGE,',
'    E_MAIL2,',
'    CRIMINAL_CONVICTION,',
'    ENGLISH_PROFICIENCY,',
'    HOW_TO_PAY,',
'    DATA_PROTECTION,',
'    DISABILITY_FURTHERS_DETAILS,',
'    CRIMINAL_FURTHERS_DETAILS,',
'    STUDENT_PASS_NO,',
'    TYPE_OF_STUDENT,',
'    MARKETING_CODE,',
'    REMARKS,',
'    CARDPAN,',
'    CAMPAIGN_KEY,',
'    LEAD_REGISTER_BY_CAMPUS_KEY,',
'    PROGRAMME_INTERESTED1,',
'    PROGRAMME_INTERESTED2,',
'    PROGRAMME_INTERESTED3,',
'    LEAD_FROM,',
'    SCHOOL_COUNTRY_ID,',
'    SCHOOL_STATE_KEY,',
'    SCHOOL_NAME,',
'    PREVIOUS_SCHOOL_NAME,',
'    SCHOOL_STREAMS,',
'    SCHOOL_TYPE,',
'    AGENCY_MASTER_KEY,',
'    LEAD_SCORING,',
'    LEAD_STATUS,',
'    LEAD_SOURCE,',
'    IS_APPLY_FOR_SCHOLARSHIP,',
'    IS_IDP,',
'    ID_TYPE,',
'    ID_NUMBER,',
'    -- FIRST_PROGRAMME_ENROLLED,',
'    -- FIRST_PROGRAMME_STUDY_INTAKE,',
'    -- UCSI_FIRST_PROGRAMME_APPLY,',
'    UCSI_LEADING_TO,',
'    -- UCSI_FIRST_INTAKE,',
'    UCSI_PRORAMME_MODE,',
'    UCSI_PASSPORT_NO,',
'    UCSI_PASSPORT_ISSUE,',
'    UCSI_PASSPORT_ISSUE_DATE,',
'    UCSI_PASSPORT_EXPIRE_DATE,',
'    COR_ADDRESS,',
'    COR_CITY,',
'    COR_POST_CODE,',
'    COR_STATE,',
'    COR_COUNTRY,',
'    PER_ADDRESS,',
'    PER_CITY,',
'    PER_POST_CODE,',
'    PER_STATE,',
'    PER_COUNTRY_ID,',
'    PERMENANT_SAME,',
'    MAJOR_ILLNESSES_TYPE,',
'    UCSI_PERMENANT_RESIDENT,',
'    UCSI_PR_NUMBER,',
'    UCSI_PASS,',
'    UCSI_PASS_TYPE,',
'    UCSI_PASS_EXPIRY_DATE,',
'    UCSI_OTHER_INSTITUTEION,',
'    UCSI_OTHER_INS_NAME,',
'    HOSTEL_BLOCK_APPLY,',
'    HOSTEL_TYPE_APPLY,',
'    UCSI_LAST_SEM,',
'    UCSI_LAST_STUDENT_ID,',
'    -- UCSI_FIRST_PROGRAMME_TYPE,',
'    ENGLISH_SCORE,',
'    SECONDARY_EDUCATION,',
'    SECONDARY_EDUCATION_TYPE,',
'    SECONDARY_EDUCATION_YEAR,',
'    SECONDARY_EDUCATION_COUNTRY,',
'    SECONDARY_EDUCATION_SCHOOL,',
'    RACE_OTHERS,',
'    A_LEVEL_EDUCATION_TYPE,',
'    A_LEVEL_YEAR,',
'    A_LEVEL_COUNTRY,',
'    A_LEVEL_SCHOOL,',
'    UCSI_PASS_TYPE_OTHERS,',
'    A_LEVEL_CGPA,',
'    O_LEVEL_CGPA,',
'    ETHNICITY_OTHER,',
'    RELIGION_OTHER,',
'    OKU_NUMBER,',
'    CONTACT_NO,',
'    SECONDARY_EDUCATION_HIGHEST,',
'    A_LEVEL_HIGHEST,',
'    IS_TRIAL_RESULT,',
'    IS_TRIAL_RESULT_A,',
'    COLLABORATION_PARTNER_ID,',
'    IS_COLLABORATION_STUDENT,',
'    UCSI_HOLD_P_RESIDENT_PASS,',
'    UCSI_P_RESIDENT_NUM,',
'    IS_CROSS_INSTITUTION,',
'    CROSS_INSTITUTION_ID,',
'    COUNSELOR_KEY,',
'    VOTING_STATE,',
'    PARLIMEN,',
'    DUN',
'FROM STUDENT_PROFILE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(811280597495723008)
,p_plug_name=>'Student Profile'
,p_static_id=>'student-profile-2'
,p_parent_plug_id=>wwv_flow_imp.id(546689109366748242)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'ARRIVAL_STATUS,',
'-- ARRIVAL_REMARKS,',
'IO_DATE_REPORTED,',
'STUDENT_MOBILE_NO,',
'BRIEFING_DATE,',
'HEALTH_EXAMINATION_DATE,',
'PASSPORT_SUBMISSION_DATE,',
'ENTRY_VISA_EXPIRY_DATE,',
'STUDENT_KEY',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(811280769242723010)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>784224811514897281
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92581722046109141)
,p_db_column_name=>'ARRIVAL_STATUS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Arrival Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92582865930109141)
,p_db_column_name=>'BRIEFING_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Briefing Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92584063499109142)
,p_db_column_name=>'ENTRY_VISA_EXPIRY_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Entry Visa Expiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92583261254109141)
,p_db_column_name=>'HEALTH_EXAMINATION_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Health Examination Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92582066838109141)
,p_db_column_name=>'IO_DATE_REPORTED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'IO Date Reported'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92583736189109141)
,p_db_column_name=>'PASSPORT_SUBMISSION_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Passport Submission Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92581357412109141)
,p_db_column_name=>'STUDENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92582491530109141)
,p_db_column_name=>'STUDENT_MOBILE_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Student Mobile No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(811306943589683522)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655285'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:ARRIVAL_STATUS:IO_DATE_REPORTED:STUDENT_MOBILE_NO:BRIEFING_DATE:HEALTH_EXAMINATION_DATE:PASSPORT_SUBMISSION_DATE:ENTRY_VISA_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196876124259221608)
,p_plug_name=>'STUDENT PROFILE '
,p_static_id=>'student-profile_1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="padding:10px 0;">',
'',
'    <div style="',
'        font-size:22px;',
'        font-weight:700;',
'        color:#B00020;',
'        margin:0 0 12px 0;">',
unistr('        \D83D\DC68\200D\D83C\DF93 Student Profile Management'),
'    </div>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.5;',
'        margin:0 0 12px 0;">',
'        This page is the central repository for all student information within the system. It provides a comprehensive student profile, including personal details, identification, contact information, academic records, programme enrolment, course reg'
||'istration, examinations, finance, sponsorships, documents, and other related information through the available tabs.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.5;',
'        margin:0 0 12px 0;">',
'        Since many university modules rely on the information maintained here, it is important to ensure that student records are accurate and kept up to date. Maintaining complete and correct information helps support admissions, class registration,'
||' examinations, finance, reporting, student services, and other administrative processes.',
'    </p>',
'',
'    <p style="',
'        font-size:14px;',
'        line-height:1.5;',
'        margin:0;',
'        color:#B00020;">',
'        <b>Note:</b> Changes made to the student''s profile may affect multiple modules throughout the system. Please verify all information carefully before saving your changes.',
'    </p>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720011543767716712)
,p_plug_name=>'Student Record Documents'
,p_static_id=>'student-record-documents'
,p_parent_plug_id=>wwv_flow_imp.id(719952592071505402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720491728510943311)
,p_plug_name=>'Student Visa Records'
,p_static_id=>'student-visa-records'
,p_parent_plug_id=>wwv_flow_imp.id(720296349638403727)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_DOCUMENT_KEY,',
'CREATED_DATE,',
'CREATED_BY,',
'IMAGE_FILE_NAME,',
'DOCUMENT_DESCRIPTION,',
':G_FILE_PATH||BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING',
'WHERE DOCUMENT_TYPE IN (''Visa Page'', ''Attachment For Student Pass'', ''Indemnity Form'')',
'-- AND FK_KEY = :P744_IMMI_VISA_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Student Visa Records'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720491792025943312)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>693435834298117583
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92632755635109162)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92632312331109162)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92633530404109162)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92633116929109162)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="blank"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92631956544109162)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(458206062847129521)
,p_db_column_name=>'URL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720520135825105573)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655779'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712106109228805526)
,p_plug_name=>'Tertiary/Professional Qualification(s)'
,p_static_id=>'tertiary-professional-qualification-s'
,p_parent_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STUD_QUAL_KEY, ',
'       QUALIFICATION,',
'       YEAR_ATTENDED,',
'       GRADE,',
'       RESULT_FOCAST,',
'       STATE,',
'       ENGLISH_TEST,',
'       STUDENT_KEY,',
'       CGPA_ACHIEVED,',
'       QUALIFICATION_SCHOOL_COUNTRY,',
'       HIGHEST_QUALIFICATION,',
'       TYPE_OF_QUALIFICATION,',
'       SCHOOL_NAME,',
'       EDUCATION_TYPE,',
'       ''Add Course'' course',
'       ',
'  from STUDENT_QUALIFICATION',
'  where student_key = :P648_STUDENT_KEY',
'  and nvl(EDUCATION_TYPE,'' '') = ''Tertiary'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tertiary/Professional Qualification(s)'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107716441805542)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107764993805543)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107032258805535)
,p_name=>'CGPA_ACHIEVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CGPA_ACHIEVED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Result<br>(CGPA or %)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(110611172110073503)
,p_name=>'COURSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Course'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:1096:&SESSION.::&DEBUG.:1096:P1096_STUD_QUAL_KEY,P1096_STUDENT_KEY:&STUD_QUAL_KEY.,&STUDENT_KEY.'
,p_link_text=>'&COURSE.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107582141805541)
,p_name=>'EDUCATION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDUCATION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Tertiary'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106794281805533)
,p_name=>'ENGLISH_TEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENGLISH_TEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106471396805530)
,p_name=>'GRADE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107159150805537)
,p_name=>'HIGHEST_QUALIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIGHEST_QUALIFICATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Highest<br>Qualification'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106332793805528)
,p_name=>'QUALIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name Of Award<br>Examination'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107116939805536)
,p_name=>'QUALIFICATION_SCHOOL_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_SCHOOL_COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106650477805531)
,p_name=>'RESULT_FOCAST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT_FOCAST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Forecast<br>Result ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107470070805540)
,p_name=>'SCHOOL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHOOL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'University / College'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106736882805532)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106898352805534)
,p_name=>'STUDENT_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDENT_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P648_STUDENT_KEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107416594805539)
,p_name=>'STUD_QUAL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUD_QUAL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712107259849805538)
,p_name=>'TYPE_OF_QUALIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_OF_QUALIFICATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Education Level'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as dis,',
'field_value as return',
'',
'from v_setup_detail',
'where field_name = ''EDUCATION_LEVEL''',
'and institute_key = :glo_institute_key',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(712106407059805529)
,p_name=>'YEAR_ATTENDED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR_ATTENDED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Year<br>Completed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(712106239738805527)
,p_internal_uid=>685050282010979798
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config)',
'{',
'    config.initActions = function(actions) { actions.remove("row-duplicate"); };',
'    ',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(712187020343145591)
,p_interactive_grid_id=>wwv_flow_imp.id(712106239738805527)
,p_static_id=>'5554469'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(712187201944145591)
,p_report_id=>wwv_flow_imp.id(712187020343145591)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(110659458611288219)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(110611172110073503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712187745024145594)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(712106332793805528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712188608927145598)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(712106407059805529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712189472989145601)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(712106471396805530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712190447837145604)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(712106650477805531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712191273206145607)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(712106736882805532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712192240007145609)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(712106794281805533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712193077693145612)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(712106898352805534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712193984653145615)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(712107032258805535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712194907089145618)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(712107116939805536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712195849964145621)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(712107159150805537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712196723334145624)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(712107259849805538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712197630368145627)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(712107416594805539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712198521610145630)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(712107470070805540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712199422742145633)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(712107582141805541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(712200342884145635)
,p_view_id=>wwv_flow_imp.id(712187201944145591)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(712107716441805542)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(817053513555542036)
,p_plug_name=>'Time Tabling'
,p_static_id=>'time-tabling'
,p_parent_plug_id=>wwv_flow_imp.id(254585728302192322)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629027663459875502)
,p_plug_name=>'VAL Application'
,p_static_id=>'val-application'
,p_parent_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMMI_VA_KEY,',
'(SELECT A.PROGRAMME_NAME FROM PROGRAMME_MASTER A',
'  WHERE A.PROGRAMME_ID = C.PROGRAMME_ID) PROGRAMME_NAME,',
'(SELECT A.PROGRAMME_CODE FROM PROGRAMME_MASTER A',
'  WHERE A.PROGRAMME_ID = C.PROGRAMME_ID) PROGRAMME_CODE,',
'(SELECT A.STUDY_INTAKE FROM COURSE_APPLIED A',
'  WHERE A.COURSE_APPLIED_KEY = C.COURSE_APPLIED_KEY) STUDY_INTAKE,',
'',
'DOC_RECEIVED_DATE,',
'APPROVAL_DATE VAL_APPROVAL_DATE,',
'VAL_EXPIRY_DATE,',
'VAL_REF_NO,',
'REJECTED_DATE VAL_REJECTED_DATE,',
'IS_ACTIVE',
'FROM IMMIGRATION_VAL_APPLICATION C',
'WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY IS_ACTIVE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(629027933240875504)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'Y'
,p_internal_uid=>601971975513049775
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92559133282109131)
,p_db_column_name=>'DOC_RECEIVED_DATE'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Received'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92558715157109130)
,p_db_column_name=>'IMMI_VA_KEY'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:743:&SESSION.::&DEBUG.:743:P743_IMMI_VA_KEY:#IMMI_VA_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92562304074109132)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(280662799845415093)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92560310272109131)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>30
,p_column_identifier=>'R'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92560702953109131)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>40
,p_column_identifier=>'S'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92561144142109131)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>50
,p_column_identifier=>'T'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92561542865109131)
,p_db_column_name=>'VAL_APPROVAL_DATE'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Approval'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92559546080109131)
,p_db_column_name=>'VAL_EXPIRY_DATE'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Expiry'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92559911635109131)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Reference No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92561954428109132)
,p_db_column_name=>'VAL_REJECTED_DATE'
,p_display_order=>110
,p_column_identifier=>'V'
,p_column_label=>'Rejected'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(629049345733909680)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655067'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_VA_KEY:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:VAL_REF_NO:DOC_RECEIVED_DATE:VAL_APPROVAL_DATE:VAL_REJECTED_DATE:VAL_EXPIRY_DATE:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(345855588304380410)
,p_plug_name=>'Visa Application'
,p_static_id=>'visa-application'
,p_parent_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMMI_VISA_KEY,',
'VISA_EXPIRY_DATE,',
'-- ADD_MONTHS(VISA_EXPIRY_DATE, IMMI_VISA_DURATION)  VISA_EXPIRY_DATE,',
'VISA_TYPE,',
'I_CARD_NO,',
'I_CARD_END_DATE,',
'I_CARD_COLLECT_DATE,',
'I_CARD_RETURN_DATE,',
'(CASE WHEN IMMI_VA_KEY IS NOT NULL THEN (SELECT VAL_REF_NO FROM IMMIGRATION_VAL_APPLICATION WHERE IMMI_VA_KEY = A.IMMI_VA_KEY) END) VAL_REF_NO,',
'',
'(SELECT DISTINCT B.CUSTOMER_NAME||'' - ''||(SELECT DEPARTMENT_NAME FROM DEPARTMENT_SETUP WHERE DEPARTMENT_KEY = B.DEPARTMENT_KEY)',
'     FROM CUSTOMER B WHERE CUSTOMER_KEY = A.CARD_COLLECT_HANDLE_KEY)CARD_COLLECTION_HANDLED_BY,',
'SENT_REMINDER',
'',
'FROM IMMIGRATION_VISA A',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(345855778243380412)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Records Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_internal_uid=>318799820515554683
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149134872392858140)
,p_db_column_name=>'CARD_COLLECTION_HANDLED_BY'
,p_display_order=>110
,p_column_identifier=>'AI'
,p_column_label=>'Card Collection Handled By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554448711109129)
,p_db_column_name=>'IMMI_VISA_KEY'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:744:&SESSION.::&DEBUG.:744:P744_IMMI_VISA_KEY:#IMMI_VISA_KEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555972223109129)
,p_db_column_name=>'I_CARD_COLLECT_DATE'
,p_display_order=>60
,p_column_identifier=>'Z'
,p_column_label=>'i-Kad Collected'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555636916109129)
,p_db_column_name=>'I_CARD_END_DATE'
,p_display_order=>50
,p_column_identifier=>'Y'
,p_column_label=>'i-Kad Expiry'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92555205491109129)
,p_db_column_name=>'I_CARD_NO'
,p_display_order=>40
,p_column_identifier=>'X'
,p_column_label=>'i-Kad No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92556457695109129)
,p_db_column_name=>'I_CARD_RETURN_DATE'
,p_display_order=>70
,p_column_identifier=>'AA'
,p_column_label=>'i-Kad Returned'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149134420395858136)
,p_db_column_name=>'SENT_REMINDER'
,p_display_order=>100
,p_column_identifier=>'AG'
,p_column_label=>'Sent Reminder'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820153101305101)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>80
,p_column_identifier=>'AE'
,p_column_label=>'VAL Reference No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92556809917109129)
,p_db_column_name=>'VISA_EXPIRY_DATE'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>'Visa Expiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92554769942109129)
,p_db_column_name=>'VISA_TYPE'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Visa Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(586134497557164065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655012'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_VISA_KEY:VISA_TYPE:VISA_EXPIRY_DATE:I_CARD_NO:I_CARD_COLLECT_DATE:CARD_COLLECTION_HANDLED_BY:VAL_REF_NO:SENT_REMINDER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720492409904943318)
,p_plug_name=>'Visa Approval Letter'
,p_static_id=>'visa-approval-letter'
,p_parent_plug_id=>wwv_flow_imp.id(720296349638403727)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDENT_DOCUMENT_KEY,',
'CREATED_DATE,',
'CREATED_BY,',
'IMAGE_FILE_NAME,',
'DOCUMENT_DESCRIPTION,',
':G_FILE_PATH||BFILE_IDENTIFIER_ID URL',
'FROM STUDENT_DOCUMENT_IMAGING',
'WHERE DOCUMENT_TYPE = ''Visa Approval Letter''',
'AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'-- AND FK_KEY = :P743_IMMI_VA_KEY',
'AND STUDENT_KEY = :P648_STUDENT_KEY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Visa Approval Letter'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(720492491757943319)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>693436534030117590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92635398037109163)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92635005693109163)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92636223718109164)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92635853138109163)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'File Name'
,p_column_link=>'#URL#'
,p_column_linktext=>'#IMAGE_FILE_NAME#'
,p_column_link_attr=>'target="blank"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92634559816109163)
,p_db_column_name=>'STUDENT_DOCUMENT_KEY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(458206157015129522)
,p_db_column_name=>'URL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(720537200818198720)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655806'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263625469461696359)
,p_plug_name=>'Voting Information'
,p_static_id=>'voting-information'
,p_parent_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Click <a href="https://mysprsemak.spr.gov.my/semakan/daftarPemilih" target="_blank">here</a> to verify and update  your voting details ',
'<a href="https://mysprsemak.spr.gov.my/semakan/daftarPemilih" target="_blank">https://mysprsemak.spr.gov.my/semakan/daftarPemilih</a>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92805471183109237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833148600523924746)
,p_button_name=>'ADD'
,p_static_id=>'add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1057:&SESSION.::&DEBUG.:1057:P1057_STUDENT_KEY,P1057_CAMPUS,P1057_STATUS:&P648_STUDENT_KEY.,&P648_CAMPUS_KEY.,Barred'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92675539421109182)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(851386565503864146)
,p_button_name=>'ADD_ATT_N'
,p_static_id=>'add-att-n'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:940:&SESSION.::&DEBUG.:940:P940_INSTITUTE_KEY,P940_STUDENT_KEY,P940_DOCUMENT_TYPE:&P648_INSTITUTE_KEY.,&P648_STUDENT_KEY.,Notes Attachment'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAH6''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92619133997109156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(720298310429403747)
,p_button_name=>'ADD_ATTACHMENT_1'
,p_static_id=>'add-attachment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:687:&SESSION.::&DEBUG.:687:P687_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92530020312109118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(333343257937072303)
,p_button_name=>'ADD_ATTACHMENT'
,p_static_id=>'add-attachment-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:687:&SESSION.::&DEBUG.:687:P687_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHQ''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133564245165871944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133559900228871901)
,p_button_name=>'add_exit_stamp'
,p_static_id=>'add-exit-stamp'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Exit Stamp'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1125:&SESSION.::&DEBUG.:1125:P1125_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32360458212462396)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(254584604953192311)
,p_button_name=>'ADD_G'
,p_static_id=>'add-g'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Guardian'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1049:&SESSION.::&DEBUG.:1049:P1049_SK,P1049_IS_HAS_SIBLING:&P648_STUDENT_KEY.,N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92487008889109098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(743833997435993002)
,p_button_name=>'ADD_GRADES_WITHELD'
,p_static_id=>'add-grades-witheld'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:865:&SESSION.::&DEBUG.:865:P865_STUDENT_KEY,P865_WITHELD_BY_DEPARTMENT:&P648_STUDENT_KEY.,Registrar Office'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHM''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92492511417109101)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(743835593268993018)
,p_button_name=>'ADD_GRADES_WITHELD1'
,p_static_id=>'add-grades-witheld-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:865:&SESSION.::&DEBUG.:865:P865_STUDENT_KEY,P865_WITHELD_BY_DEPARTMENT:&P648_STUDENT_KEY.,Finance Office'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHM''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92753846872109216)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(256984372162278006)
,p_button_name=>'ADD_INVOICE'
,p_static_id=>'add-invoice'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Invoice'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:649:&SESSION.::&DEBUG.:649:P649_STUDENT_KEY,P649_CAMPUS_KEY:&P648_STUDENT_KEY.,&P648_CAMPUS_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92534747778109120)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(333343299238072304)
,p_button_name=>'ADD_NOTES'
,p_static_id=>'add-notes'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Notes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:686:&SESSION.::&DEBUG.:686:P686_STUDENT_KEY,P686_DIARY_TYPE:&P648_STUDENT_KEY.,REGISTRAR'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHQ''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92667988263109179)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(755722923198416134)
,p_button_name=>'ADD_NOTES_1'
,p_static_id=>'add-notes-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Notes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:686:&SESSION.::&DEBUG.:686:P686_STUDENT_KEY,P686_DIARY_TYPE:&P648_STUDENT_KEY.,FINANCE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAH6''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92569262415109135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(629029693002875522)
,p_button_name=>'ADD_NVISA'
,p_static_id=>'add-nvisa'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:760:&SESSION.::&DEBUG.:760:P760_STUDENT_KEY,P760_FROM_PAGE,P760_IMMI_DOC_KEY,P760_IMMI_STUDENT_KEY:&P648_STUDENT_KEY.,648,&P648_IMMI_DOC_KEY.,&P648_IMMI_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92566568579109134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(629028716210875512)
,p_button_name=>'ADD_OVISA'
,p_static_id=>'add-ovisa'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:745:&SESSION.::&DEBUG.:745:P745_STUDENT_KEY,P745_IMMI_DOC_KEY,P745_IMMI_STUDENT_KEY:&P648_STUDENT_KEY.,&P648_IMMI_DOC_KEY.,&P648_IMMI_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92543222036109124)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(546689236561748243)
,p_button_name=>'ADD_SAP'
,p_static_id=>'add-sap'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add '
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_STUDENT_KEY,P13_FROM_PAGE:&P648_STUDENT_KEY.,648'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92546270028109125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(548691367963239941)
,p_button_name=>'ADD_SIC'
,p_static_id=>'add-sic'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:769:&SESSION.::&DEBUG.::P769_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92644902643109168)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(812467024495471603)
,p_button_name=>'ADD_SIC_1'
,p_static_id=>'add-sic-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:769:&SESSION.::&DEBUG.::P769_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AARN''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92539278131109122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(511113583868456317)
,p_button_name=>'ADD_SP'
,p_static_id=>'add-sp'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:763:&SESSION.::&DEBUG.:763:P763_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92563099352109132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(629027663459875502)
,p_button_name=>'ADD_VAL'
,p_static_id=>'add-val'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ADD'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92557596017109130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(345855588304380410)
,p_button_name=>'ADD_VISA'
,p_static_id=>'add-visa'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:744:&SESSION.::&DEBUG.:744:P744_STUDENT_KEY,P744_IMMI_STUDENT_KEY,P744_CAMPUS_KEY:&P648_STUDENT_KEY.,&P648_IMMI_STUDENT_KEY.,&P648_CAMPUS_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(624505281099460441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(624503217097460421)
,p_button_name=>'ADD_WHITELIST'
,p_static_id=>'add-whitelist'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Whitelist Request'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1058:&SESSION.::&DEBUG.:1058:P1058_STUDENT_KEY:&P648_STUDENT_KEY.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92810566034109239)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(688798913300792622)
,p_button_name=>'ASSIGN_SCHOLARSHIP'
,p_static_id=>'assign-scholarship'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Scholarship To This Student'
,p_button_redirect_url=>'f?p=&APP_ID.:2029:&SESSION.::&DEBUG.:2029:P2029_STUDENT_KEY,P2029_FROM_PAGE:&P648_STUDENT_KEY.,648'
,p_icon_css_classes=>'fa-calendar-plus-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92686858258109186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(816365174451275841)
,p_button_name=>'Assign_Sponsorship'
,p_static_id=>'assign-sponsorship'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Sponsorship'
,p_button_redirect_url=>'f?p=&APP_ID.:2245:&SESSION.::&DEBUG.:2245:P2245_STUDENT_KEY,P2245_FROM_PAGE:&P648_STUDENT_KEY.,648'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_check number;',
'    V_CHECK_ACCESS NUMBER:=0;',
'',
'begin',
'    select count(*) into v_check',
'    from student_course_master',
'    where student_key = :P648_STUDENT_KEY;',
'',
'    SELECT COUNT(*) INTO V_CHECK_ACCESS FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    if v_check >0 AND V_CHECK_ACCESS > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92507222878109108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(289442278594309279)
,p_button_name=>'AT12M'
,p_static_id=>'at12m'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Student Attendance Report (12 Month)'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:878:&SESSION.::&DEBUG.:878:P878_STUDENT_KEY,P878_PV:&P648_STUDENT_KEY.,AT12M'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92507613755109108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(289442278594309279)
,p_button_name=>'AT6M'
,p_static_id=>'at6m'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Student Attendance Report (6 Month)'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:878:&SESSION.::&DEBUG.:878:P878_STUDENT_KEY,P878_PV:&P648_STUDENT_KEY.,AT6M'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92507997321109108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(289442278594309279)
,p_button_name=>'ATDAILY'
,p_static_id=>'atdaily'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Student Attendance Report (Daily)'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:878:&SESSION.::&DEBUG.:878:P878_STUDENT_KEY,P878_PV:&P648_STUDENT_KEY.,ATDAILY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92344310395109035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Back To Previous Page'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P648_FROM_PAGE.:&SESSION.::&DEBUG.:648::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97543357827629833)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'CHANGEPWDAD'
,p_static_id=>'changepwdad'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Password'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1301:&SESSION.::&DEBUG.:1301:P1301_UID:&P648_STUDENT_NUMBER.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    IF :P648_STUDENT_NUMBER IS NOT NULL THEN',
'',
'        SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'        WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'        AND APP_ID = :APP_ID ',
'        AND PROCESS_CODE = ''AAVF''',
'        AND CUSTOMER_KEY = :GLO_USER_KEY;',
'    ',
'        IF V_CHECK > 0 THEN',
'            RETURN TRUE;',
'        END IF;',
'        ',
'    ELSE',
'    ',
'        RETURN FALSE;',
'    ',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92345911766109036)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P648_STUDENT_KEY'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92759744780109219)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(257228050956983031)
,p_button_name=>'CREATE_CN'
,p_static_id=>'create-cn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Credit Note'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:650:&SESSION.::&DEBUG.:650:P650_SK:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92726664136109205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(257347965033978822)
,p_button_name=>'CREATE_DISCOUNT'
,p_static_id=>'create-discount'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Discount'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:662:&SESSION.::&DEBUG.:662:P662_SK:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(428631263989495563)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(428630680473495557)
,p_button_name=>'CREATE_NOTIFICATION'
,p_static_id=>'create-notification'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Send Notification'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9001:&SESSION.::&DEBUG.:9001:P9001_RCPT_STUDENT_KEY,P9001_RECIPIENT:&P648_STUDENT_KEY.,&P648_STUDENT_NUMBER.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92813695544109240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(728379993417743608)
,p_button_name=>'CREATE_REFUND'
,p_static_id=>'create-refund'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Refund'
,p_button_redirect_url=>'f?p=&APP_ID.:2044:&SESSION.::&DEBUG.:2044:P2044_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-calendar-plus-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92691883024109189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(830190234033038012)
,p_button_name=>'CREATE_REMARK'
,p_static_id=>'create-remark'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Remark'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:924:&SESSION.::&DEBUG.:924:P924_STUDENT_KEY,P924_DIARY_TYPE,P924_SCH_BOARD_KEY,P924_CREATED_BY:&P648_STUDENT_KEY.,Sponsorship,&P648_SPONSOR_BOARD.,&GLO_USER_NAME.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(984010611438549174)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(984009720093549165)
,p_button_name=>'CREATE_SIBLING_DISCOUNT'
,p_static_id=>'create-sibling-discount'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign New Scheme'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:2083:&SESSION.::&DEBUG.:2083:P2083_STUDENT_KEY,P2083_FROM_PAGE:&P648_STUDENT_KEY.,648'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92730579793109206)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(845117761793686848)
,p_button_name=>'CREATE_SPECIAL_DISCOUNT'
,p_static_id=>'create-special-discount'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign New Scheme'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:934:&SESSION.::&DEBUG.:934:P934_STUDENT_KEY,P934_FROM_PAGE:&P648_STUDENT_KEY.,648'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(570833070889277131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(570183168520627451)
,p_button_name=>'CREATE_STAFF_DISCOUNT'
,p_static_id=>'create-staff-discount'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign New Scheme'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:935:&SESSION.::&DEBUG.:935:P935_STUDENT_KEY,P935_FROM_PAGE:&P648_STUDENT_KEY.,648'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92346294339109036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677745904332533147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(677743935900533127)
,p_button_name=>'DISCIPLINE'
,p_static_id=>'discipline'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Discipline Case'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1852:&SESSION.::&DEBUG.:1852:P1852_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAW5''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(394648899563935967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(254584604953192311)
,p_button_name=>'LINK_G'
,p_static_id=>'link-g'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Link Guardian'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1049:&SESSION.::&DEBUG.:1049:P1049_SK,P1049_IS_HAS_SIBLING:&P648_STUDENT_KEY.,Y'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHK''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92626570329109159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(720294321465403707)
,p_button_name=>'MISC_INVOICE_1'
,p_static_id=>'misc-invoice'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Miscellaneous Collection '
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:665:&SESSION.::&DEBUG.:665:P665_SK,P665_CAMPUS:&P648_STUDENT_KEY.,&P648_CAMPUS_KEY.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92769515757109223)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(257346380266978806)
,p_button_name=>'MISC_INVOICE'
,p_static_id=>'misc-invoice-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Miscellaneous Collection '
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:665:&SESSION.::&DEBUG.:665:P665_SK,P665_CAMPUS:&P648_STUDENT_KEY.,&P648_CAMPUS_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92702403730109194)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(832977728543650612)
,p_button_name=>'NEW_ATTACHMENT'
,p_static_id=>'new-attachment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:921:&SESSION.::&DEBUG.:921:P921_DOCUMENT_TYPE,P921_INSTITUTE_KEY,P921_STUDENT_KEY:Sponsorship Attachment,&P648_INSTITUTE_KEY.,&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92798409759109234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(332188563238957436)
,p_button_name=>'PAYFEES'
,p_static_id=>'payfees'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pay Outstanding Fees'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:588:P588_SK:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHO''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92470929628109090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(325946707823089396)
,p_button_name=>'PRINT'
,p_static_id=>'print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Print Academic Transcript'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:728:&SESSION.::&DEBUG.::P728_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHX''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(597244043812833532)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(846725352013219719)
,p_button_name=>'PRINT_BILLING'
,p_static_id=>'print-billing'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Billing'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1061:&SESSION.::&DEBUG.:1061:P1061_STUDENT_KEY,P1061_PV:&P648_STUDENT_KEY.,B'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(597244228748833534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(846725352013219719)
,p_button_name=>'PRINT_BILLING_B'
,p_static_id=>'print-billing-b'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print  Breakdown Billing'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1061:&SESSION.::&DEBUG.::P1061_STUDENT_KEY,P1061_PV:&P648_STUDENT_KEY.,BB'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92344660888109035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'PRINT_P'
,p_static_id=>'print-p'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Print Profile'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_PRINT_PROFILE.&_repFormat=pdf&_dataSource=&GLO_JASPERCMDKEY.&P1=&P648_STUDENT_KEY.&P0=&GLO_INSTITUTE_KEY.''));'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6349382103867884)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(806842901139016636)
,p_button_name=>'PRINT_PASSPORT_SUBM'
,p_static_id=>'print-passport-subm'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Passport Submission'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:void(window.open(''&GLO_REPORT_URL.&GLO_PASSPT_SUBM.&_repFormat=pdf&_dataSource=&GLO_JASPERCMDKEY.&P1=&GLO_INSTITUTE_KEY.&P2=&P648_STUDENT_KEY.''));'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92558044613109130)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(345855588304380410)
,p_button_name=>'RENEW_VISA'
,p_static_id=>'renew-visa'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Notify Student on Visa Expiry'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAM3''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92345496597109036)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save My Changes'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHR''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149209224721656938)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(806842901139016636)
,p_button_name=>'SEND_EMAIL'
,p_static_id=>'send-email'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Email Faculty for Handover'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1137:&SESSION.::&DEBUG.:1137:P1137_LK,P1137_FROM_MODULE,P1137_LINK_COLUMN:&P648_STUDENT_KEY.,FACULTY_HANDOVER,STUDENT_KEY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92345145155109035)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_button_name=>'STUDENTCARD'
,p_static_id=>'studentcard'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Student Card Setup'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:747:&SESSION.::&DEBUG.:747:P747_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER := 0;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_CHECK FROM V_USER_GROUP_PROCESS_ACCESS',
'    WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
'    AND APP_ID = :APP_ID ',
'    AND PROCESS_CODE = ''AAHR''',
'    AND CUSTOMER_KEY = :GLO_USER_KEY;',
'',
'    IF V_CHECK > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(591821597686538145)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(577760681067736351)
,p_button_name=>'UPDATE_AGENCY'
,p_static_id=>'update-agency'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Agency'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1014:&SESSION.::&DEBUG.:1014:P1014_SK,P1014_FP:&P648_STUDENT_KEY.,648'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(591822751338538156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(577760681067736351)
,p_button_name=>'UPDATE_COUNSELOR'
,p_static_id=>'update-counselor'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Counselor'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:959:&SESSION.::&DEBUG.:959:P959_SK,P959_FP:&P648_STUDENT_KEY.,648'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92641552753109166)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(720297857461403742)
,p_button_name=>'UPLOAD_PHOTO_1'
,p_static_id=>'upload-photo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Photo'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97:P97_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-photo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92373977003109046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(253585014793377506)
,p_button_name=>'UPLOAD_PHOTO'
,p_static_id=>'upload-photo-2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Photo'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97:P97_STUDENT_KEY:&P648_STUDENT_KEY.'
,p_icon_css_classes=>'fa-photo'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(92928163445109277)
,p_branch_name=>'Go To Page 648'
,p_branch_action=>'f?p=&APP_ID.:648:&SESSION.::&DEBUG.:648:P648_STUDENT_KEY:&P648_STUDENT_KEY.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(92928597352109277)
,p_branch_name=>'Go To Page 740'
,p_branch_action=>'f?p=&APP_ID.:740:&SESSION.::&DEBUG.:740:P740_IMMI_DOC_KEY:&P648_IMMI_DOC_KEY.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92830463921109247)
,p_name=>'P648_ACADEMIC_LEVEL_DURING_ENTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Academic Level During Entry'
,p_source=>'ACADEMIC_LEVEL_DURING_ENTRY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92830153367109247)
,p_name=>'P648_ACADEMIC_LEVEL_ENTRY_YEAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Academic Level Entry Year'
,p_source=>'ACADEMIC_LEVEL_ENTRY_YEAR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92403705966109060)
,p_name=>'P648_AGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_prompt=>'Age'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FLOOR(MONTHS_BETWEEN(TO_DATE(CURRENT_DATE),TO_DATE(:P648_DATE_OF_BIRTH))/12)||'' years, ''||',
'    FLOOR(MOD(MONTHS_BETWEEN(TO_DATE(CURRENT_DATE),TO_DATE(:P648_DATE_OF_BIRTH)),12))||'' month(s)'' AS AGE',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92845706637109252)
,p_name=>'P648_AGENCY_MASTER_KEY'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(101748702831047239)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Agency'
,p_source=>'AGENCY_MASTER_KEY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'AGENCY MASTER '
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92826502770109246)
,p_name=>'P648_AGENT_INTRODUCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Agent Introduce'
,p_source=>'AGENT_INTRODUCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263625827438696363)
,p_name=>'P648_ALL_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_prompt=>'All Email'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT LISTAGG(EMAIL,'';'')',
'FROM V_STUDENT_EMAIL',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92833748106109248)
,p_name=>'P648_ALUMNI_MEMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Alumni Member'
,p_source=>'ALUMNI_MEMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92826148240109246)
,p_name=>'P648_APPLICATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Application No'
,p_source=>'APPLICATION_NO'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92553344909109128)
,p_name=>'P648_APRROVAL_VPU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_prompt=>'Aprroval by VPU to proceed with Course Selection'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APRROVAL_VPU FROM IMMIGRATION_DOCUMENT',
'WHERE IMMI_DOC_KEY = :P648_IMMI_DOC_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'P648_IMMI_DOC_KEY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92831277157109247)
,p_name=>'P648_AREA_OF_INTEREST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Area Of Interest'
,p_source=>'AREA_OF_INTEREST'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92836063833109249)
,p_name=>'P648_AREA_OF_INTEREST2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Area Of Interest2'
,p_source=>'AREA_OF_INTEREST2'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92432243862109072)
,p_name=>'P648_A_LEVEL_CGPA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'A Level Cgpa'
,p_source=>'A_LEVEL_CGPA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92432655204109072)
,p_name=>'P648_A_LEVEL_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'A Level Country'
,p_source=>'A_LEVEL_COUNTRY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'COUNTRY_FROM'
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92431411933109072)
,p_name=>'P648_A_LEVEL_EDUCATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'A Level Education Type'
,p_source=>'A_LEVEL_EDUCATION_TYPE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as dis,',
'       field_value as return',
'from v_setup_detail',
'where field_name = ''A-LEVEL''',
'and institute_key = :glo_institute_key'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92430648246109071)
,p_name=>'P648_A_LEVEL_HIGHEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Highest Qualification'
,p_source=>'A_LEVEL_HIGHEST'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92433004126109072)
,p_name=>'P648_A_LEVEL_SCHOOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'A Level School'
,p_source=>'A_LEVEL_SCHOOL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92431851204109072)
,p_name=>'P648_A_LEVEL_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'A Level Year'
,p_source=>'A_LEVEL_YEAR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92341221069109032)
,p_name=>'P648_BD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>'select ''<font style="font-family: Brush Script MT; font-size: 30px; animation-name: Blink; animation-duration: 1s; animation-iteration-count: infinite;">Happy Birthday !!</font>'' BD from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_date varchar2(100);',
'begin',
'    select to_char(date_of_birth, ''MM-DD'') into v_date',
'    from student_profile',
'    where student_key = :P648_STUDENT_KEY;',
'    ',
'    if (to_char(sysdate, ''MM-DD'')) != v_date then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(482784822389286162)
,p_name=>'P648_BIRTHDAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(482784698615286161)
,p_source=>'select ''<font style="font-family: Brush Script MT; font-size: 30px; animation-name: Blink; animation-duration: 1s; animation-iteration-count: infinite;">Happy Birthday !!</font>'' BD from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_date varchar2(100);',
'begin',
'    select to_char(date_of_birth, ''MM-DD'') into v_date',
'    from student_profile',
'    where student_key = :P648_STUDENT_KEY;',
'    ',
'    if (to_char(sysdate, ''MM-DD'')) != v_date then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92492895294109101)
,p_name=>'P648_BY_FINANCE_OFFICE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(743835593268993018)
,p_prompt=>'By Finance Office'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'V_COUNT NUMBER;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_COUNT FROM STUDENT_GRADE_WITHELD ',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND WITHELD_BY_DEPARTMENT = ''Finance Office''',
'    and IS_WITHDRAWN <> ''Y'';',
'',
'    IF V_COUNT > 0 THEN',
'    RETURN ''Y'';',
'    ELSE ',
'    RETURN NULL;',
'    END IF;',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92487375321109098)
,p_name=>'P648_BY_REGISTRAR_OFFICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(743833997435993002)
,p_prompt=>'By Registrar Office'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'V_COUNT NUMBER;',
'',
'BEGIN',
'',
'    SELECT COUNT(*) INTO V_COUNT FROM STUDENT_GRADE_WITHELD ',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND WITHELD_BY_DEPARTMENT = ''Registrar Office''',
'    and IS_WITHDRAWN <> ''Y'';',
'',
'    IF V_COUNT > 0 THEN',
'    RETURN ''Y'';',
'    ELSE ',
'    RETURN NULL;',
'    END IF;',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92840923863109251)
,p_name=>'P648_CAMPAIGN_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Campaign Key'
,p_source=>'CAMPAIGN_KEY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92353474712109038)
,p_name=>'P648_CAMPUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_prompt=>'Registered Campus'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CAMPUS_NAME',
'FROM CAMPUS_MASTER',
'WHERE CAMPUS_KEY = :P648_CAMPUS_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92348278976109037)
,p_name=>'P648_CAMPUS_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'CAMPUS_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92840520332109251)
,p_name=>'P648_CARDPAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Cardpan'
,p_source=>'CARDPAN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92357543478109040)
,p_name=>'P648_COLLABORATION_PARTNER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Partner'
,p_source=>'COLLABORATION_PARTNER_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'PARTNER_NAME ||'' - '' || PARTNER_CODE D,',
'PARTNER_ID R',
'',
'FROM COLLABORATION_PARTNER',
'WHERE INSTITUTE_KEY = :GLO_INSTITUTE_KEY'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92357899225109040)
,p_name=>'P648_COLLABORATION_TYPE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_prompt=>'Collaboration Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92830871513109247)
,p_name=>'P648_CONCLUDED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Concluded By'
,p_source=>'CONCLUDED_BY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92378363374109048)
,p_name=>'P648_COR_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(253587866271377535)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Address'
,p_source=>'COR_ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92379629462109049)
,p_name=>'P648_COR_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(253587866271377535)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'City'
,p_source=>'COR_CITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92378800375109049)
,p_name=>'P648_COR_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(253587866271377535)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Country'
,p_source=>'COR_COUNTRY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_from as display_value, country_from_id as return_value ',
'  from country_from_lookup',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92380022553109049)
,p_name=>'P648_COR_POST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(253587866271377535)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Post Code'
,p_source=>'COR_POST_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92379217896109049)
,p_name=>'P648_COR_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(253587866271377535)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'State'
,p_source=>'COR_STATE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    UPPER(A.STATE_NAME) D,',
'    UPPER(A.STATE_NAME) R',
'FROM FM_STATE A',
'WHERE A.COUNTRY_ID = :P648_COR_COUNTRY',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P648_COR_COUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101748824628047240)
,p_name=>'P648_COUNSELOR_KEY'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(101748702831047239)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Counselor'
,p_source=>'COUNSELOR_KEY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_NAME||'' - ''||STAFF_ID DV,CUSTOMER_KEY RV',
'FROM CUSTOMER',
'WHERE NVL(COUNSELOR,'' '') = ''Y''',
'AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92355881667109039)
,p_name=>'P648_COUNTRY_FROM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Country From'
,p_source=>'COUNTRY_FROM_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'COUNTRY_FROM'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92349060542109037)
,p_name=>'P648_COURSE_APPLIED_KEY'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LATEST_OF.STUDENT_PROGRAMME_APPLIED(:P648_STUDENT_KEY) ',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92836921152109249)
,p_name=>'P648_CRIMINAL_CONVICTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Criminal Conviction'
,p_source=>'CRIMINAL_CONVICTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92838500110109250)
,p_name=>'P648_CRIMINAL_FURTHERS_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Criminal Furthers Details'
,p_source=>'CRIMINAL_FURTHERS_DETAILS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170907711367107538)
,p_name=>'P648_CROSS_INSTITUTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Cross-Institute Name'
,p_source=>'CROSS_INSTITUTION_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'CI_NAME||'' - ''||CI_CODE D,',
'CI_KEY R',
'',
'FROM CROSS_INSTITUTION',
'WHERE (IS_ACTIVE = ''Y'' OR CI_KEY = (SELECT CROSS_INSTITUTION_ID FROM STUDENT_PROFILE WHERE STUDENT_KEY = :P648_STUDENT_KEY))',
'AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_display_when_type=>'NEVER'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92347127090109036)
,p_name=>'P648_CURRENT_PROFILE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'CURRENT_PROFILE_STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92837662290109250)
,p_name=>'P648_DATA_PROTECTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Data Protection'
,p_source=>'DATA_PROTECTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92403295152109060)
,p_name=>'P648_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Date Of Birth'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_OF_BIRTH'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92638358425109165)
,p_name=>'P648_DATE_OF_BIRTH_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_DATE_OF_BIRTH'
,p_item_default_type=>'ITEM'
,p_prompt=>'Date Of Birth:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92409123804109062)
,p_name=>'P648_DISABILITIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(253589461290377551)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Do You Have Any Disabilities?'
,p_source=>'DISABILITIES'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92409555566109063)
,p_name=>'P648_DISABILITIES_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(253589461290377551)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Disabilities Remark'
,p_source=>'DISABILITIES_REMARK'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'A.FIELD_VALUE D,',
'A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''DISABILITIES''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92838089661109250)
,p_name=>'P648_DISABILITY_FURTHERS_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Disability Furthers Details'
,p_source=>'DISABILITY_FURTHERS_DETAILS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263625733894696362)
,p_name=>'P648_DUN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(263625469461696359)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'DUN'
,p_source=>'DUN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DUN DV, DUN RV',
'FROM EIPTS_DUN',
'WHERE STATE = :P648_VOTING_STATE',
'AND PARLIMEN = :P648_PARLIMEN'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_lov_cascade_parent_items=>'P648_VOTING_STATE,P648_PARLIMEN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92448623432109079)
,p_name=>'P648_ENGLISH_PROFICIENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(712108183317805547)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'English Proficiency'
,p_source=>'ENGLISH_PROFICIENCY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ENTRY_SUBJECT_TYPE as dis,',
'ENTRY_SUBJECT_TYPE as return',
'',
'from ENTRY_QUALIFICATION_SETUP',
'where institute_key = :glo_institute_key',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92449043996109079)
,p_name=>'P648_ENGLISH_SCORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_imp.id(712108183317805547)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'English Score'
,p_source=>'ENGLISH_SCORE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92405707939109061)
,p_name=>'P648_ETHNICITY_OTHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Other Ethnic'
,p_source=>'ETHNICITY_OTHER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92375258474109047)
,p_name=>'P648_E_MAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Email Address'
,p_source=>'E_MAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92375681947109047)
,p_name=>'P648_E_MAIL2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Institution Email Address'
,p_source=>'E_MAIL2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92354684888109039)
,p_name=>'P648_FAMILY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Surname'
,p_source=>'FAMILY_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175580974867034761)
,p_name=>'P648_FO_MIGRATION_CONFIRMATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(332188563238957436)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This student still did not do the FO Migration Confirmation.',
'Please advice student to login Student Portal and do confirm the FO Migration before proceed with the payment.'))
,p_prompt=>'FO Migration Confirmation Not Complete'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(394647250027935950)
,p_name=>'P648_FROM_APP'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92834950065109249)
,p_name=>'P648_FROM_MODULE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'From Module'
,p_source=>'FROM_MODULE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92348693503109037)
,p_name=>'P648_FROM_PAGE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92827294802109246)
,p_name=>'P648_FUNDING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Funding'
,p_source=>'FUNDING'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92829264891109247)
,p_name=>'P648_FUTURE_CAREER_OPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Future Career Option'
,p_source=>'FUTURE_CAREER_OPTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92355085565109039)
,p_name=>'P648_GIVEN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Given Name'
,p_source=>'GIVEN_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92522520746109114)
,p_name=>'P648_HOSTEL_ACCOMODATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(254585869759192324)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Do you require accommodation within the hostel?'
,p_source=>'HOSTEL_ACCOMODATION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92522863892109114)
,p_name=>'P648_HOSTEL_BLOCK_APPLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_imp.id(254585869759192324)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Which Hostel'
,p_source=>'HOSTEL_BLOCK_APPLY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92523348265109115)
,p_name=>'P648_HOSTEL_TYPE_APPLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_imp.id(254585869759192324)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Occupancy Type'
,p_source=>'HOSTEL_TYPE_APPLY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92831706371109248)
,p_name=>'P648_HOW_DO_YOU_KNOW_US'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'How Do You Know Us'
,p_source=>'HOW_DO_YOU_KNOW_US'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92837280711109249)
,p_name=>'P648_HOW_TO_PAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'How To Pay'
,p_source=>'HOW_TO_PAY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92362456941109042)
,p_name=>'P648_IC_PASSPORT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'IC_PASSPORT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92362012641109042)
,p_name=>'P648_IC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'IC_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92363214380109042)
,p_name=>'P648_ID_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'ID Number'
,p_source=>'ID_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92362841640109042)
,p_name=>'P648_ID_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'ID Type'
,p_source=>'ID_TYPE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''ID_TYPE''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92551329651109127)
,p_name=>'P648_IMMI_DOC_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(629055982833987609)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMMI_DOC_KEY FROM IMMIGRATION_DOCUMENT',
'WHERE IS_ACTIVE = ''Y'' AND STUDENT_KEY = :P648_STUDENT_KEY;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92836544893109249)
,p_name=>'P648_INCOME_RANGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Income Range'
,p_source=>'INCOME_RANGE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92347941045109036)
,p_name=>'P648_INSTITUTE_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_default=>'&GLO_INSTITUTE_KEY.'
,p_source=>'INSTITUTE_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92835695637109249)
,p_name=>'P648_INTRODUCER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Introducer Name'
,p_source=>'INTRODUCER_NAME'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92835356436109249)
,p_name=>'P648_INTRODUCER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Introducer Type'
,p_source=>'INTRODUCER_TYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92828101941109246)
,p_name=>'P648_INTRO_BY_STUDENT_IC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Intro By Student Ic'
,p_source=>'INTRO_BY_STUDENT_IC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92847268811109253)
,p_name=>'P648_IS_APPLY_FOR_SCHOLARSHIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Is Apply For Scholarship'
,p_source=>'IS_APPLY_FOR_SCHOLARSHIP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92357095299109040)
,p_name=>'P648_IS_COLLABORATION_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Collaboration Partner Student'
,p_source=>'IS_COLLABORATION_STUDENT'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170907574249107537)
,p_name=>'P648_IS_CROSS_INSTITUTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Cross-Institute'
,p_source=>'IS_CROSS_INSTITUTION'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when_type=>'NEVER'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92847754963109253)
,p_name=>'P648_IS_IDP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Is Idp'
,p_source=>'IS_IDP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92420118721109067)
,p_name=>'P648_IS_TRIAL_RESULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Is Trial Result'
,p_source=>'IS_TRIAL_RESULT'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92431019678109072)
,p_name=>'P648_IS_TRIAL_RESULT_A'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Is Trial Result'
,p_source=>'IS_TRIAL_RESULT_A'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92822654294109244)
,p_name=>'P648_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(253584708183377503)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92822961898109244)
,p_name=>'P648_LAST_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253584708183377503)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Last Updated Date'
,p_source=>'LAST_UPDATED_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92842952114109251)
,p_name=>'P648_LEAD_FROM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Lead From'
,p_source=>'LEAD_FROM'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92841275462109251)
,p_name=>'P648_LEAD_REGISTER_BY_CAMPUS_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Lead Register By Campus Key'
,p_source=>'LEAD_REGISTER_BY_CAMPUS_KEY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92846057756109252)
,p_name=>'P648_LEAD_SCORING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Lead Scoring'
,p_source=>'LEAD_SCORING'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>256
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92846866455109253)
,p_name=>'P648_LEAD_SOURCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Lead Source'
,p_source=>'LEAD_SOURCE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1024
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92846485740109253)
,p_name=>'P648_LEAD_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Lead Status'
,p_source=>'LEAD_STATUS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>256
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92356735891109040)
,p_name=>'P648_LOCAL_OVERSEAS_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Local/International'
,p_source=>'LOCAL_OVERSEAS_STUDENT'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Local;Local,International;International'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92411507674109063)
,p_name=>'P648_MAJOR_ILLNESSES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(254584248670192307)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Major Illnesses'
,p_source=>'MAJOR_ILLNESSES'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92411889139109064)
,p_name=>'P648_MAJOR_ILLNESSES_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_imp.id(254584248670192307)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Major Illnesses Type'
,p_source=>'MAJOR_ILLNESSES_TYPE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'A.FIELD_VALUE D,',
'A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''MAJOR_ILLNESSES_TYPE''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59834005010558925)
,p_name=>'P648_MALAYSIAN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92402918618109060)
,p_name=>'P648_MARITAL_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Marital Status'
,p_source=>'MARITAL_STATUS'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''MARITAL_STATUS''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92638793266109165)
,p_name=>'P648_MARITAL_STATUS_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_MARITAL_STATUS'
,p_item_default_type=>'ITEM'
,p_prompt=>'Marital Status:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''MARITAL_STATUS''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_begin_on_new_line=>'N'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92839706438109250)
,p_name=>'P648_MARKETING_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Marketing Code'
,p_source=>'MARKETING_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92833348717109248)
,p_name=>'P648_MATRIX_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Matrix Number'
,p_source=>'MATRIX_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92832923312109248)
,p_name=>'P648_NAME_TO_PRINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Name To Print'
,p_source=>'NAME_TO_PRINT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92356342587109040)
,p_name=>'P648_NATIONALITY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Nationality'
,p_source=>'NATIONALITY_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_from as display_value, country_from_id as return_value ',
'  from country_from_lookup',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92639167933109165)
,p_name=>'P648_NATIONALITY_ID_1'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_NATIONALITY_ID'
,p_item_default_type=>'ITEM'
,p_prompt=>'Nationality:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_from as display_value, country_from_id as return_value ',
'  from country_from_lookup',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>'P648_STUDENT_KEY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92828553700109246)
,p_name=>'P648_NATIONAL_SERVICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'National Service'
,p_source=>'NATIONAL_SERVICE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92828910509109246)
,p_name=>'P648_NATIONAL_SERVICE_BATCH_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'National Service Batch No'
,p_source=>'NATIONAL_SERVICE_BATCH_NO'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92409901845109063)
,p_name=>'P648_OKU_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_imp.id(253589461290377551)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Oku Number'
,p_source=>'OKU_NUMBER'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92421277950109067)
,p_name=>'P648_O_LEVEL_CGPA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'CGPA'
,p_source=>'O_LEVEL_CGPA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263625628424696361)
,p_name=>'P648_PARLIMEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(263625469461696359)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Parlimen'
,p_source=>'PARLIMEN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARLIMEN DV, PARLIMEN RV',
'FROM EIPTS_PARLIMEN',
'WHERE STATE = :P648_VOTING_STATE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_lov_cascade_parent_items=>'P648_VOTING_STATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92382240383109050)
,p_name=>'P648_PERMENANT_SAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Same as Correspondence Address '
,p_source=>'PERMENANT_SAME'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92382563934109050)
,p_name=>'P648_PER_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Address'
,p_source=>'PER_ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92383856489109051)
,p_name=>'P648_PER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'City'
,p_source=>'PER_CITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92382964834109050)
,p_name=>'P648_PER_COUNTRY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Country'
,p_source=>'PER_COUNTRY_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_from as display_value, country_from_id as return_value ',
'  from country_from_lookup',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92384223701109051)
,p_name=>'P648_PER_POST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Post Code'
,p_source=>'PER_POST_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92383370756109050)
,p_name=>'P648_PER_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(253588001163377536)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'State'
,p_source=>'PER_STATE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.STATE_NAME D,',
'    A.STATE_NAME R',
'FROM FM_STATE A',
'WHERE A.COUNTRY_ID = :P648_PER_COUNTRY_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P648_PER_COUNTRY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92404098511109060)
,p_name=>'P648_PLACE_OF_BIRTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'PLACE_OF_BIRTH'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92844475945109252)
,p_name=>'P648_PREVIOUS_SCHOOL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Previous School Name'
,p_source=>'PREVIOUS_SCHOOL_NAME'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92822177025109244)
,p_name=>'P648_PROFILE_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253584708183377503)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Profile Created By'
,p_source=>'PROFILE_CREATED_BY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92821791433109244)
,p_name=>'P648_PROFILE_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(253584708183377503)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Profile Creation Date'
,p_source=>'PROFILE_CREATION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92481125274109096)
,p_name=>'P648_PROGRAMME_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(325993758700284869)
,p_source=>'SELECT COURSE_KEY FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92841737772109251)
,p_name=>'P648_PROGRAMME_INTERESTED1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Programme Interested1'
,p_source=>'PROGRAMME_INTERESTED1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92842134648109251)
,p_name=>'P648_PROGRAMME_INTERESTED2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Programme Interested2'
,p_source=>'PROGRAMME_INTERESTED2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92842490329109251)
,p_name=>'P648_PROGRAMME_INTERESTED3'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Programme Interested3'
,p_source=>'PROGRAMME_INTERESTED3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92481498995109096)
,p_name=>'P648_PROGRAMME_STRUCTURE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(325993758700284869)
,p_source=>'SELECT UCSI_PROGRAMME_STRUCTURE_ID FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92874878649109262)
,p_name=>'P648_R'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(850437917125019205)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171407969263977841)
,p_name=>'P648_RACE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ethnic Origin (Race)'
,p_source=>'RACE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value d, field_valuE r',
'from setup_master a, setup_detail b',
'where a.setup_key=b.setup_key and a.field_name=''RACE''',
'and (b.institute_key = :GLO_INSTITUTE_KEY or b.institute_key is null)',
'order by b.seq,b.field_value'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92852464796109255)
,p_name=>'P648_RACE_OTHERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Race Others'
,p_source=>'RACE_OTHERS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92404551440109060)
,p_name=>'P648_RELIGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Religion'
,p_source=>'RELIGION'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as dis , setup_detail_key as return',
'from v_setup_detail',
'where field_name = ''RELIGION''',
'and (institute_key = :glo_institute_key or institute_key is null)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92404913261109060)
,p_name=>'P648_RELIGION_OTHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Others'
,p_source=>'RELIGION_OTHER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92840082092109250)
,p_name=>'P648_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92418574863109066)
,p_name=>'P648_S'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(711058361929117804)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92354349930109039)
,p_name=>'P648_SALUTATION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Title'
,p_source=>'SALUTATION'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.SETUP_DETAIL_KEY R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''SALUTATION''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92843269128109251)
,p_name=>'P648_SCHOOL_COUNTRY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School Country Id'
,p_source=>'SCHOOL_COUNTRY_ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92844140410109252)
,p_name=>'P648_SCHOOL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School Name'
,p_source=>'SCHOOL_NAME'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92843730747109252)
,p_name=>'P648_SCHOOL_STATE_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School State Key'
,p_source=>'SCHOOL_STATE_KEY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92844875598109252)
,p_name=>'P648_SCHOOL_STREAMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School Streams'
,p_source=>'SCHOOL_STREAMS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92845344111109252)
,p_name=>'P648_SCHOOL_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School Type'
,p_source=>'SCHOOL_TYPE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92481896523109096)
,p_name=>'P648_SCM_KEY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(325993758700284869)
,p_source=>'SELECT SCM_KEY FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92420509621109067)
,p_name=>'P648_SECONDARY_EDUCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Secondary Education'
,p_source=>'SECONDARY_EDUCATION'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select field_value as dis,',
'       field_value as return',
'from v_setup_detail',
'where field_name = ''O-LEVEL''',
'and institute_key = :glo_institute_key'))
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92421689252109068)
,p_name=>'P648_SECONDARY_EDUCATION_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Country'
,p_source=>'SECONDARY_EDUCATION_COUNTRY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'COUNTRY_FROM'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92419676096109067)
,p_name=>'P648_SECONDARY_EDUCATION_HIGHEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Highest Qualification'
,p_source=>'SECONDARY_EDUCATION_HIGHEST'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92422068496109068)
,p_name=>'P648_SECONDARY_EDUCATION_SCHOOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'School'
,p_source=>'SECONDARY_EDUCATION_SCHOOL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92422541198109068)
,p_name=>'P648_SECONDARY_EDUCATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'SECONDARY_EDUCATION_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92420946876109067)
,p_name=>'P648_SECONDARY_EDUCATION_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Year'
,p_source=>'SECONDARY_EDUCATION_YEAR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92512623433109110)
,p_name=>'P648_SEL_SEMESTER3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(817053587021542037)
,p_prompt=>'Select Semester'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'DISTINCT SEMESTER AS DIS,',
'SEMESTER AS RET',
'',
'FROM STUDENT_COURSE_SELECTION',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'ORDER BY SEMESTER DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P648_STUDENT_KEY'
,p_ajax_items_to_submit=>'P648_STUDENT_KEY,P648_SEL_SEMESTER3'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92402510653109059)
,p_name=>'P648_SEX'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253587735035377533)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Gender'
,p_source=>'SEX'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''GENDER''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92638012131109164)
,p_name=>'P648_SEX_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_SEX'
,p_item_default_type=>'ITEM'
,p_prompt=>'Gender:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''GENDER''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_begin_on_new_line=>'N'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92430215709109071)
,p_name=>'P648_SK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(712103699954805502)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92447495007109079)
,p_name=>'P648_SK2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(712106109228805526)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92832113672109248)
,p_name=>'P648_SPECIAL_ABILITIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Special Abilities'
,p_source=>'SPECIAL_ABILITIES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92358328777109040)
,p_name=>'P648_SPONSORED_BY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_prompt=>'Sponsored By'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sb.board_name',
'from scholarship_board sb',
'where sb.sch_board_key IN (select ss.sch_board_key from student_scholarship ss where ss.student_key = :P648_STUDENT_KEY and ss.register_date = (select MAX(ss_a.register_date) from student_scholarship ss_a where ss_a.student_key = :P648_STUDENT_KEY))'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_check number;',
'',
'begin',
'    select count(*) into v_check from (select (select sp.student_name from student_profile sp where sp.student_key = ss.student_key) as name,',
'        (select sb.board_name from scholarship_board sb where sb.sch_board_key = ss.sch_board_key) as sponsored_by,',
'        ss.REGISTER_DATE,',
'        ss.SS_STATUS,',
'        ss.ss_key',
'        from STUDENT_SCHOLARSHIP ss',
'        where type = ''Sponsorship''',
'        and ss.student_key = :P648_STUDENT_KEY);',
'',
'    if v_check > 0 then',
'        return true;',
'',
'    end if;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92419286885109067)
,p_name=>'P648_ST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(711058586812117806)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92341563659109032)
,p_name=>'P648_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS IN (''Active'',''Enrolment'') ) > 0 THEN',
'    ''Student'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS NOT IN (''Active'',''Enrolment'')) > 0 THEN',
'    ''Alumni'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')''',
' ELSE',
'    '' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'V_CHECK3 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SCHOLARSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SS_KEY IS NOT NULL',
'    AND SS_STATUS = ''Approved'';',
'',
'    SELECT COUNT(*) INTO V_CHECK3 FROM STUDENT_SPONSORSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SPONSORSHIP_STATUS = ''Active'';',
'    ',
'    IF V_CHECK = 0 AND V_CHECK2 = 0 AND V_CHECK3 = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P648_COLLABORATION_PARTNER_ID IS NULL AND :P648_SS_KEY IS NULL THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(482784984996286163)
,p_name=>'P648_STATUS_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(482784698615286161)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    STATUS',
'FROM V_STUDENT_STATUS_SP ',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92342805827109033)
,p_name=>'P648_STATUS_CP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS = ''Active'' ) > 0 THEN',
'    ''Student'' ||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '')''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS <> ''Active'' ) > 0 THEN',
'    ''Alumni''||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '')''',
' ELSE',
'    '' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '')''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SCHOLARSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SS_KEY IS NOT NULL',
'    AND SS_STATUS = ''Approved'';',
'    ',
'    IF V_CHECK > 0 AND V_CHECK2 = 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92343176427109033)
,p_name=>'P648_STATUS_CP_SCHL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS = ''Active'' ) > 0 THEN',
'    ''Student'' ||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS <> ''Active'' ) > 0 THEN',
'    ''Alumni''||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
' ELSE',
'    '' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SCHOLARSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SS_KEY IS NOT NULL',
'    AND SS_STATUS = ''Approved''',
'    AND TYPE = ''Scholarship'';',
'    ',
'    IF V_CHECK > 0 AND V_CHECK2 > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92343560497109034)
,p_name=>'P648_STATUS_CP_SP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS = ''Active'' ) > 0 THEN',
'    ''Student'' ||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorship)''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS <> ''Active'' ) > 0 THEN',
'    ''Alumni''||'' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorhsip)''',
' ELSE',
'    '' (CP)'' ||'' ('' || :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorship)''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SPONSORSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SPONSORSHIP_STATUS = ''Active'';',
'    ',
'    IF V_CHECK > 0 AND V_CHECK2 > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92342046420109033)
,p_name=>'P648_STATUS_SCHL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS = ''Active'' ) > 0 THEN',
'    ''Student'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS <> ''Active'' ) > 0 THEN',
'    ''Alumni'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
' ELSE',
'    '' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Scholarship)''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SCHOLARSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SS_KEY IS NOT NULL',
'    AND SS_STATUS = ''Approved''',
'    AND type = ''Scholarship'';',
'    ',
'    IF V_CHECK = 0 AND V_CHECK2 > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92342413224109033)
,p_name=>'P648_STATUS_SP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(233786765071013703)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'-- (SCM_STATUS ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '')'') AS STATUS',
'',
'(CASE WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS = ''Active'' ) > 0 THEN',
'    ''Student'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorship)''',
' WHEN (SELECT COUNT(SCM_STATUS) FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY AND SCM_STATUS <> ''Active'' ) > 0 THEN',
'    ''Alumni'' ||'' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorship)''',
' ELSE',
'    '' (''|| :P648_LOCAL_OVERSEAS_STUDENT || '') ''||''(Sponsorship)''',
'END) AS STATUS',
'',
'FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_CHECK NUMBER;',
'V_CHECK2 NUMBER;',
'',
'',
'BEGIN',
'    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_PROFILE',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND COLLABORATION_PARTNER_ID = :P648_COLLABORATION_PARTNER_ID;',
'',
'    SELECT COUNT(*) INTO V_CHECK2 FROM STUDENT_SPONSORSHIP',
'    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'    AND SPONSORSHIP_STATUS = ''Active'';',
'    ',
'    IF V_CHECK = 0 AND V_CHECK2 > 0 THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92417941559109066)
,p_name=>'P648_STUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(711058287891117803)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92834545707109249)
,p_name=>'P648_STUDENT_BANK_ACC_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Bank Acc No'
,p_source=>'STUDENT_BANK_ACC_NO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92834071414109248)
,p_name=>'P648_STUDENT_BANK_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Bank Name'
,p_source=>'STUDENT_BANK_NAME'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92824894211109245)
,p_name=>'P648_STUDENT_CURRENT_OCCUPATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Current Occupation'
,p_source=>'STUDENT_CURRENT_OCCUPATION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92346748852109036)
,p_name=>'P648_STUDENT_KEY'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'STUDENT_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92376081054109047)
,p_name=>'P648_STUDENT_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Mobile Number'
,p_source=>'STUDENT_MOBILE_NO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'*Please put country code followed by your phone number. <br>',
'*Do not enter non-alphanumeric characters such as +, ( ), [ ], - or other symbols. <br>',
'* E.g : [countr_code]0123456789 (60123456789).'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92376469528109048)
,p_name=>'P648_STUDENT_MOBILE_NO_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(253587322626377529)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>' Other Mobile  No'
,p_source=>'CONTACT_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_display_when=>'P648_LOCAL_OVERSEAS_STUDENT'
,p_display_when2=>'International'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92355512514109039)
,p_name=>'P648_STUDENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Known As'
,p_source=>'STUDENT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92637627091109164)
,p_name=>'P648_STUDENT_NAME_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_STUDENT_NAME'
,p_item_default_type=>'ITEM'
,p_prompt=>'Name:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92353858790109039)
,p_name=>'P648_STUDENT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(253584877421377505)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Number'
,p_source=>'STUDENT_NUMBER'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92838860555109250)
,p_name=>'P648_STUDENT_PASS_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Pass No'
,p_source=>'STUDENT_PASS_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92825668016109245)
,p_name=>'P648_STUDENT_PROFILE_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Profile Remarks'
,p_source=>'STUDENT_PROFILE_REMARKS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92347533972109036)
,p_name=>'P648_STUDENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'STUDENT_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92825327063109245)
,p_name=>'P648_STUDENT_TYPE_SUB_CATAGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Student Type Sub Catagory'
,p_source=>'STUDENT_TYPE_SUB_CATAGORY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92826942287109246)
,p_name=>'P648_TOTAL_PARENT_INCOME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Total Parent Income'
,p_source=>'TOTAL_PARENT_INCOME'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92798791636109234)
,p_name=>'P648_TOTAL_PREPAYMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(332188563238957436)
,p_prompt=>'Amount In Prepayment'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(nvl(UNMATCH_AMOUNT,0) ) ',
'from v_student_statement0',
'where student_key = :P648_STUDENT_KEY;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92658590993109175)
,p_name=>'P648_TOTAL_PREPAYMENT_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(737856822166396547)
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(ABS(SUM(nvl(UNMATCH_AMOUNT,0))),''999G999G999G999G990D00'')',
'FROM V_STUDENT_STATEMENT0',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92839299984109250)
,p_name=>'P648_TYPE_OF_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Type Of Student'
,p_source=>'TYPE_OF_STUDENT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92349535259109037)
,p_name=>'P648_UCSI_HOLD_P_RESIDENT_PASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'UCSI_HOLD_P_RESIDENT_PASS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92851315228109254)
,p_name=>'P648_UCSI_LAST_SEM'
,p_source_data_type=>'DATE'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Last Sem'
,p_source=>'UCSI_LAST_SEM'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92851693165109254)
,p_name=>'P648_UCSI_LAST_STUDENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Last Student Id'
,p_source=>'UCSI_LAST_STUDENT_ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92849330336109253)
,p_name=>'P648_UCSI_LEADING_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Leading To'
,p_source=>'UCSI_LEADING_TO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92850493771109254)
,p_name=>'P648_UCSI_OTHER_INSTITUTEION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Other Instituteion'
,p_source=>'UCSI_OTHER_INSTITUTEION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92850884715109254)
,p_name=>'P648_UCSI_OTHER_INS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Other Ins Name'
,p_source=>'UCSI_OTHER_INS_NAME'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92366807530109044)
,p_name=>'P648_UCSI_PASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_default=>'N'
,p_prompt=>'Are you currently holding any Malaysian Immigration Pass/Visa?'
,p_source=>'UCSI_PASS'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92364838417109043)
,p_name=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Passport Expire Date'
,p_source=>'UCSI_PASSPORT_EXPIRE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92639633507109165)
,p_name=>'P648_UCSI_PASSPORT_EXPIRE_DATE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(719952732862505403)
,p_item_default=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
,p_item_default_type=>'ITEM'
,p_prompt=>'Passport Expire Date:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>7
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92363998700109042)
,p_name=>'P648_UCSI_PASSPORT_ISSUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Place Of Issue'
,p_source=>'UCSI_PASSPORT_ISSUE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92364452930109043)
,p_name=>'P648_UCSI_PASSPORT_ISSUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Passport Issue Date'
,p_source=>'UCSI_PASSPORT_ISSUE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92363641062109042)
,p_name=>'P648_UCSI_PASSPORT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'UCSI_PASSPORT_NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92367566362109044)
,p_name=>'P648_UCSI_PASS_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Visa Expiry Date'
,p_source=>'UCSI_PASS_EXPIRY_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92367234192109044)
,p_name=>'P648_UCSI_PASS_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Visa Type'
,p_source=>'UCSI_PASS_TYPE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.FIELD_VALUE D,',
'    A.FIELD_VALUE R',
'FROM V_SETUP_DETAIL A',
'WHERE A.FIELD_NAME = ''PASS_TYPE''',
'AND (A.INSTITUTE_KEY = :GLO_INSTITUTE_KEY OR A.INSTITUTE_KEY IS NULL)',
'ORDER BY A.SEQ'))
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92852945438109255)
,p_name=>'P648_UCSI_PASS_TYPE_OTHERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Pass Type Others'
,p_source=>'UCSI_PASS_TYPE_OTHERS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92365964427109043)
,p_name=>'P648_UCSI_PERMENANT_RESIDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Are You Currently Holding A Resident Pass?'
,p_source=>'UCSI_HOLD_P_RESIDENT_PASS'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92365226493109043)
,p_name=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Are You Currently A Permanent Resident in Malaysia ?'
,p_source=>'UCSI_PERMENANT_RESIDENT'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92850125731109254)
,p_name=>'P648_UCSI_PRORAMME_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Ucsi Proramme Mode'
,p_source=>'UCSI_PRORAMME_MODE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92366455288109043)
,p_name=>'P648_UCSI_PR_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Resident Number'
,p_source=>'UCSI_PR_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92365579781109043)
,p_name=>'P648_UCSI_PR_NUMBER_REAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(253585540427377511)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Permanent Resident Number'
,p_source=>'UCSI_P_RESIDENT_NUM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92349915284109037)
,p_name=>'P648_UCSI_P_RESIDENT_NUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_source=>'UCSI_P_RESIDENT_NUM'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92832501197109248)
,p_name=>'P648_VIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(253584770064377504)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Vip'
,p_source=>'VIP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263625502205696360)
,p_name=>'P648_VOTING_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(263625469461696359)
,p_item_source_plug_id=>wwv_flow_imp.id(252957983277489601)
,p_prompt=>'Voting State'
,p_source=>'VOTING_STATE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT STATE DV, STATE RV',
'FROM EIPTS_PARLIMEN',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(92390685981109054)
,p_tabular_form_region_id=>wwv_flow_imp.id(695347641439010943)
,p_validation_name=>'Email Validation'
,p_static_id=>'email-validation'
,p_validation_sequence=>10
,p_validation=>'EMAIL'
,p_validation2=>'''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'''
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'A part following ''@'' should not contain the symbol ''@''.'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EMAIL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(170907883634107540)
,p_name=>'Assign Cross-Institute'
,p_static_id=>'assign-cross-institute'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_IS_CROSS_INSTITUTE'
,p_condition_element=>'P648_IS_CROSS_INSTITUTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170908430458107545)
,p_event_id=>wwv_flow_imp.id(170907883634107540)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170908029569107541)
,p_event_id=>wwv_flow_imp.id(170907883634107540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92923111480109276)
,p_name=>'Change Remark Table'
,p_static_id=>'change-remark-table'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_SPONSOR_BOARD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92924097709109276)
,p_event_id=>wwv_flow_imp.id(92923111480109276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(816365174451275841)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92923657109109276)
,p_event_id=>wwv_flow_imp.id(92923111480109276)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253584877421377505)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(170908457869107546)
,p_name=>'Clear Cross-Institute'
,p_static_id=>'clear-cross-institute'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_IS_CROSS_INSTITUTE'
,p_condition_element=>'P648_IS_CROSS_INSTITUTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170908589755107547)
,p_event_id=>wwv_flow_imp.id(170908457869107546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92888931293109266)
,p_name=>'Disabilities = Y'
,p_static_id=>'disabilities-y'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_DISABILITIES'
,p_condition_element=>'P648_DISABILITIES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92889899437109267)
,p_event_id=>wwv_flow_imp.id(92888931293109266)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_OKU_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92890933059109267)
,p_event_id=>wwv_flow_imp.id(92888931293109266)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_DISABILITIES_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92889396002109267)
,p_event_id=>wwv_flow_imp.id(92888931293109266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_DISABILITIES_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92890446225109267)
,p_event_id=>wwv_flow_imp.id(92888931293109266)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_OKU_NUMBER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59833806226558923)
,p_name=>'Get Malaysian'
,p_static_id=>'get-malaysian'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_NATIONALITY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59833884190558924)
,p_event_id=>wwv_flow_imp.id(59833806226558923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P648_MALAYSIAN',
  'items_to_submit', 'P648_NATIONALITY_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '    V_CHK_MY VARCHAR(100);',
    '    V_COUNTRY_ID NUMBER;',
    '',
    'BEGIN',
    '',
    '    SELECT UPPER(NAME), COUNTRY_ID INTO V_CHK_MY, V_COUNTRY_ID',
    '    FROM FM_COUNTRY',
    '    WHERE COUNTRY_ID = :P648_NATIONALITY_ID;',
    '',
    '    IF NVL(V_CHK_MY,'''') = ''MALAYSIA'' THEN',
    '        :P648_MALAYSIAN := ''Y'';',
    '    ELSE',
    '        :P648_MALAYSIAN := ''N'';',
    '    END IF;',
    '',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92913716726109273)
,p_name=>'New_1'
,p_static_id=>'new'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_IS_COLLABORATION_STUDENT'
,p_condition_element=>'P648_IS_COLLABORATION_STUDENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92914706811109273)
,p_event_id=>wwv_flow_imp.id(92913716726109273)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_COLLABORATION_PARTNER_ID,P648_COLLABORATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92914161123109273)
,p_event_id=>wwv_flow_imp.id(92913716726109273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_COLLABORATION_PARTNER_ID,P648_COLLABORATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92915111597109274)
,p_name=>'New_2'
,p_static_id=>'new-2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_COLLABORATION_PARTNER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92915611747109274)
,p_event_id=>wwv_flow_imp.id(92915111597109274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_COLLABORATION_TYPE_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P648_COLLABORATION_PARTNER_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT COLLABORATION_TYPE FROM V_COLLABORATION_PARTNER',
    'WHERE PARTNER_ID = :P648_COLLABORATION_PARTNER_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92916026017109274)
,p_name=>'New_3'
,p_static_id=>'new-3'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_SEL_SEMESTER3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92916504306109274)
,p_event_id=>wwv_flow_imp.id(92916026017109274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(817053587021542037)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206768926449205330)
,p_name=>'Refresh Attachment Region'
,p_static_id=>'refresh-attachment-region'
,p_event_sequence=>310
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(712300464267447303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206769049450205331)
,p_event_id=>wwv_flow_imp.id(206768926449205330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(712300464267447303)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92924517398109276)
,p_name=>'Refresh Region'
,p_static_id=>'refresh-region'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92686858258109186)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92925022408109276)
,p_event_id=>wwv_flow_imp.id(92924517398109276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(831949605803923417)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92926311553109277)
,p_name=>'Refresh Region Outstanding Fee (ADD)'
,p_static_id=>'refresh-region-outstanding-fee-add'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92805471183109237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92926786448109277)
,p_event_id=>wwv_flow_imp.id(92926311553109277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833148600523924746)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92927206106109277)
,p_name=>'Refresh Region Outstanding Fee (VIEW)'
,p_static_id=>'refresh-region-outstanding-fee-view'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833148600523924746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92927718326109277)
,p_event_id=>wwv_flow_imp.id(92927206106109277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833148600523924746)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92907153915109271)
,p_name=>'Religion'
,p_static_id=>'religion'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_RELIGION'
,p_condition_element=>'P648_RELIGION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'6315'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92908104433109272)
,p_event_id=>wwv_flow_imp.id(92907153915109271)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_RELIGION_OTHER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92907594132109271)
,p_event_id=>wwv_flow_imp.id(92907153915109271)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_RELIGION_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92920321073109275)
,p_name=>'Show _648_UCSI_PR_NUMBER_REAL'
,p_static_id=>'show-648-ucsi-pr-number-real'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
,p_condition_element=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92921292414109275)
,p_event_id=>wwv_flow_imp.id(92920321073109275)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92920765837109275)
,p_event_id=>wwv_flow_imp.id(92920321073109275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER_REAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92925363823109276)
,p_name=>'Show birthday message'
,p_static_id=>'show-birthday-message'
,p_event_sequence=>260
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92925875496109277)
,p_event_id=>wwv_flow_imp.id(92925363823109276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.message.showPageSuccess( "Happy Birthday!!!").addClass("forBirthdaymessage");')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92921700110109275)
,p_name=>'Show P648_UCSI_PR_NUMBER'
,p_static_id=>'show-p648-ucsi-pr-number'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_UCSI_PERMENANT_RESIDENT'
,p_condition_element=>'P648_UCSI_PERMENANT_RESIDENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92922733829109276)
,p_event_id=>wwv_flow_imp.id(92921700110109275)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92922175255109276)
,p_event_id=>wwv_flow_imp.id(92921700110109275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92916931630109274)
,p_name=>'Show Resident Pass'
,p_static_id=>'show-resident-pass'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_LOCAL_OVERSEAS_STUDENT'
,p_condition_element=>'P648_LOCAL_OVERSEAS_STUDENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Local'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92918448726109275)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92919871877109275)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS,P648_UCSI_PERMENANT_RESIDENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92918937879109275)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT,P648_UCSI_PASS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'suppress_change_event', 'N',
  'type', 'STATIC_ASSIGNMENT',
  'value', 'N')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92919453844109275)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value-2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'suppress_change_event', 'N',
  'type', 'STATIC_ASSIGNMENT',
  'value', 'N')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92917358231109274)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92917947778109274)
,p_event_id=>wwv_flow_imp.id(92916931630109274)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS,P648_UCSI_PERMENANT_RESIDENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92906201535109271)
,p_name=>'When Add Attachement'
,p_static_id=>'when-add-attachement'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(333343257937072303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92906744661109271)
,p_event_id=>wwv_flow_imp.id(92906201535109271)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(333343257937072303)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92905329591109271)
,p_name=>'When Add Notes'
,p_static_id=>'when-add-notes'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(333343299238072304)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92905851189109271)
,p_event_id=>wwv_flow_imp.id(92905329591109271)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(333343299238072304)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92895099155109268)
,p_name=>'When Cancel Credit Note'
,p_static_id=>'when-cancel-credit-note'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(257228050956983031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92895617086109268)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257228050956983031)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92896111714109268)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332178163591955945)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92896588030109268)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(256984372162278006)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92897105686109269)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332188563238957436)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92897576708109269)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257347965033978822)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92898128500109269)
,p_event_id=>wwv_flow_imp.id(92895099155109268)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257346380266978806)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92898498188109269)
,p_name=>'When Cancel Discount'
,p_static_id=>'when-cancel-discount'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(257347965033978822)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92898998553109269)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257346380266978806)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92899461840109269)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257228050956983031)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92900053986109269)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257347965033978822)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92900461424109270)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(256984372162278006)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92901040336109270)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332178163591955945)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92901533484109270)
,p_event_id=>wwv_flow_imp.id(92898498188109269)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332188563238957436)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92911845232109273)
,p_name=>'When change'
,p_static_id=>'when-change'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_A_LEVEL_EDUCATION_TYPE'
,p_condition_element=>'P648_A_LEVEL_EDUCATION_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92912284767109273)
,p_event_id=>wwv_flow_imp.id(92911845232109273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_submit', 'P648_STUDENT_KEY,P648_A_LEVEL_EDUCATION_TYPE',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '',
    'V_CHECK NUMBER;',
    'V_STUDENT_KEY NUMBER := :P648_STUDENT_KEY;',
    '',
    'BEGIN',
    '    ',
    '    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_QUALIFICATION_DETAIL ',
    '    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
    '    AND O_A_LEVEL = ''A'';',
    '',
    '    IF V_CHECK > 0 THEN',
    '       DELETE STUDENT_QUALIFICATION_DETAIL ',
    '       WHERE STUDENT_KEY = :P648_STUDENT_KEY',
    '       AND O_A_LEVEL = ''A'';',
    '    END IF;',
    '    -- dbms_output.put_line(''Student Key : ''||V_STUDENT_KEY);',
    '    -- dbms_output.put_line(''Secondary Education : ''||:P648_SECONDARY_EDUCATION);',
    '',
    '    -- raise_application_error(-20111,''Student Key : ''||V_STUDENT_KEY',
    '    --                                 ||'' Secondary Education : ''||:P648_SECONDARY_EDUCATION',
    '    --                                 ||'' YYYY'');',
    '',
    '    FOR AA IN (SELECT * FROM QUALIFICATION_TEMPLATE_DETAILS',
    '               WHERE TEMPLATE_KEY IN (SELECT TEMPLATE_KEY FROM QUALIFICATION_TEMPLATE_MASTER',
    '                                        WHERE QUALIFICATION_TYPE = :P648_SECONDARY_EDUCATION',
    '                                        AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY))',
    '     LOOP',
    '',
    '        INSERT INTO STUDENT_QUALIFICATION_DETAIL',
    '        ( ',
    '            SUBJECT,',
    '            MANDATORY,',
    '            STUDENT_KEY,',
    '            O_A_LEVEL,',
    '            QUALIFICATION',
    '',
    '        )',
    '        VALUES',
    '        ( ',
    '            AA.SUBJECT,',
    '            AA.MANDATORY,',
    '            :P648_STUDENT_KEY,',
    '            ''A'',',
    '            :P648_SECONDARY_EDUCATION',
    '        );',
    '',
    '    END LOOP;',
    '',
    'END;')),
  'show_processing', 'N')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92913356709109273)
,p_event_id=>wwv_flow_imp.id(92911845232109273)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(712103864137805504)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92912835314109273)
,p_event_id=>wwv_flow_imp.id(92911845232109273)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(712103864137805504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(611118398585908757)
,p_name=>'When Dialog Close Agency'
,p_static_id=>'when-dialog-close-agency'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(591821597686538145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(611118576122908758)
,p_event_id=>wwv_flow_imp.id(611118398585908757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(577760681067736351)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(611118635145908759)
,p_event_id=>wwv_flow_imp.id(611118398585908757)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101748875195047241)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(611118139288908754)
,p_name=>'When Dialog Close Counselor'
,p_static_id=>'when-dialog-close-counselor'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(591822751338538156)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(611118225317908755)
,p_event_id=>wwv_flow_imp.id(611118139288908754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(577760681067736351)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(611118291480908756)
,p_event_id=>wwv_flow_imp.id(611118139288908754)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101748875195047241)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92892739145109267)
,p_name=>'When Hostel Accommodation = Y '
,p_static_id=>'when-hostel-accommodation-y'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_HOSTEL_ACCOMODATION'
,p_condition_element=>'P648_HOSTEL_ACCOMODATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92893701858109268)
,p_event_id=>wwv_flow_imp.id(92892739145109267)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_TYPE_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92894736836109268)
,p_event_id=>wwv_flow_imp.id(92892739145109267)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_BLOCK_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92893175404109268)
,p_event_id=>wwv_flow_imp.id(92892739145109267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_BLOCK_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92894217089109268)
,p_event_id=>wwv_flow_imp.id(92892739145109267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_TYPE_APPLY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92880100001109264)
,p_name=>'When ID Type'
,p_static_id=>'when-id-type'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_ID_TYPE'
,p_condition_element=>'P648_ID_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Passport'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92881107959109264)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92882086351109265)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92883097048109265)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-3'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92880630982109264)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92881631938109265)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92882652541109265)
,p_event_id=>wwv_flow_imp.id(92880100001109264)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-3'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59834086405558926)
,p_name=>'When Is Malaysian'
,p_static_id=>'when-is-malaysian'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_MALAYSIAN'
,p_condition_element=>'P648_MALAYSIAN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59834336578558928)
,p_event_id=>wwv_flow_imp.id(59834086405558926)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263625469461696359)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59834258581558927)
,p_event_id=>wwv_flow_imp.id(59834086405558926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263625469461696359)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92891293901109267)
,p_name=>'When Major Illnesses = Y'
,p_static_id=>'when-major-illnesses-y'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_MAJOR_ILLNESSES'
,p_condition_element=>'P648_MAJOR_ILLNESSES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92892279521109267)
,p_event_id=>wwv_flow_imp.id(92891293901109267)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_MAJOR_ILLNESSES_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92891825625109267)
,p_event_id=>wwv_flow_imp.id(92891293901109267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_MAJOR_ILLNESSES_TYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92901887649109270)
,p_name=>'When Misc Collection'
,p_static_id=>'when-misc-collection'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(257346380266978806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92902389507109270)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257346380266978806)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92902941836109270)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257228050956983031)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92903420458109270)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(257347965033978822)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92903872732109270)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332178163591955945)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92904408464109271)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(256984372162278006)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92904895075109271)
,p_event_id=>wwv_flow_imp.id(92901887649109270)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332188563238957436)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92908460456109272)
,p_name=>'When Other Race'
,p_static_id=>'when-other-race'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_RACE'
,p_condition_element=>'P648_RACE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92909516456109272)
,p_event_id=>wwv_flow_imp.id(92908460456109272)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_ETHNICITY_OTHER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92909023615109272)
,p_event_id=>wwv_flow_imp.id(92908460456109272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_ETHNICITY_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92877669743109263)
,p_name=>'When Pass = Y'
,p_static_id=>'when-pass-y'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_UCSI_PASS'
,p_condition_element=>'P648_UCSI_PASS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92878669202109264)
,p_event_id=>wwv_flow_imp.id(92877669743109263)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92879673017109264)
,p_event_id=>wwv_flow_imp.id(92877669743109263)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92878184312109264)
,p_event_id=>wwv_flow_imp.id(92877669743109263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92879256906109264)
,p_event_id=>wwv_flow_imp.id(92877669743109263)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92883551449109265)
,p_name=>'When Permanent Address = Correspondence Address'
,p_static_id=>'when-permanent-address-correspondence-address'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_PERMENANT_SAME'
,p_condition_element=>'P648_PERMENANT_SAME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92884042108109265)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92884988856109265)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_COUNTRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92885998815109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-3'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92887015776109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-4'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_CITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92887964028109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-5'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_POST_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92884531566109265)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_POST_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92885485831109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_CITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92886492313109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-3'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92887477308109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-4'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_COUNTRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92888469326109266)
,p_event_id=>wwv_flow_imp.id(92883551449109265)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-5'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(624505777728460446)
,p_name=>'When Region Outstanding Fee Whitelist'
,p_static_id=>'when-region-outstanding-fee-whitelist'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(624503217097460421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(624505881009460447)
,p_event_id=>wwv_flow_imp.id(624505777728460446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(624503217097460421)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92909863364109272)
,p_name=>'When secondary education change'
,p_static_id=>'when-secondary-education-change'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P648_SECONDARY_EDUCATION'
,p_condition_element=>'P648_SECONDARY_EDUCATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92910457510109272)
,p_event_id=>wwv_flow_imp.id(92909863364109272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_submit', 'P648_STUDENT_KEY,P648_SECONDARY_EDUCATION',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '',
    'V_CHECK NUMBER;',
    'V_STUDENT_KEY NUMBER := :P648_STUDENT_KEY;',
    '',
    'BEGIN',
    '    ',
    '    SELECT COUNT(*) INTO V_CHECK FROM STUDENT_QUALIFICATION_DETAIL ',
    '    WHERE STUDENT_KEY = :P648_STUDENT_KEY',
    '    AND O_A_LEVEL = ''O'';',
    '',
    '    IF V_CHECK > 0 THEN',
    '       DELETE STUDENT_QUALIFICATION_DETAIL ',
    '       WHERE STUDENT_KEY = :P648_STUDENT_KEY',
    '       AND O_A_LEVEL = ''O'';',
    '    END IF;',
    '    -- dbms_output.put_line(''Student Key : ''||V_STUDENT_KEY);',
    '    -- dbms_output.put_line(''Secondary Education : ''||:P648_SECONDARY_EDUCATION);',
    '',
    '    -- raise_application_error(-20111,''Student Key : ''||V_STUDENT_KEY',
    '    --                                 ||'' Secondary Education : ''||:P648_SECONDARY_EDUCATION',
    '    --                                 ||'' YYYY'');',
    '',
    '    FOR AA IN (SELECT * FROM QUALIFICATION_TEMPLATE_DETAILS',
    '               WHERE TEMPLATE_KEY IN (SELECT TEMPLATE_KEY FROM QUALIFICATION_TEMPLATE_MASTER',
    '                                        WHERE QUALIFICATION_TYPE = :P648_SECONDARY_EDUCATION',
    '                                        AND INSTITUTE_KEY = :GLO_INSTITUTE_KEY))',
    '     LOOP',
    '',
    '        INSERT INTO STUDENT_QUALIFICATION_DETAIL',
    '        ( ',
    '            SUBJECT,',
    '            MANDATORY,',
    '            STUDENT_KEY,',
    '            O_A_LEVEL,',
    '            QUALIFICATION',
    '',
    '        )',
    '        VALUES',
    '        ( ',
    '            AA.SUBJECT,',
    '            AA.MANDATORY,',
    '            :P648_STUDENT_KEY,',
    '            ''O'',',
    '            :P648_SECONDARY_EDUCATION',
    '        );',
    '',
    '    END LOOP;',
    '',
    'END;',
    '')),
  'show_processing', 'N')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92911411685109272)
,p_event_id=>wwv_flow_imp.id(92909863364109272)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(711058798203117808)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92910885430109272)
,p_event_id=>wwv_flow_imp.id(92909863364109272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(711058798203117808)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92391004555109054)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(695347641439010943)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'E_Mail - Save Interactive Grid Data'
,p_static_id=>'e-mail-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90585614770909834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92460373282109086)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(712301834622447316)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Employment History - Save Interactive Grid Data'
,p_static_id=>'employment-history-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90654983497909866
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92877281834109263)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Visa Renewal'
,p_static_id=>'generate-visa-renewal'
,p_process_sql_clob=>'NOTIFY_VISA_EXPIRY_STUDENT(:P648_STUDENT_KEY);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92558044613109130)
,p_internal_uid=>91071892049910043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92352403908109038)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(252957983277489601)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Profile'
,p_static_id=>'initialize-form-profile'
,p_internal_uid=>90547014123909818
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92396030437109056)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(726219489333651902)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Phone Number - Save Interactive Grid Data'
,p_static_id=>'phone-number-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90590640652909836
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92352814801109038)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(252957983277489601)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Profile'
,p_static_id=>'process-form-profile'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90547425016909818
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92447918586109079)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(712106109228805526)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Professional Qualification - Save Interactive Grid Data'
,p_static_id=>'professional-qualification-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90642528801909859
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92439680462109075)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(712103864137805504)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Result for A-Level - Save Interactive Grid Data'
,p_static_id=>'result-for-a-level-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90634290677909855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92429499405109071)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(711058798203117808)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Result For O-Level - Save Interactive Grid Data'
,p_static_id=>'result-for-o-level-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90624109620909851
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92580240068109140)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(806842901139016636)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Student Profile - Save Interactive Grid Data'
,p_static_id=>'student-profile-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90774850283909920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(263622980442696334)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Approval VPU'
,p_static_id=>'update-approval-vpu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE IMMIGRATION_DOCUMENT',
'SET APRROVAL_VPU = :P648_APRROVAL_VPU',
'WHERE IMMI_DOC_KEY = :P648_IMMI_DOC_KEY;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92345496597109036)
,p_internal_uid=>261817590658497114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92876131243109263)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Is_Collaboration_Student'
,p_static_id=>'update-is-collaboration-student'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'    IF :P648_IS_COLLABORATION_STUDENT = ''N'' THEN',
'',
'        UPDATE STUDENT_PROFILE ',
'        SET COLLABORATION_PARTNER_ID = NULL',
'        WHERE STUDENT_KEY = :P648_STUDENT_KEY;',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92345496597109036)
,p_internal_uid=>91070741458910043
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92580586475109140)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(806842901139016636)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Staff Task List'
,p_static_id=>'update-staff-task-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'V_ARRIVAL_STATUS NUMBER;',
'V_PASSPORT_SUB NUMBER;',
'',
'BEGIN ',
'',
'SELECT COUNT(*) INTO V_ARRIVAL_STATUS FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P648_STUDENT_KEY',
'AND ARRIVAL_STATUS IS NOT NULL;',
'',
'IF V_ARRIVAL_STATUS > 0 THEN',
'',
'     UPDATE STAFF_TASK_LIST',
'     SET STATUS = ''Completed'',',
'         TASK_COMPLETED = ''Y''',
'     WHERE NVL(TASK_COMPLETED,''N'') = ''N''',
'     AND STUDENT_KEY = :P648_STUDENT_KEY',
'     AND JOB = ''IO Report Arrival'';',
'',
'END IF;',
'',
'',
'SELECT COUNT(*) INTO V_PASSPORT_SUB FROM STUDENT_PROFILE',
'WHERE STUDENT_KEY = :P909_STUDENT_KEY',
'AND PASSPORT_SUBMISSION_DATE IS NOT NULL;',
'',
'IF V_PASSPORT_SUB > 0 THEN',
'',
'    UPDATE STAFF_TASK_LIST',
'    SET TASK_COMPLETED = ''Y'',',
'        STATUS = ''Completed''',
'    WHERE NVL(TASK_COMPLETED,''N'') = ''N''',
'    AND STUDENT_KEY = :P648_STUDENT_KEY',
'    AND JOB = ''Passport Submission Date'';',
'',
'END IF;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>90775196690909920
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
