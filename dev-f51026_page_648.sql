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
,p_default_application_id=>51026
,p_default_id_offset=>207890427743817395
,p_default_owner=>'PLUTO_PREMIUM'
);
end;
/
 
prompt APPLICATION 51026 - PLUTO PREMIUM STAFF 26
--
-- Application Export:
--   Application:     51026
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
 p_id=>wwv_flow_imp.id(465238392777796217)
,p_plug_name=>'1 (One) Time Discount '
,p_static_id=>'1-one-time-discount'
,p_parent_plug_id=>wwv_flow_imp.id(1053008171463504242)
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
 p_id=>wwv_flow_imp.id(465238548341796218)
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
 p_id=>wwv_flow_imp.id(300616362287926599)
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
 p_id=>wwv_flow_imp.id(300613886239926599)
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
 p_id=>wwv_flow_imp.id(300613133016926598)
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
 p_id=>wwv_flow_imp.id(300612714757926598)
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
 p_id=>wwv_flow_imp.id(300615966596926599)
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
 p_id=>wwv_flow_imp.id(300613508514926598)
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
 p_id=>wwv_flow_imp.id(300614749256926599)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300615542690926599)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300614345479926599)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300615169150926599)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(465254911971899364)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656703'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:SFM_KEY:TRANSACTION_DATE:PAYMENT_DUE_DATE:TRANSACTION_TYPE:TRANSACTION_NUMBER:TYPE_OF_FEES:TRANSACTION_STATUS:TRANSACTION_AMOUNT:ACTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919994127698622897)
,p_plug_name=>'A-Level Qualification'
,p_static_id=>'a-level-qualification'
,p_parent_plug_id=>wwv_flow_imp.id(918948789672935199)
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
 p_id=>wwv_flow_imp.id(462476156046009717)
,p_plug_name=>'ACADEMIC INFORMATION'
,p_static_id=>'academic-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(927902073552534108)
,p_plug_name=>'Academic Documents'
,p_static_id=>'academic-documents'
,p_parent_plug_id=>wwv_flow_imp.id(927901971511534107)
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
 p_id=>wwv_flow_imp.id(927902203720534110)
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
 p_id=>wwv_flow_imp.id(300498187954926546)
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
 p_id=>wwv_flow_imp.id(300496242017926546)
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
 p_id=>wwv_flow_imp.id(300495387327926545)
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
 p_id=>wwv_flow_imp.id(300495062357926545)
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
 p_id=>wwv_flow_imp.id(300495826380926545)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300497478408926546)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300497021489926546)
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
 p_id=>wwv_flow_imp.id(300497801539926546)
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
 p_id=>wwv_flow_imp.id(300496673715926546)
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
 p_id=>wwv_flow_imp.id(300494620317926545)
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
 p_id=>wwv_flow_imp.id(300494241325926545)
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
 p_id=>wwv_flow_imp.id(927997574122767777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENET_DATE:DOCUMENT_TYPE:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(918948715634935198)
,p_plug_name=>'Academic Information and Attachments'
,p_static_id=>'academic-information-and-attachments'
,p_parent_plug_id=>wwv_flow_imp.id(461477987090194927)
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
 p_id=>wwv_flow_imp.id(533884186444102264)
,p_plug_name=>'Academic Records'
,p_static_id=>'academic-records'
,p_parent_plug_id=>wwv_flow_imp.id(533837012675906790)
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
 p_id=>wwv_flow_imp.id(533884309319102265)
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
 p_id=>wwv_flow_imp.id(471515494548513750)
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
 p_id=>wwv_flow_imp.id(300364407320926487)
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
 p_id=>wwv_flow_imp.id(300367228523926488)
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
 p_id=>wwv_flow_imp.id(471515323183513749)
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
 p_id=>wwv_flow_imp.id(300369250535926489)
,p_db_column_name=>'FINAL_GRADE_CONFIRMED'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300369539043926489)
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
 p_id=>wwv_flow_imp.id(471515655489513752)
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
 p_id=>wwv_flow_imp.id(300362445588926486)
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
 p_id=>wwv_flow_imp.id(300370290682926490)
,p_db_column_name=>'IS_BARRED'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Barred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300369930052926490)
,p_db_column_name=>'IS_PUBLISHED'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Released'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(471515729429513753)
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
 p_id=>wwv_flow_imp.id(300364869397926487)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Programme'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300365224325926487)
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
 p_id=>wwv_flow_imp.id(300370729359926490)
,p_db_column_name=>'REMARKS'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(471515610313513751)
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
 p_id=>wwv_flow_imp.id(300364048689926486)
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
 p_id=>wwv_flow_imp.id(300362012973926485)
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
 p_id=>wwv_flow_imp.id(300362801646926486)
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
 p_id=>wwv_flow_imp.id(300363220314926486)
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
 p_id=>wwv_flow_imp.id(300363632683926486)
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
 p_id=>wwv_flow_imp.id(300365622131926487)
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
 p_id=>wwv_flow_imp.id(300366475392926488)
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
 p_id=>wwv_flow_imp.id(300366034118926487)
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
 p_id=>wwv_flow_imp.id(300366870457926488)
,p_db_column_name=>'SUBJECT_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Course'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300368411234926489)
,p_db_column_name=>'SUBJECT_STATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(534492466295333627)
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
 p_id=>wwv_flow_imp.id(462476297503009719)
,p_plug_name=>'ACCOMMODATION<br>INFORMATION'
,p_static_id=>'accommodation-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(1045324723909464819)
,p_plug_name=>'Address'
,p_static_id=>'address'
,p_parent_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(1045325726053464829)
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
 p_id=>wwv_flow_imp.id(1045325840620464830)
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
 p_id=>wwv_flow_imp.id(1045325142236464823)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1045325193683464824)
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
 p_id=>wwv_flow_imp.id(1045325915816464831)
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
 p_id=>wwv_flow_imp.id(1045326028570464832)
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
 p_id=>wwv_flow_imp.id(1045325609831464828)
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
 p_id=>wwv_flow_imp.id(1045324938405464821)
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
 p_id=>wwv_flow_imp.id(1045326102752464833)
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
 p_id=>wwv_flow_imp.id(1045325413479464826)
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
 p_id=>wwv_flow_imp.id(1045326246325464834)
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
 p_id=>wwv_flow_imp.id(1045326370797464835)
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
 p_id=>wwv_flow_imp.id(1045324885144464820)
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
 p_id=>wwv_flow_imp.id(1045417307355614716)
,p_interactive_grid_id=>wwv_flow_imp.id(1045324885144464820)
,p_static_id=>'6807868'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1045417531080614717)
,p_report_id=>wwv_flow_imp.id(1045417307355614716)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045417988497614719)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1045324938405464821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045418935010614722)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1045325142236464823)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045420214103614727)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1045325413479464826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045421125513614730)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1045325609831464828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045422037988614733)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1045325726053464829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045422974504614736)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1045325840620464830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045423827135614738)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1045325915816464831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045424756862614741)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1045326028570464832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045425682034614744)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1045326102752464833)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045426556862614747)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1045326246325464834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1045427466607614750)
,p_view_id=>wwv_flow_imp.id(1045417531080614717)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1045326370797464835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(754579664305565638)
,p_plug_name=>'Airport Pickup'
,p_static_id=>'airport-pickup'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(754579712306565639)
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
 p_id=>wwv_flow_imp.id(300432858238926518)
,p_db_column_name=>'ARRIVE_AIRPORT'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Point of Arrival'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300430394263926517)
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
 p_id=>wwv_flow_imp.id(300430866078926518)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300432022655926518)
,p_db_column_name=>'IS_IMMIGRATION_ISSUES'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Immigration'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300431187396926518)
,p_db_column_name=>'IS_NO_SHOW'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'No Show'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300431648203926518)
,p_db_column_name=>'IS_PICKED_UP'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Picked Up'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300432470604926518)
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
 p_id=>wwv_flow_imp.id(756458819674207982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654868'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ARRIVE_DATE:ARRIVE_AIRPORT:IS_PICKED_UP:IS_NO_SHOW:IS_IMMIGRATION_ISSUES:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(439030006383376261)
,p_plug_name=>'Appendix 2'
,p_static_id=>'appendix'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(439030218166376263)
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
 p_id=>wwv_flow_imp.id(313689953263649728)
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
 p_id=>wwv_flow_imp.id(313920333380936139)
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
 p_id=>wwv_flow_imp.id(439030290044376264)
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
 p_id=>wwv_flow_imp.id(439031157046376272)
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
 p_id=>wwv_flow_imp.id(313920520263936141)
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
 p_id=>wwv_flow_imp.id(313920158499936137)
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
 p_id=>wwv_flow_imp.id(313920240237936138)
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
 p_id=>wwv_flow_imp.id(439031082700376271)
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
 p_id=>wwv_flow_imp.id(439030791706376269)
,p_db_column_name=>'FEE_CATEGORY'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Fee Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(439030934408376270)
,p_db_column_name=>'FEE_NAME'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Fee Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(881519498385867063)
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
 p_id=>wwv_flow_imp.id(439030438813376265)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>70
,p_column_identifier=>'B'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(439030493404376266)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>80
,p_column_identifier=>'C'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313920002673936136)
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
 p_id=>wwv_flow_imp.id(439030617327376267)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>90
,p_column_identifier=>'D'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(441422878264836899)
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
 p_id=>wwv_flow_imp.id(393446521959908925)
,p_name=>'Application List'
,p_static_id=>'application-list'
,p_parent_plug_id=>wwv_flow_imp.id(533837012675906790)
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
 p_id=>wwv_flow_imp.id(393447616639908936)
,p_query_column_id=>12
,p_column_alias=>'ACADEMIC_LEVEL'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(471515133845513747)
,p_query_column_id=>15
,p_column_alias=>'APPLICANT_ACCEPTED_OFFER'
,p_column_display_sequence=>150
,p_column_heading=>'Is Digitally Signed?'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(471515068218513746)
,p_query_column_id=>14
,p_column_alias=>'APPLICANT_ACCEPT_DATE'
,p_column_display_sequence=>160
,p_column_heading=>'Digital Signed Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393447487401908935)
,p_query_column_id=>11
,p_column_alias=>'APPLICANT_ACCEPT_REJECT_OFFER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379298235817795235)
,p_query_column_id=>13
,p_column_alias=>'APPLICATION_DOC_DUE_DATE'
,p_column_display_sequence=>130
,p_column_heading=>'Application Document<br>Due Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393446782565908927)
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
 p_id=>wwv_flow_imp.id(410101250475159439)
,p_query_column_id=>2
,p_column_alias=>'APPLICATION_NUMBER_2'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379298814987795240)
,p_query_column_id=>4
,p_column_alias=>'APPLY_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Apply Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393446962240908929)
,p_query_column_id=>5
,p_column_alias=>'CAMPUS'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393446633143908926)
,p_query_column_id=>1
,p_column_alias=>'COURSE_APPLIED_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379298953632795242)
,p_query_column_id=>10
,p_column_alias=>'IS_REVIEW_COMPLETED'
,p_column_display_sequence=>90
,p_column_heading=>'Review Completed'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(228291415100224898)
,p_query_column_id=>17
,p_column_alias=>'JSOFL'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(379298904990795241)
,p_query_column_id=>9
,p_column_alias=>'OFFER_DECISION'
,p_column_display_sequence=>110
,p_column_heading=>'Decision'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(471515232485513748)
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
 p_id=>wwv_flow_imp.id(393446997790908930)
,p_query_column_id=>6
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>80
,p_column_heading=>'Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393447164374908931)
,p_query_column_id=>7
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(256313008021640301)
,p_query_column_id=>18
,p_column_alias=>'SPECIAL_ARRANGEMENT'
,p_column_display_sequence=>200
,p_column_heading=>'Special Arrangement'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(393447224891908932)
,p_query_column_id=>8
,p_column_alias=>'STUDY_INTAKE'
,p_column_display_sequence=>40
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(541233685680889698)
,p_plug_name=>'Attached Document'
,p_static_id=>'attached-document'
,p_parent_plug_id=>wwv_flow_imp.id(541233577032889697)
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
 p_id=>wwv_flow_imp.id(541235413784889716)
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
 p_id=>wwv_flow_imp.id(300419657917926513)
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
 p_id=>wwv_flow_imp.id(253897626003396696)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>230
,p_column_identifier=>'M'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300417613152926512)
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
 p_id=>wwv_flow_imp.id(300416858754926512)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300416414171926511)
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
 p_id=>wwv_flow_imp.id(300417243405926512)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300418826311926512)
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
 p_id=>wwv_flow_imp.id(300418406437926512)
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
 p_id=>wwv_flow_imp.id(300419205600926512)
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
 p_id=>wwv_flow_imp.id(300418041275926512)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300415997727926511)
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
 p_id=>wwv_flow_imp.id(300415588583926511)
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
 p_id=>wwv_flow_imp.id(471516396606513759)
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
 p_id=>wwv_flow_imp.id(541387973595334216)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENET_DATE:LAST_UPDATED_BY:DEPARTMENT:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(920190892011264698)
,p_plug_name=>'Attachment'
,p_static_id=>'attachment'
,p_parent_plug_id=>wwv_flow_imp.id(918948715634935198)
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
 p_id=>wwv_flow_imp.id(413972019730782626)
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
 p_id=>wwv_flow_imp.id(602537156784753340)
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
 p_id=>wwv_flow_imp.id(920191285599264701)
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
 p_id=>wwv_flow_imp.id(602537088530753339)
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
 p_id=>wwv_flow_imp.id(920191773416264706)
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
 p_id=>wwv_flow_imp.id(1020301986087949507)
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
 p_id=>wwv_flow_imp.id(920192068384264709)
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
 p_id=>wwv_flow_imp.id(602537399659753342)
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
 p_id=>wwv_flow_imp.id(602537242947753341)
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
 p_id=>wwv_flow_imp.id(310446350774539253)
,p_plug_name=>'Attachment'
,p_static_id=>'attachment-2'
,p_parent_plug_id=>wwv_flow_imp.id(310445514918539245)
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
 p_id=>wwv_flow_imp.id(310446438008539254)
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
 p_id=>wwv_flow_imp.id(310446886821539259)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(310446881785539258)
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
 p_id=>wwv_flow_imp.id(310446624008539256)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(310446700952539257)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(310446537408539255)
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
 p_id=>wwv_flow_imp.id(422752803799845352)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878065'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_DOCUMENT_KEY:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:CREATED_DATE:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(461475135927194898)
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
 p_id=>wwv_flow_imp.id(247293156447116116)
,p_plug_name=>'Briefing Form'
,p_static_id=>'briefing-form'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(247293272431116117)
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
 p_id=>wwv_flow_imp.id(247293598672116120)
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
 p_id=>wwv_flow_imp.id(247293945518116124)
,p_db_column_name=>'BRIEFING_BY'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Briefing By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(247293384667116118)
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
 p_id=>wwv_flow_imp.id(247293787236116122)
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
 p_id=>wwv_flow_imp.id(247293849209116123)
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
 p_id=>wwv_flow_imp.id(247293671549116121)
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
 p_id=>wwv_flow_imp.id(398766392285522238)
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
 p_id=>wwv_flow_imp.id(247293472662116119)
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
 p_id=>wwv_flow_imp.id(247294158274116126)
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
 p_id=>wwv_flow_imp.id(247294062094116125)
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
 p_id=>wwv_flow_imp.id(398766259320522237)
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
 p_id=>wwv_flow_imp.id(247688896476909138)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'397985'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGRAMME:BRIEFING_DATE:ADMINISTRATION_FEES_PAYMENT_DATE:POST_ARRIVAL_MEDICAL_SCREENING_DATE:HANDOVER_PASSPORT_ISSD_DATE:MPC_START_DATE:BRIEFING_BY:STUDENT_SIGNATURE:STUDENT_SIGNATURE_DATE:PRINT_BF'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(465236808010796201)
,p_plug_name=>'Collection'
,p_static_id=>'collection'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(465236968945796202)
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
 p_id=>wwv_flow_imp.id(300658778087926617)
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
 p_id=>wwv_flow_imp.id(438558841783588333)
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
 p_id=>wwv_flow_imp.id(300658381853926617)
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
 p_id=>wwv_flow_imp.id(399100144297367267)
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
 p_id=>wwv_flow_imp.id(300657534660926617)
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
 p_id=>wwv_flow_imp.id(300657970700926617)
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
 p_id=>wwv_flow_imp.id(388706637156962542)
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
 p_id=>wwv_flow_imp.id(268444489291627032)
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
 p_id=>wwv_flow_imp.id(300659086126926617)
,p_db_column_name=>'MOP'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Mode Of Payment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(306025985762847426)
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
 p_id=>wwv_flow_imp.id(268444168149627029)
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
 p_id=>wwv_flow_imp.id(300654356159926615)
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
 p_id=>wwv_flow_imp.id(378802199561924974)
,p_db_column_name=>'REMARKS'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300655566880926616)
,p_db_column_name=>'SFM_KEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sfm Key'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300655096056926616)
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
 p_id=>wwv_flow_imp.id(300655976956926616)
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
 p_id=>wwv_flow_imp.id(300656784420926616)
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
 p_id=>wwv_flow_imp.id(300657136560926617)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300656361625926616)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300654768917926616)
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
 p_id=>wwv_flow_imp.id(465248098962826803)
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
 p_id=>wwv_flow_imp.id(461477750370194924)
,p_plug_name=>'Contact Info'
,p_static_id=>'contact-info'
,p_parent_plug_id=>wwv_flow_imp.id(461477987090194927)
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
 p_id=>wwv_flow_imp.id(310445514918539245)
,p_plug_name=>'Contact Log'
,p_static_id=>'contact-log'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(927847688711322844)
,p_plug_name=>'Contacts and Family'
,p_static_id=>'contacts-and-family'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(461478294015194930)
,p_plug_name=>'Correspondence Address'
,p_static_id=>'correspondence-address'
,p_parent_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(785651108811553746)
,p_plug_name=>'Counselor & Agency'
,p_static_id=>'counselor-agency'
,p_parent_plug_id=>wwv_flow_imp.id(461477987090194927)
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
 p_id=>wwv_flow_imp.id(785651125375553747)
,p_plug_name=>'Counselor / Agency'
,p_static_id=>'counselor-agency-2'
,p_parent_plug_id=>wwv_flow_imp.id(785651108811553746)
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
 p_id=>wwv_flow_imp.id(785651235494553748)
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
 p_id=>wwv_flow_imp.id(785652054584553756)
,p_db_column_name=>'APPLICATION_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Application Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785652151494553757)
,p_db_column_name=>'ASSIGN_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Assign By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785652239718553758)
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
 p_id=>wwv_flow_imp.id(799711993196355539)
,p_db_column_name=>'ASSIGN_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Counselor / Agency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(799711826986355538)
,p_db_column_name=>'ASSIGN_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Assign Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785651719124553753)
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
 p_id=>wwv_flow_imp.id(785651898701553754)
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
 p_id=>wwv_flow_imp.id(785651930725553755)
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
 p_id=>wwv_flow_imp.id(801082662225340213)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5913869'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGN_TYPE:ASSIGN_NAME:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:APPLICATION_NUMBER:ASSIGN_BY:ASSIGN_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(309639130574864634)
,p_plug_name=>'Counselor & Agent'
,p_static_id=>'counselor-agent'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(785652376838553759)
,p_plug_name=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_static_id=>'counselor-s-agent-s-agency-s-involvement-audit-trail'
,p_parent_plug_id=>wwv_flow_imp.id(785651108811553746)
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
 p_id=>wwv_flow_imp.id(785652430021553760)
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
 p_id=>wwv_flow_imp.id(785652643238553762)
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
 p_id=>wwv_flow_imp.id(785652581859553761)
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
 p_id=>wwv_flow_imp.id(785652867658553764)
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
 p_id=>wwv_flow_imp.id(785652773345553763)
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
 p_id=>wwv_flow_imp.id(785652953351553765)
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
 p_id=>wwv_flow_imp.id(801179808686527992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5914840'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTIVITY_DATE:ACTIVITIES:LAST_UPDATED_DATE:LAST_UPDATED_BY:REMARKS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(309639302938864636)
,p_plug_name=>'Counselor''s / Agent''s/ Agency''s Involvement Audit Trail'
,p_static_id=>'counselor-s-agent-s-agency-s-involvement-audit-trail-2'
,p_parent_plug_id=>wwv_flow_imp.id(309639130574864634)
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
 p_id=>wwv_flow_imp.id(309639508829864638)
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
 p_id=>wwv_flow_imp.id(309639719760864640)
,p_db_column_name=>'ACTIVITIES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activities'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(309639612158864639)
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
 p_id=>wwv_flow_imp.id(309639978158864642)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(309639796727864641)
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
 p_id=>wwv_flow_imp.id(422752135451845340)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878058'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTIVITY_DATE:ACTIVITIES:LAST_UPDATED_DATE:LAST_UPDATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(465118478700800426)
,p_plug_name=>'Credit Note'
,p_static_id=>'credit-br-note'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(465118582608800427)
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
 p_id=>wwv_flow_imp.id(300648571245926613)
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
 p_id=>wwv_flow_imp.id(300649311766926613)
,p_db_column_name=>'CN_FOR_INVOICE_ITEM'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'CN For Invoice Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300646159970926612)
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
 p_id=>wwv_flow_imp.id(300648893631926613)
,p_db_column_name=>'REMARKS'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300645321248926612)
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
 p_id=>wwv_flow_imp.id(300644971764926611)
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
 p_id=>wwv_flow_imp.id(300647733795926612)
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
 p_id=>wwv_flow_imp.id(300645686172926612)
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
 p_id=>wwv_flow_imp.id(300646922228926612)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'CN Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300648109116926613)
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
 p_id=>wwv_flow_imp.id(300646492146926612)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300647346193926612)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'For Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(465159572118539759)
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
 p_id=>wwv_flow_imp.id(1034283248823348100)
,p_plug_name=>'Credit Transfer'
,p_static_id=>'credit-transfer'
,p_parent_plug_id=>wwv_flow_imp.id(462476156046009717)
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
 p_id=>wwv_flow_imp.id(461477912217194926)
,p_plug_name=>'Details'
,p_static_id=>'details'
,p_parent_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(541233577032889697)
,p_plug_name=>'DIARY'
,p_static_id=>'diary'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(461479889034194946)
,p_plug_name=>'Disabilities'
,p_static_id=>'disabilities'
,p_parent_plug_id=>wwv_flow_imp.id(461478162779194928)
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
 p_id=>wwv_flow_imp.id(885634363644350522)
,p_plug_name=>'DISCIPLINE NFORMATION'
,p_static_id=>'discipline-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(885634464759350523)
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
 p_id=>wwv_flow_imp.id(885634772663350526)
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
 p_id=>wwv_flow_imp.id(885635526817350534)
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
 p_id=>wwv_flow_imp.id(885635699549350535)
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
 p_id=>wwv_flow_imp.id(885635162436350530)
,p_db_column_name=>'DISCIPLINE_DESCRIPTIONS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Discipline Descriptions'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(886936091640909840)
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
 p_id=>wwv_flow_imp.id(885635300797350531)
,p_db_column_name=>'DISCIPLINE_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Discipline Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(886936011428909839)
,p_db_column_name=>'DISCIPLINE_TYPE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Discipline Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(885635059407350529)
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
 p_id=>wwv_flow_imp.id(885635462458350533)
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
 p_id=>wwv_flow_imp.id(885635322936350532)
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
 p_id=>wwv_flow_imp.id(886936182950909841)
,p_db_column_name=>'INCIDENT_LOCATION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Incident Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(885634696449350525)
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
 p_id=>wwv_flow_imp.id(885635938461350538)
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
 p_id=>wwv_flow_imp.id(885635801010350536)
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
 p_id=>wwv_flow_imp.id(885635912650350537)
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
 p_id=>wwv_flow_imp.id(885636043123350539)
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
 p_id=>wwv_flow_imp.id(885636161146350540)
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
 p_id=>wwv_flow_imp.id(886935667686909836)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(886935781499909837)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(885636243505350541)
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
 p_id=>wwv_flow_imp.id(885634926912350528)
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
 p_id=>wwv_flow_imp.id(885634548310350524)
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
 p_id=>wwv_flow_imp.id(886935912716909838)
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
 p_id=>wwv_flow_imp.id(885634870689350527)
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
 p_id=>wwv_flow_imp.id(885813115945675066)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6761173'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGRAMME_CODE:PROGRAMME_NAME:SEMESTER:DISCIPLINE_TYPE:DISCIPLINE_POINT:DISCIPLINE_DESCRIPTIONS:DISCIPLINE_STATUS:INCIDENT_DATE:INCIDENT_LOCATION:LAST_UPDATED_BY:LAST_UPDATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1053008171463504242)
,p_plug_name=>'Discount'
,p_static_id=>'discount'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(903238069182828338)
,p_plug_name=>'Email'
,p_static_id=>'email'
,p_parent_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(909116042617634698)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(909116112273634699)
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
 p_id=>wwv_flow_imp.id(903238521318828343)
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
 p_id=>wwv_flow_imp.id(930057639441340142)
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
 p_id=>wwv_flow_imp.id(930057937412340145)
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
 p_id=>wwv_flow_imp.id(903238330573828341)
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
 p_id=>wwv_flow_imp.id(930057853456340144)
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
 p_id=>wwv_flow_imp.id(930057774668340143)
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
 p_id=>wwv_flow_imp.id(903238157867828339)
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
 p_id=>wwv_flow_imp.id(909122171522635947)
,p_interactive_grid_id=>wwv_flow_imp.id(903238157867828339)
,p_static_id=>'5444916'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(909122346557635949)
,p_report_id=>wwv_flow_imp.id(909122171522635947)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(909123782656635955)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(903238330573828341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(909125584057635961)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(903238521318828343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(909128199494642930)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(909116042617634698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936257218670531062)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(930057639441340142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936258114069531065)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(930057774668340143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936259074331531068)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(930057853456340144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936259976237531071)
,p_view_id=>wwv_flow_imp.id(909122346557635949)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(930057937412340145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1058423740920238435)
,p_plug_name=>'Email Log'
,p_static_id=>'email-log'
,p_parent_plug_id=>wwv_flow_imp.id(1058423627466238434)
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
 p_id=>wwv_flow_imp.id(1058423868259238436)
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
 p_id=>wwv_flow_imp.id(300543010714926567)
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
 p_id=>wwv_flow_imp.id(300543461239926567)
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
 p_id=>wwv_flow_imp.id(300542658489926567)
,p_db_column_name=>'EMAIL_SUBJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Email Subject'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300543821718926568)
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
 p_id=>wwv_flow_imp.id(300544204847926568)
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
 p_id=>wwv_flow_imp.id(1059991676231595020)
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
 p_id=>wwv_flow_imp.id(310447007506539260)
,p_plug_name=>'Emails sent during workflow'
,p_static_id=>'emails-sent-during-workflow'
,p_parent_plug_id=>wwv_flow_imp.id(310445514918539245)
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
 p_id=>wwv_flow_imp.id(310447151361539261)
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
 p_id=>wwv_flow_imp.id(310447389290539264)
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
 p_id=>wwv_flow_imp.id(310447556250539265)
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
 p_id=>wwv_flow_imp.id(310447305929539263)
,p_db_column_name=>'EMAIL_SUBJECT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Email Subject'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(310447239550539262)
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
 p_id=>wwv_flow_imp.id(422753544551845355)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1878072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEL_KEY:EMAIL_SUBJECT:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(920192262366264711)
,p_plug_name=>'Employment History'
,p_static_id=>'employment-history'
,p_parent_plug_id=>wwv_flow_imp.id(918948715634935198)
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
 p_id=>wwv_flow_imp.id(920193005614264719)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(920193120702264720)
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
 p_id=>wwv_flow_imp.id(920192631864264715)
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
 p_id=>wwv_flow_imp.id(920192716414264716)
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
 p_id=>wwv_flow_imp.id(920192861236264717)
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
 p_id=>wwv_flow_imp.id(920192456661264713)
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
 p_id=>wwv_flow_imp.id(920192895004264718)
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
 p_id=>wwv_flow_imp.id(920192510431264714)
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
 p_id=>wwv_flow_imp.id(920192380079264712)
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
 p_id=>wwv_flow_imp.id(920278156354345381)
,p_interactive_grid_id=>wwv_flow_imp.id(920192380079264712)
,p_static_id=>'5556476'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(920278299672345382)
,p_report_id=>wwv_flow_imp.id(920278156354345381)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920278839514345385)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(920192456661264713)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920279699787345388)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(920192510431264714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920280661897345393)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(920192631864264715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920281547541345397)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(920192716414264716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920282432614345400)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(920192861236264717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920283308681345403)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(920192895004264718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920284242943345406)
,p_view_id=>wwv_flow_imp.id(920278299672345382)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(920193005614264719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919998611061622942)
,p_plug_name=>'English Proficiency'
,p_static_id=>'english-proficiency'
,p_parent_plug_id=>wwv_flow_imp.id(918948715634935198)
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
 p_id=>wwv_flow_imp.id(927904843285534136)
,p_plug_name=>'Enrollment Documents'
,p_static_id=>'enrollment-documents'
,p_parent_plug_id=>wwv_flow_imp.id(927901971511534107)
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
 p_id=>wwv_flow_imp.id(927904935389534137)
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
 p_id=>wwv_flow_imp.id(300503608463926549)
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
 p_id=>wwv_flow_imp.id(300501628674926548)
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
 p_id=>wwv_flow_imp.id(300500395997926547)
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
 p_id=>wwv_flow_imp.id(471516961740513765)
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
 p_id=>wwv_flow_imp.id(300501224823926548)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300502833565926548)
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
 p_id=>wwv_flow_imp.id(300502483512926548)
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
 p_id=>wwv_flow_imp.id(300503224844926548)
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
 p_id=>wwv_flow_imp.id(300502072053926548)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300499995130926547)
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
 p_id=>wwv_flow_imp.id(300499632252926547)
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
 p_id=>wwv_flow_imp.id(471516847159513764)
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
 p_id=>wwv_flow_imp.id(928193041086226236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENET_DATE:LAST_UPDATED_BY:DOCUMENT_TYPE:DOCUMENT_REMARK:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(341450327972689296)
,p_plug_name=>'Exit Stamp'
,p_static_id=>'exit-stamp'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(341452302380689315)
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
 p_id=>wwv_flow_imp.id(341452369933689316)
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
 p_id=>wwv_flow_imp.id(238611450139053314)
,p_db_column_name=>'CATEGORY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238611538969053315)
,p_db_column_name=>'CHECKOUT_MEMO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Checkout Memo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238611626361053316)
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
 p_id=>wwv_flow_imp.id(341454598182689338)
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
 p_id=>wwv_flow_imp.id(146311827865072045)
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
 p_id=>wwv_flow_imp.id(146311763611072044)
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
 p_id=>wwv_flow_imp.id(341453568741689328)
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
 p_id=>wwv_flow_imp.id(341454349660689336)
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
 p_id=>wwv_flow_imp.id(341453659831689329)
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
 p_id=>wwv_flow_imp.id(341453774460689330)
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
 p_id=>wwv_flow_imp.id(341453886115689331)
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
 p_id=>wwv_flow_imp.id(146312071202072047)
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
 p_id=>wwv_flow_imp.id(146311572425072042)
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
 p_id=>wwv_flow_imp.id(146311464770072041)
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
 p_id=>wwv_flow_imp.id(341453106649689323)
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
 p_id=>wwv_flow_imp.id(341454303099689335)
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
 p_id=>wwv_flow_imp.id(341453172720689324)
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
 p_id=>wwv_flow_imp.id(341453310751689325)
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
 p_id=>wwv_flow_imp.id(341453392771689326)
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
 p_id=>wwv_flow_imp.id(146311938637072046)
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
 p_id=>wwv_flow_imp.id(146311684886072043)
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
 p_id=>wwv_flow_imp.id(146311373727072040)
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
 p_id=>wwv_flow_imp.id(341452812160689320)
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
 p_id=>wwv_flow_imp.id(341452505107689317)
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
 p_id=>wwv_flow_imp.id(341452923573689321)
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
 p_id=>wwv_flow_imp.id(341453009942689322)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(341454479892689337)
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
 p_id=>wwv_flow_imp.id(238611707674053317)
,p_db_column_name=>'RETURN_HOME_COUNTRY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Return Home/Country'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(341454006667689332)
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
 p_id=>wwv_flow_imp.id(341453521310689327)
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
 p_id=>wwv_flow_imp.id(341452602907689318)
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
 p_id=>wwv_flow_imp.id(341452691159689319)
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
 p_id=>wwv_flow_imp.id(343471925428895590)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BIL:EXIT_STAMP:EXIT_STAMP_UPLOAD:EXIT_STAMP_UPLOAD_DATE:ENTRY_STAMP:ENTRY_STAMP_UPLOAD:ENTRY_STAMP_UPLOAD_DATE:REMARKS:EDIT_LINK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(860684245287348829)
,p_name=>'External / Exemption'
,p_static_id=>'external-exemption'
,p_parent_plug_id=>wwv_flow_imp.id(1034283248823348100)
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
 p_id=>wwv_flow_imp.id(860684729839348834)
,p_query_column_id=>6
,p_column_alias=>'EXT_LEVEL1_APPREJ_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Approval By<br>(Faculty)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860684899445348835)
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
 p_id=>wwv_flow_imp.id(860684706242348833)
,p_query_column_id=>5
,p_column_alias=>'EXT_LEVEL1_STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Approval Status<br>(Faculty)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685115354348837)
,p_query_column_id=>9
,p_column_alias=>'EXT_LEVEL2_APPREJ_BY'
,p_column_display_sequence=>90
,p_column_heading=>'Approval By<br>(Faculty Dean)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685176374348838)
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
 p_id=>wwv_flow_imp.id(860684940403348836)
,p_query_column_id=>8
,p_column_alias=>'EXT_LEVEL2_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Approval Status<br>(Faculty Dean)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686908353348855)
,p_query_column_id=>12
,p_column_alias=>'EXT_LEVEL3_APPREJ_BY'
,p_column_display_sequence=>130
,p_column_heading=>'Approval By<br>(RO)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686974907348856)
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
 p_id=>wwv_flow_imp.id(860686770173348854)
,p_query_column_id=>11
,p_column_alias=>'EXT_LEVEL3_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'Approval Status<br>(RO)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860684579506348832)
,p_query_column_id=>4
,p_column_alias=>'EXT_PROGRAMME_FROM'
,p_column_display_sequence=>40
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860684489498348831)
,p_query_column_id=>3
,p_column_alias=>'EXT_UNIVERSITY_FROM'
,p_column_display_sequence=>30
,p_column_heading=>'From University'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686656418348853)
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
 p_id=>wwv_flow_imp.id(860684405268348830)
,p_query_column_id=>1
,p_column_alias=>'TRANSFER_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(462476257034009718)
,p_plug_name=>'FINANCE INFORMATION'
,p_static_id=>'finance-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(464874497929095398)
,p_plug_name=>'Finance Option'
,p_static_id=>'finance-option'
,p_parent_plug_id=>wwv_flow_imp.id(462476257034009718)
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
 p_id=>wwv_flow_imp.id(1047740090497732242)
,p_plug_name=>'Financial Statement'
,p_static_id=>'financial-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(1054565368516829126)
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
 p_id=>wwv_flow_imp.id(993876972943033051)
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
 p_id=>wwv_flow_imp.id(300598675722926592)
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
 p_id=>wwv_flow_imp.id(300594645671926590)
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
 p_id=>wwv_flow_imp.id(300597787714926592)
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
 p_id=>wwv_flow_imp.id(300598256853926592)
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
 p_id=>wwv_flow_imp.id(399096583010367231)
,p_db_column_name=>'ENR_NUMBER'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'ENR Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300606203874926595)
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
 p_id=>wwv_flow_imp.id(268444298393627030)
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
 p_id=>wwv_flow_imp.id(300601422916926593)
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
 p_id=>wwv_flow_imp.id(300599067188926592)
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
 p_id=>wwv_flow_imp.id(300594228994926590)
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
 p_id=>wwv_flow_imp.id(300596283158926591)
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
 p_id=>wwv_flow_imp.id(300599877313926592)
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
 p_id=>wwv_flow_imp.id(300600608176926593)
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
 p_id=>wwv_flow_imp.id(300595402116926591)
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
 p_id=>wwv_flow_imp.id(300601032586926593)
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
 p_id=>wwv_flow_imp.id(268443847783627026)
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
 p_id=>wwv_flow_imp.id(300600276566926593)
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
 p_id=>wwv_flow_imp.id(300605426631926595)
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
 p_id=>wwv_flow_imp.id(268444522872627033)
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
 p_id=>wwv_flow_imp.id(300593842284926590)
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
 p_id=>wwv_flow_imp.id(300593440981926590)
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
 p_id=>wwv_flow_imp.id(993877048483033052)
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
 p_id=>wwv_flow_imp.id(993877195104033053)
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
 p_id=>wwv_flow_imp.id(300601852306926593)
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
 p_id=>wwv_flow_imp.id(300602233669926593)
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
 p_id=>wwv_flow_imp.id(300604657420926594)
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
 p_id=>wwv_flow_imp.id(300602649756926594)
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
 p_id=>wwv_flow_imp.id(300603003075926594)
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
 p_id=>wwv_flow_imp.id(300604255463926594)
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
 p_id=>wwv_flow_imp.id(300605073866926595)
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
 p_id=>wwv_flow_imp.id(300603449495926594)
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
 p_id=>wwv_flow_imp.id(300603830184926594)
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
 p_id=>wwv_flow_imp.id(261148229070986796)
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
 p_id=>wwv_flow_imp.id(261148402882986797)
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
 p_id=>wwv_flow_imp.id(261148504521986798)
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
 p_id=>wwv_flow_imp.id(300597414527926591)
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
 p_id=>wwv_flow_imp.id(300594991422926591)
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
 p_id=>wwv_flow_imp.id(300596602101926591)
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
 p_id=>wwv_flow_imp.id(300595823252926591)
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
 p_id=>wwv_flow_imp.id(300597031631926591)
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
 p_id=>wwv_flow_imp.id(300599400450926592)
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
 p_id=>wwv_flow_imp.id(300605801356926595)
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
 p_id=>wwv_flow_imp.id(1054587216072835851)
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
 p_id=>wwv_flow_imp.id(540078990982774831)
,p_plug_name=>'Outstanding Fees'
,p_static_id=>'font-color-red-outstanding-br-fees-font'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(540079045618774832)
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
 p_id=>wwv_flow_imp.id(993878205735033063)
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
 p_id=>wwv_flow_imp.id(300687677763926629)
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
 p_id=>wwv_flow_imp.id(300686879106926628)
,p_db_column_name=>'CURRENCY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300687211516926629)
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
 p_id=>wwv_flow_imp.id(300688033087926629)
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
 p_id=>wwv_flow_imp.id(300685203292926628)
,p_db_column_name=>'INVOICE_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Invoice Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300684397705926628)
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
 p_id=>wwv_flow_imp.id(268444857861627036)
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
 p_id=>wwv_flow_imp.id(300683610375926627)
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
 p_id=>wwv_flow_imp.id(300683244914926627)
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
 p_id=>wwv_flow_imp.id(993878238132033064)
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
 p_id=>wwv_flow_imp.id(993878358527033065)
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
 p_id=>wwv_flow_imp.id(300686463236926628)
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
 p_id=>wwv_flow_imp.id(300684073006926627)
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
 p_id=>wwv_flow_imp.id(300685651656926628)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300684835805926628)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300686069082926628)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(540375200209675808)
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
 p_id=>wwv_flow_imp.id(951724425179810397)
,p_plug_name=>'Grades Witheld'
,p_static_id=>'grades-witheld'
,p_parent_plug_id=>wwv_flow_imp.id(533837012675906790)
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
 p_id=>wwv_flow_imp.id(398622937611101030)
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
 p_id=>wwv_flow_imp.id(300373081944926491)
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
 p_id=>wwv_flow_imp.id(300376211457926493)
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
 p_id=>wwv_flow_imp.id(300375019978926492)
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
 p_id=>wwv_flow_imp.id(300376612299926493)
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
 p_id=>wwv_flow_imp.id(300375449720926492)
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
 p_id=>wwv_flow_imp.id(300375858693926493)
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
 p_id=>wwv_flow_imp.id(300374243992926492)
,p_db_column_name=>'WITHELD_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300373468023926492)
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
 p_id=>wwv_flow_imp.id(300374673624926492)
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
 p_id=>wwv_flow_imp.id(300373819722926492)
,p_db_column_name=>'WITHELD_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(442120407445426996)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654306'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WITHELD_BY:WITHELD_DATE:WITHELD_REMARKS:WITHDRAWN_DATE:IS_WITHDRAWN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(951726021012810413)
,p_plug_name=>'Grades Witheld_1'
,p_static_id=>'grades-witheld-2'
,p_parent_plug_id=>wwv_flow_imp.id(951724425179810397)
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
 p_id=>wwv_flow_imp.id(398623999478101041)
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
 p_id=>wwv_flow_imp.id(300378521718926494)
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
 p_id=>wwv_flow_imp.id(300381737205926495)
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
 p_id=>wwv_flow_imp.id(300380570308926495)
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
 p_id=>wwv_flow_imp.id(300382093278926495)
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
 p_id=>wwv_flow_imp.id(300380960249926495)
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
 p_id=>wwv_flow_imp.id(300381362441926495)
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
 p_id=>wwv_flow_imp.id(300379732389926494)
,p_db_column_name=>'WITHELD_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300378909780926494)
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
 p_id=>wwv_flow_imp.id(300380178071926494)
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
 p_id=>wwv_flow_imp.id(300379296007926494)
,p_db_column_name=>'WITHELD_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(442121063380427000)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654361'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WITHELD_BY:WITHELD_DATE:WITHELD_REMARKS:WITHDRAWN_DATE:IS_WITHDRAWN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(462475032697009706)
,p_name=>'Guardian Info'
,p_static_id=>'guardian-info'
,p_parent_plug_id=>wwv_flow_imp.id(461477987090194927)
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
 p_id=>wwv_flow_imp.id(300306474028926460)
,p_query_column_id=>6
,p_column_alias=>'GIVEN_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Given Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(602538217498753350)
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
 p_id=>wwv_flow_imp.id(300307264287926460)
,p_query_column_id=>8
,p_column_alias=>'GUARDIAN_IC_PASSPORT'
,p_column_display_sequence=>80
,p_column_heading=>'IC/Passport Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300306868219926460)
,p_query_column_id=>7
,p_column_alias=>'GUARDIAN_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300305224235926460)
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
 p_id=>wwv_flow_imp.id(602537834991753347)
,p_query_column_id=>2
,p_column_alias=>'RELATIONSHIP'
,p_column_display_sequence=>30
,p_column_heading=>'Relationship'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(602537747582753346)
,p_query_column_id=>1
,p_column_alias=>'STUD_GUARDIAN_LINK_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300306014897926460)
,p_query_column_id=>5
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Surname'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(602537986433753348)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(602538080129753349)
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
 p_id=>wwv_flow_imp.id(927847843203322845)
,p_name=>'Guardian Info'
,p_static_id=>'guardian-info-2'
,p_parent_plug_id=>wwv_flow_imp.id(927847688711322844)
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
 p_id=>wwv_flow_imp.id(300492460963926544)
,p_query_column_id=>6
,p_column_alias=>'GIVEN_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Given Name'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(240237603489119290)
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
 p_id=>wwv_flow_imp.id(300493232252926544)
,p_query_column_id=>8
,p_column_alias=>'GUARDIAN_IC_PASSPORT'
,p_column_display_sequence=>80
,p_column_heading=>'IC/ID/Passport Number'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300492823240926544)
,p_query_column_id=>7
,p_column_alias=>'GUARDIAN_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300491220717926543)
,p_query_column_id=>3
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>90
,p_column_heading=>'Nationality'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(240237464998119288)
,p_query_column_id=>2
,p_column_alias=>'RELATIONSHIP'
,p_column_display_sequence=>30
,p_column_heading=>'Relationship'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(240250524505279788)
,p_query_column_id=>1
,p_column_alias=>'STUD_GUARDIAN_LINK_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300492008569926544)
,p_query_column_id=>5
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Surname'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(240250634203279789)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'Title'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1058328344868836600)
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
 p_id=>wwv_flow_imp.id(927843019815322797)
,p_plug_name=>'i-STUDENT FILE'
,p_static_id=>'i-student-file'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(461475968171194906)
,p_plug_name=>'IDENTIFICATION'
,p_static_id=>'identification'
,p_parent_plug_id=>wwv_flow_imp.id(461475305165194900)
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
 p_id=>wwv_flow_imp.id(843053706390858998)
,p_plug_name=>'Immigration Documents'
,p_static_id=>'immigration-documents'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(843053975854859000)
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
 p_id=>wwv_flow_imp.id(300460484107926530)
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
 p_id=>wwv_flow_imp.id(300462447957926531)
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
 p_id=>wwv_flow_imp.id(300463652207926531)
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
 p_id=>wwv_flow_imp.id(300462825808926531)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300460821871926530)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300461636671926531)
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
 p_id=>wwv_flow_imp.id(300461271057926531)
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
 p_id=>wwv_flow_imp.id(300462015874926531)
,p_db_column_name=>'TASK_REMARK'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Task Remark'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300463254708926531)
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
 p_id=>wwv_flow_imp.id(843101990665048868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_DOC_KEY:IMMI_DOC_STATUS:CREATED_DATE:PROGRAMME_NAME:STUDY_INTAKE:SCHEDULE_START:TASK_REMARK:TRIGGER_FROM:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(471516813106513763)
,p_plug_name=>'Incidentals and Warning Letter'
,p_static_id=>'incidentals-and-warning-letter'
,p_parent_plug_id=>wwv_flow_imp.id(927901971511534107)
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
 p_id=>wwv_flow_imp.id(928188738173221142)
,p_plug_name=>'Incidentals and Warning Letter'
,p_static_id=>'incidentals-and-warning-letter-2'
,p_parent_plug_id=>wwv_flow_imp.id(471516813106513763)
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
 p_id=>wwv_flow_imp.id(928188940625221144)
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
 p_id=>wwv_flow_imp.id(300508763265926551)
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
 p_id=>wwv_flow_imp.id(300506705677926550)
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
 p_id=>wwv_flow_imp.id(300505580822926549)
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
 p_id=>wwv_flow_imp.id(471516702799513762)
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
 p_id=>wwv_flow_imp.id(300506375358926550)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300507935019926550)
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
 p_id=>wwv_flow_imp.id(300507561868926550)
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
 p_id=>wwv_flow_imp.id(300508381327926551)
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
 p_id=>wwv_flow_imp.id(300507112777926550)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300505119844926549)
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
 p_id=>wwv_flow_imp.id(300504723551926549)
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
 p_id=>wwv_flow_imp.id(471516558828513761)
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
 p_id=>wwv_flow_imp.id(928409903292922958)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655627'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENET_DATE:LAST_UPDATED_BY:DOCUMENT_REMARK:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1028587408687940015)
,p_name=>'Information'
,p_static_id=>'information'
,p_parent_plug_id=>wwv_flow_imp.id(1028587338188940014)
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
 p_id=>wwv_flow_imp.id(300406474194926507)
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
 p_id=>wwv_flow_imp.id(300404399082926506)
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
 p_id=>wwv_flow_imp.id(300405679308926506)
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
 p_id=>wwv_flow_imp.id(860684101215348827)
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
 p_id=>wwv_flow_imp.id(860684151978348828)
,p_query_column_id=>2
,p_column_alias=>'TRANSFER_CASE_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Reference No.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300407209807926507)
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
 p_id=>wwv_flow_imp.id(300404000198926506)
,p_query_column_id=>3
,p_column_alias=>'TRANSFER_STATUS'
,p_column_display_sequence=>30
,p_column_heading=>'Transfer Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(896816132623083138)
,p_plug_name=>'Installment '
,p_static_id=>'installment'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(756581795707057336)
,p_plug_name=>' Insurance'
,p_static_id=>'insurance'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(756581889636057337)
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
 p_id=>wwv_flow_imp.id(357024640961675529)
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
 p_id=>wwv_flow_imp.id(357025383963675536)
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
 p_id=>wwv_flow_imp.id(300434717482926519)
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
 p_id=>wwv_flow_imp.id(300434302843926519)
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
 p_id=>wwv_flow_imp.id(216711022904122500)
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
 p_id=>wwv_flow_imp.id(216710892392122499)
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
 p_id=>wwv_flow_imp.id(300435545298926520)
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
 p_id=>wwv_flow_imp.id(300435154006926519)
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
 p_id=>wwv_flow_imp.id(357024478071675527)
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
 p_id=>wwv_flow_imp.id(300435920774926520)
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
 p_id=>wwv_flow_imp.id(216710815893122498)
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
 p_id=>wwv_flow_imp.id(756657681405684430)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTRACT_START:CONTRACT_END:VAL_REF_NO:EMGS_REF_NUMBER:EMGS_APPLIED_DATE:SENT_REMINDER:CARD_COLLECTION_DATE:CARD_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1020357311227288997)
,p_plug_name=>'INSURANCE'
,p_static_id=>'insurance-2'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(1020357452239288998)
,p_plug_name=>' Insurance'
,p_static_id=>'insurance-3'
,p_parent_plug_id=>wwv_flow_imp.id(1020357311227288997)
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
 p_id=>wwv_flow_imp.id(1020357633461289000)
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
 p_id=>wwv_flow_imp.id(357025445775675537)
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
 p_id=>wwv_flow_imp.id(357025714009675539)
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
 p_id=>wwv_flow_imp.id(300533298244926562)
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
 p_id=>wwv_flow_imp.id(300532968557926562)
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
 p_id=>wwv_flow_imp.id(216713419161122524)
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
 p_id=>wwv_flow_imp.id(216713279596122523)
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
 p_id=>wwv_flow_imp.id(300534141706926562)
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
 p_id=>wwv_flow_imp.id(300533751895926562)
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
 p_id=>wwv_flow_imp.id(357025618258675538)
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
 p_id=>wwv_flow_imp.id(300534563515926562)
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
 p_id=>wwv_flow_imp.id(216713170079122522)
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
 p_id=>wwv_flow_imp.id(1020369176938168570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655885'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTRACT_START:CONTRACT_END:VAL_REF_NO:EMGS_REF_NUMBER:EMGS_APPLIED_DATE:SENT_REMINDER:CARD_COLLECTION_DATE:CARD_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1034283311719348101)
,p_name=>'Internal'
,p_static_id=>'internal'
,p_parent_plug_id=>wwv_flow_imp.id(1034283248823348100)
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
 p_id=>wwv_flow_imp.id(860686135706348848)
,p_query_column_id=>9
,p_column_alias=>'FACULTY_FROM_APPREJ_BY'
,p_column_display_sequence=>90
,p_column_heading=>'Approval By<br>(Faculty From)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686244594348849)
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
 p_id=>wwv_flow_imp.id(860686104152348847)
,p_query_column_id=>8
,p_column_alias=>'FACULTY_FROM_APPROVAL'
,p_column_display_sequence=>80
,p_column_heading=>'Approval Status<br>(Faculty From)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685887200348845)
,p_query_column_id=>6
,p_column_alias=>'FACULTY_TO_APPREJ_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Approval By<br>(Faculty To)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685957349348846)
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
 p_id=>wwv_flow_imp.id(860685782511348844)
,p_query_column_id=>5
,p_column_alias=>'FACULTY_TO_APPROVAL'
,p_column_display_sequence=>50
,p_column_heading=>'Approval Status<br>(Faculty To)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685518442348842)
,p_query_column_id=>3
,p_column_alias=>'INT_PROGRAMME_FROM'
,p_column_display_sequence=>30
,p_column_heading=>'From Programme'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685651754348843)
,p_query_column_id=>4
,p_column_alias=>'INT_PROGRAMME_TO'
,p_column_display_sequence=>40
,p_column_heading=>'To Programme'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686476151348851)
,p_query_column_id=>12
,p_column_alias=>'RO_APPREJ_BY'
,p_column_display_sequence=>120
,p_column_heading=>'Approval By<br>(RO)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860686580742348852)
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
 p_id=>wwv_flow_imp.id(860686388402348850)
,p_query_column_id=>11
,p_column_alias=>'RO_APPROVAL'
,p_column_display_sequence=>110
,p_column_heading=>'Approval Status<br>(RO)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(860685426340348841)
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
 p_id=>wwv_flow_imp.id(300408246682926508)
,p_query_column_id=>1
,p_column_alias=>'TRANSFER_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(375582138961296296)
,p_plug_name=>'Internal Staff Email Log'
,p_static_id=>'internal-staff-email-log'
,p_parent_plug_id=>wwv_flow_imp.id(1058423627466238434)
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
 p_id=>wwv_flow_imp.id(375582243976296297)
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
 p_id=>wwv_flow_imp.id(375582550491296300)
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
 p_id=>wwv_flow_imp.id(375582694580296301)
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
 p_id=>wwv_flow_imp.id(375582488816296299)
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
 p_id=>wwv_flow_imp.id(375582751330296302)
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
 p_id=>wwv_flow_imp.id(375582891515296303)
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
 p_id=>wwv_flow_imp.id(375582422019296298)
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
 p_id=>wwv_flow_imp.id(375594918443318017)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMAIL_SUBJECT:CREATED_DATE:SSMAIL_KEY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(754579537110565637)
,p_plug_name=>'INTERNATIONAL OFFICE'
,p_static_id=>'international-br-office'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(464874799906095401)
,p_plug_name=>'Invoices'
,p_static_id=>'invoices'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(464874899713095402)
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
 p_id=>wwv_flow_imp.id(993877890059033060)
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
 p_id=>wwv_flow_imp.id(300642592245926610)
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
 p_id=>wwv_flow_imp.id(300641840227926610)
,p_db_column_name=>'CURRENCY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300642225972926610)
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
 p_id=>wwv_flow_imp.id(1191899212480366551)
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
 p_id=>wwv_flow_imp.id(300643080468926610)
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
 p_id=>wwv_flow_imp.id(300641043513926610)
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
 p_id=>wwv_flow_imp.id(300638664922926609)
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
 p_id=>wwv_flow_imp.id(300640221234926609)
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
 p_id=>wwv_flow_imp.id(268444110653627028)
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
 p_id=>wwv_flow_imp.id(268444736458627035)
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
 p_id=>wwv_flow_imp.id(300639401307926609)
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
 p_id=>wwv_flow_imp.id(300639051124926609)
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
 p_id=>wwv_flow_imp.id(993877950495033061)
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
 p_id=>wwv_flow_imp.id(993878075857033062)
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
 p_id=>wwv_flow_imp.id(417108990023289071)
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
 p_id=>wwv_flow_imp.id(300643403491926611)
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
 p_id=>wwv_flow_imp.id(300639830438926609)
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
 p_id=>wwv_flow_imp.id(300640629621926610)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300641450199926610)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(464888012520151135)
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
 p_id=>wwv_flow_imp.id(770285216725746397)
,p_plug_name=>'IO Activities'
,p_static_id=>'io-activities'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(770285406326746399)
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
 p_id=>wwv_flow_imp.id(300438236014926521)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300437828038926521)
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
 p_id=>wwv_flow_imp.id(300439461448926521)
,p_db_column_name=>'JOB'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300438663095926521)
,p_db_column_name=>'OUTCOME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Outcome'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300439802230926521)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300439017311926521)
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
 p_id=>wwv_flow_imp.id(300437399507926520)
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
 p_id=>wwv_flow_imp.id(770294109392782675)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:JOB:TASK_COMPLETED_DATE:OUTCOME:STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1014733328882834031)
,p_plug_name=>'IO Arrival'
,p_static_id=>'io-arrival'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(1019170591153540399)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1019170702046540400)
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
 p_id=>wwv_flow_imp.id(1019172862885540421)
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
 p_id=>wwv_flow_imp.id(1014734472647834042)
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
 p_id=>wwv_flow_imp.id(1014734709441834045)
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
 p_id=>wwv_flow_imp.id(1037980224510504527)
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
 p_id=>wwv_flow_imp.id(1037980327642504528)
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
 p_id=>wwv_flow_imp.id(1019170547631540398)
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
 p_id=>wwv_flow_imp.id(357099539314474332)
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
 p_id=>wwv_flow_imp.id(1014734861308834046)
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
 p_id=>wwv_flow_imp.id(388117405890436323)
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
 p_id=>wwv_flow_imp.id(1014734553669834043)
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
 p_id=>wwv_flow_imp.id(1019170437223540397)
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
 p_id=>wwv_flow_imp.id(1019170945946540402)
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
 p_id=>wwv_flow_imp.id(1014734672651834044)
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
 p_id=>wwv_flow_imp.id(1014734381216834041)
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
 p_id=>wwv_flow_imp.id(1019176339785537488)
,p_interactive_grid_id=>wwv_flow_imp.id(1014734381216834041)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1019176552028537488)
,p_report_id=>wwv_flow_imp.id(1019176339785537488)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(357143498264464108)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(357099539314474332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(407885291852151244)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(388117405890436323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019177049561537486)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1014734472647834042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019177955195537483)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1014734553669834043)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019178866558537480)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1014734672651834044)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019179778552537477)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1014734709441834045)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019180641400537474)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1014734861308834046)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019181565394537471)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1019170437223540397)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019182486303537468)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1019170547631540398)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019186781440528147)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1019170591153540399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019191306423523916)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1019170945946540402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1019226299093863405)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1019172862885540421)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1038106886112942012)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1037980224510504527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1038107702330942016)
,p_view_id=>wwv_flow_imp.id(1019176552028537488)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1037980327642504528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684771902654761049)
,p_plug_name=>'LEFT'
,p_static_id=>'left'
,p_parent_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(1024944014765359432)
,p_name=>'List Of Classes'
,p_static_id=>'list-of-classes'
,p_parent_plug_id=>wwv_flow_imp.id(1024943941299359431)
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
 p_id=>wwv_flow_imp.id(849811782625882644)
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
 p_id=>wwv_flow_imp.id(849811258849882639)
,p_query_column_id=>7
,p_column_alias=>'DAY_NO'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300402261962926505)
,p_query_column_id=>4
,p_column_alias=>'LECTURER_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Lecturer Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(849811187923882638)
,p_query_column_id=>6
,p_column_alias=>'ON_EVERY'
,p_column_display_sequence=>50
,p_column_heading=>'Day'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(849811057965882637)
,p_query_column_id=>5
,p_column_alias=>'RESOURCE_NAME'
,p_column_display_sequence=>100
,p_column_heading=>'Resource Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300400260203926504)
,p_query_column_id=>3
,p_column_alias=>'SESSION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Session Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(849811696149882643)
,p_query_column_id=>13
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(849810985318882636)
,p_query_column_id=>1
,p_column_alias=>'SUBJECT_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Subject Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300399461637926504)
,p_query_column_id=>2
,p_column_alias=>'SUBJECT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Subject Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300401439635926505)
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
 p_id=>wwv_flow_imp.id(849811514001882641)
,p_query_column_id=>11
,p_column_alias=>'TIME_FROM_CHAR'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(849811391081882640)
,p_query_column_id=>8
,p_column_alias=>'TIME_TABLE_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Class Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300401858232926505)
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
 p_id=>wwv_flow_imp.id(849811587210882642)
,p_query_column_id=>12
,p_column_alias=>'TIME_TO_CHAR'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307206043665906234)
,p_plug_name=>'List of Invoice'
,p_static_id=>'list-of-invoice'
,p_parent_plug_id=>wwv_flow_imp.id(462476297503009719)
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
 p_id=>wwv_flow_imp.id(307206147534906235)
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
 p_id=>wwv_flow_imp.id(307206635417906240)
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
 p_id=>wwv_flow_imp.id(307206869258906242)
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
 p_id=>wwv_flow_imp.id(403452799868813628)
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
 p_id=>wwv_flow_imp.id(307206437913906238)
,p_db_column_name=>'FEE_CODE'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Fee Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(403452569031813625)
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
 p_id=>wwv_flow_imp.id(403452766641813627)
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
 p_id=>wwv_flow_imp.id(307206259819906236)
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
 p_id=>wwv_flow_imp.id(307206717649906241)
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
 p_id=>wwv_flow_imp.id(307206294926906237)
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
 p_id=>wwv_flow_imp.id(307206526682906239)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(401662808665955548)
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
 p_id=>wwv_flow_imp.id(896816265077083139)
,p_plug_name=>'List Of Invoices Eligible For Instalment'
,p_static_id=>'list-of-invoices-eligible-for-installment'
,p_parent_plug_id=>wwv_flow_imp.id(896816132623083138)
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
 p_id=>wwv_flow_imp.id(896816321956083140)
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
 p_id=>wwv_flow_imp.id(896816953310083146)
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
 p_id=>wwv_flow_imp.id(404768908950039026)
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
 p_id=>wwv_flow_imp.id(258041101986427220)
,p_db_column_name=>'AN_URL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'An Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(896817435218083151)
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
 p_id=>wwv_flow_imp.id(896818072023083157)
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
 p_id=>wwv_flow_imp.id(896817696229083153)
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
 p_id=>wwv_flow_imp.id(896817734270083154)
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
 p_id=>wwv_flow_imp.id(896817830231083155)
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
 p_id=>wwv_flow_imp.id(896816809804083144)
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
 p_id=>wwv_flow_imp.id(896818197835083158)
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
 p_id=>wwv_flow_imp.id(404769043553039028)
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
 p_id=>wwv_flow_imp.id(896817271772083149)
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
 p_id=>wwv_flow_imp.id(404768973378039027)
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
 p_id=>wwv_flow_imp.id(896818001520083156)
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
 p_id=>wwv_flow_imp.id(896817393039083150)
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
 p_id=>wwv_flow_imp.id(896817525999083152)
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
 p_id=>wwv_flow_imp.id(896817141501083148)
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
 p_id=>wwv_flow_imp.id(896817038386083147)
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
 p_id=>wwv_flow_imp.id(896816516346083141)
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
 p_id=>wwv_flow_imp.id(896816645125083143)
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
 p_id=>wwv_flow_imp.id(896816617240083142)
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
 p_id=>wwv_flow_imp.id(896816821812083145)
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
 p_id=>wwv_flow_imp.id(913446602345279093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7037508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AN:INA:TRANSACTION_DATE:TRANSACTION_TYPE:TRANSACTION_NUMBER:FEE_CODE:TYPE_OF_FEES:AMOUNT_LOCAL_CURRENCY:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE:STUDY_INTAKE:SUBJECT_CODE:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(461475305165194900)
,p_plug_name=>'Main Info'
,p_static_id=>'main-info'
,p_parent_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(462474676414009702)
,p_plug_name=>'Major Illnesses'
,p_static_id=>'major-illnesses'
,p_parent_plug_id=>wwv_flow_imp.id(461478162779194928)
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
 p_id=>wwv_flow_imp.id(835223173966440522)
,p_plug_name=>'MC and Letters'
,p_static_id=>'mc-and-letters'
,p_parent_plug_id=>wwv_flow_imp.id(541233577032889697)
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
 p_id=>wwv_flow_imp.id(835223255343440523)
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
 p_id=>wwv_flow_imp.id(835224341833440534)
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
 p_id=>wwv_flow_imp.id(835223885578440529)
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
 p_id=>wwv_flow_imp.id(835223630554440527)
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
 p_id=>wwv_flow_imp.id(835223600635440526)
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
 p_id=>wwv_flow_imp.id(835223777370440528)
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
 p_id=>wwv_flow_imp.id(835224194347440532)
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
 p_id=>wwv_flow_imp.id(835224069076440531)
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
 p_id=>wwv_flow_imp.id(835224251019440533)
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
 p_id=>wwv_flow_imp.id(835224006219440530)
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
 p_id=>wwv_flow_imp.id(835223467958440525)
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
 p_id=>wwv_flow_imp.id(835223334346440524)
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
 p_id=>wwv_flow_imp.id(835224488407440535)
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
 p_id=>wwv_flow_imp.id(835414456900204841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6257187'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:STUDENT_DOCUMENT_KEY:DOCUMENT_IMAGE:DOCUMENT_DESCRIPTION:DOCUMENT_TYPE:DOCUMENET_DATE:LAST_UPDATED_BY:IMAGE_TYPE:IMAGE_FILE_NAME:INSTITUTE_KEY:BFILE_IDENTIFIER_ID:URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(461479708627194944)
,p_plug_name=>'Medical Info'
,p_static_id=>'medical-info'
,p_parent_plug_id=>wwv_flow_imp.id(461478162779194928)
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
 p_id=>wwv_flow_imp.id(461475197808194899)
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
 p_id=>wwv_flow_imp.id(963613350942233529)
,p_plug_name=>'Notes'
,p_static_id=>'notes'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(963613548002233531)
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
 p_id=>wwv_flow_imp.id(300556877272926573)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300557192610926574)
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
 p_id=>wwv_flow_imp.id(300557595405926574)
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
 p_id=>wwv_flow_imp.id(300556427745926573)
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
 p_id=>wwv_flow_imp.id(300555995726926573)
,p_db_column_name=>'DIARY_TOPIC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diary Topic'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300555679336926573)
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
 p_id=>wwv_flow_imp.id(300554839477926573)
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
 p_id=>wwv_flow_imp.id(300554475773926572)
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
 p_id=>wwv_flow_imp.id(300555209763926573)
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
 p_id=>wwv_flow_imp.id(963704710308620250)
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
 p_id=>wwv_flow_imp.id(541233726981889699)
,p_plug_name=>'Notes'
,p_static_id=>'notes-2'
,p_parent_plug_id=>wwv_flow_imp.id(541233577032889697)
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
 p_id=>wwv_flow_imp.id(541234121915889703)
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
 p_id=>wwv_flow_imp.id(300423488374926514)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300423944820926514)
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
 p_id=>wwv_flow_imp.id(300424351022926515)
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
 p_id=>wwv_flow_imp.id(300423110967926514)
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
 p_id=>wwv_flow_imp.id(300422701765926514)
,p_db_column_name=>'DIARY_TOPIC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diary Topic'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300422341979926514)
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
 p_id=>wwv_flow_imp.id(300421529690926514)
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
 p_id=>wwv_flow_imp.id(300421142425926513)
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
 p_id=>wwv_flow_imp.id(300421894086926514)
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
 p_id=>wwv_flow_imp.id(541351461358141010)
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
 p_id=>wwv_flow_imp.id(310445590070539246)
,p_plug_name=>'Notes'
,p_static_id=>'notes-3'
,p_parent_plug_id=>wwv_flow_imp.id(310445514918539245)
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
 p_id=>wwv_flow_imp.id(310446043310539250)
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
 p_id=>wwv_flow_imp.id(310446165665539251)
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
 p_id=>wwv_flow_imp.id(310446195323539252)
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
 p_id=>wwv_flow_imp.id(310445958292539249)
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
 p_id=>wwv_flow_imp.id(310445880951539248)
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
 p_id=>wwv_flow_imp.id(416541210651500362)
,p_interactive_grid_id=>wwv_flow_imp.id(310445880951539248)
,p_static_id=>'1815949'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(416541399622500362)
,p_report_id=>wwv_flow_imp.id(416541210651500362)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(416541978622500368)
,p_view_id=>wwv_flow_imp.id(416541399622500362)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(310445958292539249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(416542827874500370)
,p_view_id=>wwv_flow_imp.id(416541399622500362)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(310446043310539250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(416543729869500371)
,p_view_id=>wwv_flow_imp.id(416541399622500362)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(310446165665539251)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(416544670120500373)
,p_view_id=>wwv_flow_imp.id(416541399622500362)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(310446195323539252)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836920120746692917)
,p_plug_name=>'Notes'
,p_static_id=>'notes-4'
,p_parent_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(836920206931692918)
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
 p_id=>wwv_flow_imp.id(300458117846926529)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300457739670926529)
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
 p_id=>wwv_flow_imp.id(300458939851926529)
,p_db_column_name=>'IMMI_NOTES'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300458573913926529)
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
 p_id=>wwv_flow_imp.id(837018775238253568)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_NOTES_KEY:IMMI_NOTES:CREATED_DATE:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1059276993247681541)
,p_plug_name=>'Notes Attachment'
,p_static_id=>'notes-attachment'
,p_parent_plug_id=>wwv_flow_imp.id(963613350942233529)
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
 p_id=>wwv_flow_imp.id(1059277104799681542)
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
 p_id=>wwv_flow_imp.id(300564775790926577)
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
 p_id=>wwv_flow_imp.id(300561911153926575)
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
 p_id=>wwv_flow_imp.id(300562305186926576)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300562759481926576)
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
 p_id=>wwv_flow_imp.id(300560358591926575)
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
 p_id=>wwv_flow_imp.id(300559567248926575)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Document Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300559899148926575)
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
 p_id=>wwv_flow_imp.id(300561174675926575)
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
 p_id=>wwv_flow_imp.id(300563165206926576)
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
 p_id=>wwv_flow_imp.id(300563504929926576)
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
 p_id=>wwv_flow_imp.id(300564364376926576)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Image Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300561578879926575)
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
 p_id=>wwv_flow_imp.id(300563961127926576)
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
 p_id=>wwv_flow_imp.id(228291200845224896)
,p_db_column_name=>'ORI_FILENAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Original Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300560784868926575)
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
 p_id=>wwv_flow_imp.id(300565088363926577)
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
 p_id=>wwv_flow_imp.id(300559131730926574)
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
 p_id=>wwv_flow_imp.id(1062056856943162275)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656191'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME:ORI_FILENAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(636521108217312952)
,p_plug_name=>'Notification'
,p_static_id=>'notification'
,p_parent_plug_id=>wwv_flow_imp.id(1058423627466238434)
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
 p_id=>wwv_flow_imp.id(636521163060312953)
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
 p_id=>wwv_flow_imp.id(636521340432312955)
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
 p_id=>wwv_flow_imp.id(636521584823312957)
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
 p_id=>wwv_flow_imp.id(636521511913312956)
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
 p_id=>wwv_flow_imp.id(636521240910312954)
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
 p_id=>wwv_flow_imp.id(643501094414054293)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4338053'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TITLE:BODY:SENT_TIME:CREATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(918949014555935201)
,p_plug_name=>'O-Level Or Equivalent'
,p_static_id=>'o-level-or-equivalent'
,p_parent_plug_id=>wwv_flow_imp.id(918948789672935199)
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
 p_id=>wwv_flow_imp.id(836919143954692907)
,p_plug_name=>'Other Visa'
,p_static_id=>'other-visa'
,p_parent_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(836919367366692909)
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
 p_id=>wwv_flow_imp.id(300456187791926528)
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
 p_id=>wwv_flow_imp.id(300455809361926528)
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
 p_id=>wwv_flow_imp.id(300455440417926528)
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
 p_id=>wwv_flow_imp.id(300454255129926528)
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
 p_id=>wwv_flow_imp.id(300454993428926528)
,p_db_column_name=>'IMMI_OTHER_VISA_REF_NO'
,p_display_order=>30
,p_column_identifier=>'J'
,p_column_label=>'Reference No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300454625418926528)
,p_db_column_name=>'IMMI_OTHER_VISA_TYPE'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Visa Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216710703410122497)
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
 p_id=>wwv_flow_imp.id(836940374655727081)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_OTHER_VISA_KEY:IMMI_OTHER_VISA_TYPE:IMMI_OTHER_VISA_REF_NO:IMMI_OTHER_VISA_ISSUE_DATE:IMMI_OTHER_VISA_EXPIRY_DATE:VAL_REF_NO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1013825660338681928)
,p_plug_name=>'Overall Job and Task'
,p_static_id=>'overall-job-and-task'
,p_parent_plug_id=>wwv_flow_imp.id(1058423627466238434)
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
 p_id=>wwv_flow_imp.id(1013825747605681929)
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
 p_id=>wwv_flow_imp.id(471514179146513737)
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
 p_id=>wwv_flow_imp.id(300539535941926565)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300539962463926566)
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
 p_id=>wwv_flow_imp.id(300539088624926565)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300537935114926564)
,p_db_column_name=>'JOB'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300540346128926566)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300540751332926566)
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
 p_id=>wwv_flow_imp.id(471514222317513738)
,p_db_column_name=>'REASSIGN_TO'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Reassign To'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300537176945926564)
,p_db_column_name=>'REFERENCE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Reference Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(471514089326513736)
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
 p_id=>wwv_flow_imp.id(300537509992926564)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300536739307926564)
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
 p_id=>wwv_flow_imp.id(300536310387926563)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300541107910926566)
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
 p_id=>wwv_flow_imp.id(300538384488926564)
,p_db_column_name=>'TASK_COMPLETED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Task Completed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300538711855926565)
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
 p_id=>wwv_flow_imp.id(1014691902561701049)
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
 p_id=>wwv_flow_imp.id(1058423627466238434)
,p_plug_name=>'OVERALL JOB AND TASK'
,p_static_id=>'overall-job-br-and-task'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(719004011612273712)
,p_plug_name=>'Passport'
,p_static_id=>'passport'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(719004192325273714)
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
 p_id=>wwv_flow_imp.id(300428886757926517)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(357024408422675526)
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
 p_id=>wwv_flow_imp.id(357024132762675524)
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
 p_id=>wwv_flow_imp.id(357024092006675523)
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
 p_id=>wwv_flow_imp.id(452306316569837920)
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
 p_id=>wwv_flow_imp.id(452306207661837919)
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
 p_id=>wwv_flow_imp.id(452306010671837917)
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
 p_id=>wwv_flow_imp.id(452306087116837918)
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
 p_id=>wwv_flow_imp.id(452306517217837922)
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
 p_id=>wwv_flow_imp.id(452306324926837921)
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
 p_id=>wwv_flow_imp.id(357024269183675525)
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
 p_id=>wwv_flow_imp.id(300426147274926516)
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
 p_id=>wwv_flow_imp.id(765447110605762161)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'654829'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PASSPORT_NO:PASSPORT_ISSUE_DATE:PASSPORT_EXPIRY_DATE:PLACE_OF_ISSUE:PLACE_OF_BIRTH:IS_ACTIVE:SENT_REMINDER:PASSPORT_COLLECT_DATE:PASSPORT_COLLECTION_HANDLED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(602538298942753351)
,p_plug_name=>'Passport'
,p_static_id=>'passport-2'
,p_parent_plug_id=>wwv_flow_imp.id(928186777382221122)
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
 p_id=>wwv_flow_imp.id(602538390788753352)
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
 p_id=>wwv_flow_imp.id(602539211430753360)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(602538900362753357)
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
 p_id=>wwv_flow_imp.id(602538781419753356)
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
 p_id=>wwv_flow_imp.id(602538484439753353)
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
 p_id=>wwv_flow_imp.id(602538685831753355)
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
 p_id=>wwv_flow_imp.id(602539031937753359)
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
 p_id=>wwv_flow_imp.id(602538987470753358)
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
 p_id=>wwv_flow_imp.id(602538602103753354)
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
 p_id=>wwv_flow_imp.id(666317811973146048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4566220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PASSPORT_KEY:STUDENT_KEY:PASSPORT_NO:PASSPORT_ISSUE_DATE:PASSPORT_EXPIRY_DATE:PLACE_OF_ISSUE:PLACE_OF_BIRTH:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(928186777382221122)
,p_plug_name=>'Passport/Student Pass Information'
,p_static_id=>'passport-student-pass-information'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(461478428907194931)
,p_plug_name=>'Permanent Address'
,p_static_id=>'permanent-address'
,p_parent_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(461477987090194927)
,p_plug_name=>'PERSONAL INFORMATION'
,p_static_id=>'personal-br-information'
,p_parent_plug_id=>wwv_flow_imp.id(461477912217194926)
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
 p_id=>wwv_flow_imp.id(461478162779194928)
,p_plug_name=>'Personal Info'
,p_static_id=>'personal-info'
,p_parent_plug_id=>wwv_flow_imp.id(461477987090194927)
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
 p_id=>wwv_flow_imp.id(934109917077469297)
,p_plug_name=>'Phone Number'
,p_static_id=>'phone-number'
,p_parent_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(934112241874469320)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(934112356926469321)
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
 p_id=>wwv_flow_imp.id(930057502802340141)
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
 p_id=>wwv_flow_imp.id(934111773210469315)
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
 p_id=>wwv_flow_imp.id(934112121046469319)
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
 p_id=>wwv_flow_imp.id(930057399748340140)
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
 p_id=>wwv_flow_imp.id(934111912252469317)
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
 p_id=>wwv_flow_imp.id(934111587258469314)
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
 p_id=>wwv_flow_imp.id(934112060964469318)
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
 p_id=>wwv_flow_imp.id(934111491696469313)
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
 p_id=>wwv_flow_imp.id(934140210258761714)
,p_interactive_grid_id=>wwv_flow_imp.id(934111491696469313)
,p_static_id=>'5695097'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(934140405605761714)
,p_report_id=>wwv_flow_imp.id(934140210258761714)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934140896992761716)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(934111587258469314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934141788267761719)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(934111773210469315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934143675935761724)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(934111912252469317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934144511265761727)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(934112060964469318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934145466708761730)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(934112121046469319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(934146343594761733)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(934112241874469320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936255437121531055)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(930057399748340140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(936256329081531059)
,p_view_id=>wwv_flow_imp.id(934140405605761714)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(930057502802340141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(928188285205221137)
,p_name=>'Photo'
,p_static_id=>'photo'
,p_parent_plug_id=>wwv_flow_imp.id(928383534188760720)
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
 p_id=>wwv_flow_imp.id(300531503842926561)
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
 p_id=>wwv_flow_imp.id(300530731679926560)
,p_query_column_id=>1
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300531137026926561)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_PHOTO_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(461475442537194901)
,p_name=>'Photo'
,p_static_id=>'photo-2'
,p_parent_plug_id=>wwv_flow_imp.id(684771902654761049)
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
 p_id=>wwv_flow_imp.id(300263988303926441)
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
 p_id=>wwv_flow_imp.id(300263201678926441)
,p_query_column_id=>1
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300263676338926441)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_PHOTO_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(945747249910213942)
,p_name=>'Pre-Payment Account / Unallocated Amount'
,p_static_id=>'pre-payment-account-br-unallocated-amount'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(300547792787926570)
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
 p_id=>wwv_flow_imp.id(388706982986962545)
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
 p_id=>wwv_flow_imp.id(300547417316926569)
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
 p_id=>wwv_flow_imp.id(300547050048926569)
,p_query_column_id=>3
,p_column_alias=>'MODE_OF_PAYMENT'
,p_column_display_sequence=>100
,p_column_heading=>'Mode Of Payment'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300546265022926569)
,p_query_column_id=>1
,p_column_alias=>'RECEIPT_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Receipt Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300546622817926569)
,p_query_column_id=>2
,p_column_alias=>'RECEIPT_NUMBER'
,p_column_display_sequence=>90
,p_column_heading=>'Receipt Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(388707025797962546)
,p_query_column_id=>9
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300548673415926570)
,p_query_column_id=>7
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300548274925926570)
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
 p_id=>wwv_flow_imp.id(919998975437622945)
,p_name=>'Pre-Qualification Checked'
,p_static_id=>'pre-qualification-checked'
,p_parent_plug_id=>wwv_flow_imp.id(919998611061622942)
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
 p_id=>wwv_flow_imp.id(300340706456926475)
,p_query_column_id=>1
,p_column_alias=>'SUBJECT_REQUIRED'
,p_column_display_sequence=>10
,p_column_heading=>'Subject Required'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300341144309926475)
,p_query_column_id=>2
,p_column_alias=>'SUBJECT_REQUIRED2'
,p_column_display_sequence=>20
,p_column_heading=>'2nd Subject Required'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(533837012675906790)
,p_plug_name=>'Programme Info'
,p_static_id=>'programme-info'
,p_parent_plug_id=>wwv_flow_imp.id(462476156046009717)
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
 p_id=>wwv_flow_imp.id(497332706338126674)
,p_name=>'Programme Listing'
,p_static_id=>'programme-listing'
,p_parent_plug_id=>wwv_flow_imp.id(533837012675906790)
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
 p_id=>wwv_flow_imp.id(300393257972926501)
,p_query_column_id=>24
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>270
,p_column_heading=>'Campus '
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300393645168926501)
,p_query_column_id=>25
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>280
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300396839256926503)
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
 p_id=>wwv_flow_imp.id(300387603046926498)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300394882013926502)
,p_query_column_id=>28
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>300
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300395239342926502)
,p_query_column_id=>29
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300389990646926499)
,p_query_column_id=>16
,p_column_alias=>'DEPARTMENT_CODE'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300389662455926498)
,p_query_column_id=>15
,p_column_alias=>'DEPARTMENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300390871829926499)
,p_query_column_id=>18
,p_column_alias=>'FACULTY_CODE'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300390420855926499)
,p_query_column_id=>17
,p_column_alias=>'FACULTY_KEY'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300391200621926499)
,p_query_column_id=>19
,p_column_alias=>'FACULTY_NAME'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300392838989926501)
,p_query_column_id=>23
,p_column_alias=>'FIRST_CAMPUS_KEY'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300385997708926497)
,p_query_column_id=>6
,p_column_alias=>'ID_NUMBER'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300385636520926497)
,p_query_column_id=>5
,p_column_alias=>'ID_TYPE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300384398576926496)
,p_query_column_id=>2
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300392434942926501)
,p_query_column_id=>22
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>70
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300388041657926498)
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
 p_id=>wwv_flow_imp.id(426451704536335827)
,p_query_column_id=>35
,p_column_alias=>'PROGRAMME_CODE_URL'
,p_column_display_sequence=>350
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300396440870926503)
,p_query_column_id=>32
,p_column_alias=>'PROGRAMME_ID'
,p_column_display_sequence=>340
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300388449882926498)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>120
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(240514977500597432)
,p_query_column_id=>36
,p_column_alias=>'PROGRAMME_STRUCTURE'
,p_column_display_sequence=>360
,p_column_heading=>'Programme Structure'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300392010463926499)
,p_query_column_id=>21
,p_column_alias=>'PROGRAMME_TYPE'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300391649397926499)
,p_query_column_id=>20
,p_column_alias=>'PROGRAMME_TYPE_ID'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(222220229473943816)
,p_query_column_id=>37
,p_column_alias=>'PROGRESS_FROM'
,p_column_display_sequence=>370
,p_column_heading=>'Progress From'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300384069711926496)
,p_query_column_id=>1
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300386847340926497)
,p_query_column_id=>8
,p_column_alias=>'SCM_REGISTERED_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Created'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300394386852926502)
,p_query_column_id=>27
,p_column_alias=>'SCM_REMARKS'
,p_column_display_sequence=>290
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300394041726926501)
,p_query_column_id=>26
,p_column_alias=>'SCM_STATUS'
,p_column_display_sequence=>140
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300387249135926497)
,p_query_column_id=>9
,p_column_alias=>'SCM_STUDENT_NUMBER'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300388809725926498)
,p_query_column_id=>13
,p_column_alias=>'SEMESTERGROUP_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300389221497926498)
,p_query_column_id=>14
,p_column_alias=>'SEMESTER_GROUP'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300384825161926496)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300385197744926497)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300396012658926502)
,p_query_column_id=>31
,p_column_alias=>'UCSI_CONVOCATION_DATE'
,p_column_display_sequence=>320
,p_column_heading=>'Convo Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300386471220926497)
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
 p_id=>wwv_flow_imp.id(300395649760926502)
,p_query_column_id=>30
,p_column_alias=>'UCSI_REPORTED_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Reported Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300397263784926503)
,p_query_column_id=>34
,p_column_alias=>'UCSI_SENATE_DATE'
,p_column_display_sequence=>310
,p_column_heading=>'Senate Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(927844090623322808)
,p_name=>'Programme Listing'
,p_static_id=>'programme-listing-2'
,p_parent_plug_id=>wwv_flow_imp.id(927844020073322807)
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
 p_id=>wwv_flow_imp.id(300485385481926541)
,p_query_column_id=>24
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>290
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300485791859926541)
,p_query_column_id=>25
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>300
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300488680113926542)
,p_query_column_id=>32
,p_column_alias=>'CGPA'
,p_column_display_sequence=>80
,p_column_heading=>'CGPA'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300479862509926539)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300487058693926542)
,p_query_column_id=>28
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>320
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300487425413926542)
,p_query_column_id=>29
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>330
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300482214727926540)
,p_query_column_id=>16
,p_column_alias=>'DEPARTMENT_CODE'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300481836058926540)
,p_query_column_id=>15
,p_column_alias=>'DEPARTMENT_KEY'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300482991952926540)
,p_query_column_id=>18
,p_column_alias=>'FACULTY_CODE'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300482628339926540)
,p_query_column_id=>17
,p_column_alias=>'FACULTY_KEY'
,p_column_display_sequence=>340
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300483393402926540)
,p_query_column_id=>19
,p_column_alias=>'FACULTY_NAME'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300485037272926541)
,p_query_column_id=>23
,p_column_alias=>'FIRST_CAMPUS_KEY'
,p_column_display_sequence=>280
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300478211732926538)
,p_query_column_id=>6
,p_column_alias=>'ID_NUMBER'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300477839835926538)
,p_query_column_id=>5
,p_column_alias=>'ID_TYPE'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300476675032926538)
,p_query_column_id=>2
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300484648279926541)
,p_query_column_id=>22
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>10
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300480212267926539)
,p_query_column_id=>11
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>60
,p_column_heading=>'Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300480684028926539)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300484204980926541)
,p_query_column_id=>21
,p_column_alias=>'PROGRAMME_TYPE'
,p_column_display_sequence=>270
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300483787195926540)
,p_query_column_id=>20
,p_column_alias=>'PROGRAMME_TYPE_ID'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300476238518926538)
,p_query_column_id=>1
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300479044510926539)
,p_query_column_id=>8
,p_column_alias=>'SCM_REGISTERED_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Created Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300486603331926541)
,p_query_column_id=>27
,p_column_alias=>'SCM_REMARKS'
,p_column_display_sequence=>310
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300486232026926541)
,p_query_column_id=>26
,p_column_alias=>'SCM_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300479426070926539)
,p_query_column_id=>9
,p_column_alias=>'SCM_STUDENT_NUMBER'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300480997465926539)
,p_query_column_id=>13
,p_column_alias=>'SEMESTERGROUP_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300481417798926540)
,p_query_column_id=>14
,p_column_alias=>'SEMESTER_GROUP'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300477001632926538)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300477464432926538)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300488197190926542)
,p_query_column_id=>31
,p_column_alias=>'UCSI_CONVOCATION_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Estimated Graduation'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300478669550926539)
,p_query_column_id=>7
,p_column_alias=>'UCSI_REFERENCE_NUMBER'
,p_column_display_sequence=>40
,p_column_heading=>'File Number'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300487827863926542)
,p_query_column_id=>30
,p_column_alias=>'UCSI_REPORTED_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Reported Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1028587338188940014)
,p_plug_name=>'Programme Transfer'
,p_static_id=>'programme-transfer'
,p_parent_plug_id=>wwv_flow_imp.id(462476156046009717)
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
 p_id=>wwv_flow_imp.id(928184749209221102)
,p_plug_name=>'Receipts'
,p_static_id=>'receipts'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(928184968906221104)
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
 p_id=>wwv_flow_imp.id(300515073631926554)
,p_db_column_name=>'ACTION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300514669204926553)
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
 p_id=>wwv_flow_imp.id(300513813738926553)
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
 p_id=>wwv_flow_imp.id(300514213555926553)
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
 p_id=>wwv_flow_imp.id(300515821726926554)
,p_db_column_name=>'MOP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Method'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300511428345926552)
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
 p_id=>wwv_flow_imp.id(300510666800926552)
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
 p_id=>wwv_flow_imp.id(300510214849926551)
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
 p_id=>wwv_flow_imp.id(300516232308926554)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Payor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300513471545926553)
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
 p_id=>wwv_flow_imp.id(300511018832926552)
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
 p_id=>wwv_flow_imp.id(300512255151926552)
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
 p_id=>wwv_flow_imp.id(300513055628926553)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300511880026926552)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300512673313926552)
,p_db_column_name=>'TYPE_OF_FEES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type Of Fees'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300515411907926554)
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
 p_id=>wwv_flow_imp.id(928272162032961376)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:TRANSACTION_NUMBER:STUDENT_NAME:MOP:AMOUNT_LOCAL_CURRENCY:UNMATCH_AMOUNT'
,p_sum_columns_on_break=>'AMOUNT_LOCAL_CURRENCY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(936270421161561003)
,p_name=>'Refund'
,p_static_id=>'refund'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(791860526503695339)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>120
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(791860634265695340)
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
 p_id=>wwv_flow_imp.id(432349536350371650)
,p_query_column_id=>7
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>90
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300703744935926635)
,p_query_column_id=>6
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(432350932571371664)
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
 p_id=>wwv_flow_imp.id(300702526130926635)
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
 p_id=>wwv_flow_imp.id(300701706959926634)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Transaction Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300702088249926635)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_NUMBER'
,p_column_display_sequence=>30
,p_column_heading=>'Transaction Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300703312204926635)
,p_query_column_id=>5
,p_column_alias=>'TRANSACTION_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Transaction Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(432351273102371667)
,p_query_column_id=>4
,p_column_alias=>'TYPE_OF_FEES'
,p_column_display_sequence=>60
,p_column_heading=>'Type Of Fees'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(438560069302588345)
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
 p_id=>wwv_flow_imp.id(1038080661776855407)
,p_plug_name=>'Remarks'
,p_static_id=>'remarks'
,p_parent_plug_id=>wwv_flow_imp.id(1024255602195093236)
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
 p_id=>wwv_flow_imp.id(1043296382451180511)
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
 p_id=>wwv_flow_imp.id(1043296438877180512)
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
 p_id=>wwv_flow_imp.id(1043296521193180513)
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
 p_id=>wwv_flow_imp.id(1043296221907180510)
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
 p_id=>wwv_flow_imp.id(1043296137099180509)
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
 p_id=>wwv_flow_imp.id(1043296020421180508)
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
 p_id=>wwv_flow_imp.id(1043295883673180506)
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
 p_id=>wwv_flow_imp.id(1043295735972180505)
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
 p_id=>wwv_flow_imp.id(1043295953314180507)
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
 p_id=>wwv_flow_imp.id(1043295622557180504)
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
 p_id=>wwv_flow_imp.id(1043458941370168088)
,p_interactive_grid_id=>wwv_flow_imp.id(1043295622557180504)
,p_static_id=>'6788284'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1043459174213168088)
,p_report_id=>wwv_flow_imp.id(1043458941370168088)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043459629031168090)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1043295735972180505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043460563668168093)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1043295883673180506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043461467908168096)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1043295953314180507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043462291073168099)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1043296020421180508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043463226977168102)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1043296137099180509)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043464091384168105)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1043296221907180510)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>677
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043464995947168108)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1043296382451180511)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043465871623168111)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1043296438877180512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1043466719903168114)
,p_view_id=>wwv_flow_imp.id(1043459174213168088)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1043296521193180513)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919994291881622899)
,p_plug_name=>'Result for A-Level'
,p_static_id=>'result-for-a-level'
,p_parent_plug_id=>wwv_flow_imp.id(919994127698622897)
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
 p_id=>wwv_flow_imp.id(919995019768622906)
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
 p_id=>wwv_flow_imp.id(919994722599622903)
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
 p_id=>wwv_flow_imp.id(919995393099622910)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(919995552644622911)
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
 p_id=>wwv_flow_imp.id(919994681370622902)
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
 p_id=>wwv_flow_imp.id(919994948870622905)
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
 p_id=>wwv_flow_imp.id(919994863685622904)
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
 p_id=>wwv_flow_imp.id(919994555966622901)
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
 p_id=>wwv_flow_imp.id(919994448554622900)
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
 p_id=>wwv_flow_imp.id(920007907538716660)
,p_interactive_grid_id=>wwv_flow_imp.id(919994448554622900)
,p_static_id=>'5553774'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(920008115581716660)
,p_report_id=>wwv_flow_imp.id(920007907538716660)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920009031425716665)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(919994555966622901)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920009961149716671)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(919994681370622902)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920010853918716675)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(919994722599622903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920011662712716678)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(919994863685622904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920012570394716681)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(919994948870622905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920013478852716684)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(919995019768622906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920018936132722760)
,p_view_id=>wwv_flow_imp.id(920008115581716660)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(919995393099622910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(918949225946935203)
,p_plug_name=>'Result For O-Level'
,p_static_id=>'result-for-o-level'
,p_parent_plug_id=>wwv_flow_imp.id(918949014555935201)
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
 p_id=>wwv_flow_imp.id(918949898241935210)
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
 p_id=>wwv_flow_imp.id(918949655084935207)
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
 p_id=>wwv_flow_imp.id(919995133415622907)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(919995276077622908)
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
 p_id=>wwv_flow_imp.id(918949508818935206)
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
 p_id=>wwv_flow_imp.id(918949795593935209)
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
 p_id=>wwv_flow_imp.id(918949689624935208)
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
 p_id=>wwv_flow_imp.id(918949403628935205)
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
 p_id=>wwv_flow_imp.id(918949341836935204)
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
 p_id=>wwv_flow_imp.id(919036264284990687)
,p_interactive_grid_id=>wwv_flow_imp.id(918949341836935204)
,p_static_id=>'5544057'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(919036437443990688)
,p_report_id=>wwv_flow_imp.id(919036264284990687)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919036903349990690)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(918949403628935205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.2188
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919037880888990695)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(918949508818935206)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919038712736990697)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(918949655084935207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919039672523990700)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(918949689624935208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919040543972990703)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(918949795593935209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(919041408280990706)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(918949898241935210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920014381257716687)
,p_view_id=>wwv_flow_imp.id(919036437443990688)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(919995133415622907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(896689341044610017)
,p_name=>'Scholarship'
,p_static_id=>'scholarship'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(778072643121444837)
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
 p_id=>wwv_flow_imp.id(300699806617926634)
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
 p_id=>wwv_flow_imp.id(430950494828743468)
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
 p_id=>wwv_flow_imp.id(430950656355743469)
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
 p_id=>wwv_flow_imp.id(778072746111444838)
,p_query_column_id=>7
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>90
,p_column_heading=>'For Programme'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778072838090444839)
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
 p_id=>wwv_flow_imp.id(430950732020743470)
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
 p_id=>wwv_flow_imp.id(300697834806926633)
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
 p_id=>wwv_flow_imp.id(300697483860926633)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300698676639926633)
,p_query_column_id=>6
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300696588184926633)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300698279089926633)
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
 p_id=>wwv_flow_imp.id(300697059682926633)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(918948789672935199)
,p_plug_name=>'SECONDARY EDUCATIONS'
,p_static_id=>'secondary-educations'
,p_parent_plug_id=>wwv_flow_imp.id(918948715634935198)
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
 p_id=>wwv_flow_imp.id(533837135566906791)
,p_name=>'Semesters'
,p_static_id=>'semesters'
,p_parent_plug_id=>wwv_flow_imp.id(533837012675906790)
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
 p_id=>wwv_flow_imp.id(300354984559926482)
,p_query_column_id=>8
,p_column_alias=>'CAMPUS_CODE'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300354581374926482)
,p_query_column_id=>7
,p_column_alias=>'CAMPUS_KEY'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300355364507926483)
,p_query_column_id=>9
,p_column_alias=>'CAMPUS_NAME'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300360933180926485)
,p_query_column_id=>23
,p_column_alias=>'CGPA'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300355783550926483)
,p_query_column_id=>10
,p_column_alias=>'COURSE_KEY'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300360496297926484)
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
 p_id=>wwv_flow_imp.id(300354159611926482)
,p_query_column_id=>6
,p_column_alias=>'INSTITUTE_KEY'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(326109671125596297)
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
 p_id=>wwv_flow_imp.id(300360105599926484)
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
 p_id=>wwv_flow_imp.id(300356174553926483)
,p_query_column_id=>11
,p_column_alias=>'PROGRAMME_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300356561841926483)
,p_query_column_id=>12
,p_column_alias=>'PROGRAMME_NAME'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300358093075926484)
,p_query_column_id=>16
,p_column_alias=>'PROGRAMME_STRUCTURE'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300352532469926482)
,p_query_column_id=>2
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300352165054926481)
,p_query_column_id=>1
,p_column_alias=>'SCS_KEY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300359708714926484)
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
 p_id=>wwv_flow_imp.id(300352896564926482)
,p_query_column_id=>3
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300353330530926482)
,p_query_column_id=>4
,p_column_alias=>'STUDENT_NAME'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300353767793926482)
,p_query_column_id=>5
,p_column_alias=>'STUDENT_NUMBER'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300356916093926483)
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
 p_id=>wwv_flow_imp.id(300358917803926484)
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
 p_id=>wwv_flow_imp.id(300359337771926484)
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
 p_id=>wwv_flow_imp.id(300357738089926483)
,p_query_column_id=>15
,p_column_alias=>'UCSI_PROGRAMME_STRUCTURE_ID'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300357365127926483)
,p_query_column_id=>14
,p_column_alias=>'UCSI_REFERENCE_NUMBER'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300358569164926484)
,p_query_column_id=>17
,p_column_alias=>'UCSI_SEMESTER_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1191900147837366560)
,p_name=>'Sibling Discount'
,p_static_id=>'sibling-discount'
,p_parent_plug_id=>wwv_flow_imp.id(1053008171463504242)
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
 p_id=>wwv_flow_imp.id(778724481303094536)
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
 p_id=>wwv_flow_imp.id(778724350806094535)
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
 p_id=>wwv_flow_imp.id(778723634185094528)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>90
,p_column_heading=>'Discount Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778723805749094529)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>100
,p_column_heading=>'Discount Scheme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778723952166094531)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778724087733094532)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>150
,p_column_heading=>'Enr Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778723884828094530)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>130
,p_column_heading=>'For Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778724200979094533)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>160
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778724219784094534)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>170
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1191900378305366562)
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
 p_id=>wwv_flow_imp.id(1191900229654366561)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1191900571639366564)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778724711012094538)
,p_query_column_id=>14
,p_column_alias=>'SIBLING_TO_STUDENT'
,p_column_display_sequence=>110
,p_column_heading=>'Sibling To Student'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1191900943522366568)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>210
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1191900477373366563)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778723607697094527)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>220
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1053008189537504243)
,p_name=>'Special Discount'
,p_static_id=>'special-discount'
,p_parent_plug_id=>wwv_flow_imp.id(1053008171463504242)
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
 p_id=>wwv_flow_imp.id(778723011273094521)
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
 p_id=>wwv_flow_imp.id(778722905483094520)
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
 p_id=>wwv_flow_imp.id(778075258396444863)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>80
,p_column_heading=>'Discount Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778075342052444864)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>90
,p_column_heading=>'Discount Scheme'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778722487863094516)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778722525541094517)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>130
,p_column_heading=>'ENR Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778075419809444865)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>110
,p_column_heading=>'For Programme'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778722691208094518)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>140
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778722746858094519)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>150
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300618202833926600)
,p_query_column_id=>4
,p_column_alias=>'REGISTER_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Register Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300617878812926600)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300619001306926601)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300620593736926601)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300618606687926600)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>100
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778075176078444862)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1024255602195093236)
,p_plug_name=>'Sponsorship'
,p_static_id=>'sponsorship'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(1039840033547740812)
,p_plug_name=>'Sponsorship Assigned'
,p_static_id=>'sponsorship-assigned'
,p_parent_plug_id=>wwv_flow_imp.id(1024255602195093236)
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
 p_id=>wwv_flow_imp.id(1039840159840740813)
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
 p_id=>wwv_flow_imp.id(841855455680253018)
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
 p_id=>wwv_flow_imp.id(839300344693345943)
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
 p_id=>wwv_flow_imp.id(839300240208345942)
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
 p_id=>wwv_flow_imp.id(839299931511345939)
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
 p_id=>wwv_flow_imp.id(839300062884345940)
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
 p_id=>wwv_flow_imp.id(839299872884345938)
,p_db_column_name=>'FOR_PROGRAMME'
,p_display_order=>180
,p_column_identifier=>'U'
,p_column_label=>'For Programme'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(381370926498838730)
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
 p_id=>wwv_flow_imp.id(839300130781345941)
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
 p_id=>wwv_flow_imp.id(839299567284345935)
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
 p_id=>wwv_flow_imp.id(841855354940253017)
,p_db_column_name=>'SCHEME_CODE'
,p_display_order=>250
,p_column_identifier=>'AB'
,p_column_label=>'Scheme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839299511058345934)
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
 p_id=>wwv_flow_imp.id(839299815136345937)
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
 p_id=>wwv_flow_imp.id(841855288422253016)
,p_db_column_name=>'SPONSOR_BOARD'
,p_display_order=>240
,p_column_identifier=>'AA'
,p_column_label=>'Sponsor Board'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839299263696345932)
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
 p_id=>wwv_flow_imp.id(839299716144345936)
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
 p_id=>wwv_flow_imp.id(839299338937345933)
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
 p_id=>wwv_flow_imp.id(1039886836528324116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656386'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETAILS:REGISTER_DATE:APPLICATION_NO:SPONSOR_BOARD:SCHEME_CODE:SS_STATUS:FOR_PROGRAMME:ENR_NUMBER:ENR_STATUS:INTAKE:LATEST_SEMESTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1040868156287468007)
,p_plug_name=>'Sponsorship Attachment'
,p_static_id=>'sponsorship-attachment'
,p_parent_plug_id=>wwv_flow_imp.id(1024255602195093236)
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
 p_id=>wwv_flow_imp.id(1044225910622424797)
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
 p_id=>wwv_flow_imp.id(1043299235997180540)
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
 p_id=>wwv_flow_imp.id(1043299342227180541)
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
 p_id=>wwv_flow_imp.id(1043299420161180542)
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
 p_id=>wwv_flow_imp.id(1043298807671180536)
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
 p_id=>wwv_flow_imp.id(1043298652585180534)
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
 p_id=>wwv_flow_imp.id(1043298695743180535)
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
 p_id=>wwv_flow_imp.id(1043299038845180538)
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
 p_id=>wwv_flow_imp.id(1043299524102180543)
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
 p_id=>wwv_flow_imp.id(1043299653456180544)
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
 p_id=>wwv_flow_imp.id(1043299859045180546)
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
 p_id=>wwv_flow_imp.id(1043299184602180539)
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
 p_id=>wwv_flow_imp.id(1043299717381180545)
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
 p_id=>wwv_flow_imp.id(1043298898727180537)
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
 p_id=>wwv_flow_imp.id(1044226063075424798)
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
 p_id=>wwv_flow_imp.id(1043298558173180533)
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
 p_id=>wwv_flow_imp.id(1043298413885180532)
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
 p_id=>wwv_flow_imp.id(1044198782503400469)
,p_interactive_grid_id=>wwv_flow_imp.id(1043298413885180532)
,p_static_id=>'6795682'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1044198913752400469)
,p_report_id=>wwv_flow_imp.id(1044198782503400469)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(364646143044079979)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1044225910622424797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(364647567581079983)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1044226063075424798)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044199451247400471)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1043298558173180533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044200330626400476)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1043298652585180534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>527
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044201228452400480)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1043298695743180535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044202167415400483)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1043298807671180536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044203053010400486)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1043298898727180537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044203905696400489)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1043299038845180538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044204803514400492)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1043299184602180539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044205779280400494)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1043299235997180540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044206667445400497)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1043299342227180541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044207574686400500)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1043299420161180542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044208438764400503)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1043299524102180543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044209369289400506)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1043299653456180544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044210086895400509)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1043299717381180545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1044211048783400512)
,p_view_id=>wwv_flow_imp.id(1044198913752400469)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1043299859045180546)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(778073596264444846)
,p_name=>'Staff Discount'
,p_static_id=>'staff-discount'
,p_parent_plug_id=>wwv_flow_imp.id(1053008171463504242)
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
 p_id=>wwv_flow_imp.id(778074885193444859)
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
 p_id=>wwv_flow_imp.id(778074727972444858)
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
 p_id=>wwv_flow_imp.id(778074961284444860)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT_CODE'
,p_column_display_sequence=>60
,p_column_heading=>'Discount Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778075030748444861)
,p_query_column_id=>6
,p_column_alias=>'DISCOUNT_SCHEME'
,p_column_display_sequence=>70
,p_column_heading=>'Discount Scheme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074406971444854)
,p_query_column_id=>10
,p_column_alias=>'ENR_NUMBER'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074435355444855)
,p_query_column_id=>11
,p_column_alias=>'ENR_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'ENR Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074271331444853)
,p_query_column_id=>9
,p_column_alias=>'FOR_PROGRAMME'
,p_column_display_sequence=>100
,p_column_heading=>'For Programme'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074519130444856)
,p_query_column_id=>12
,p_column_alias=>'INTAKE'
,p_column_display_sequence=>130
,p_column_heading=>'Intake'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074663788444857)
,p_query_column_id=>13
,p_column_alias=>'LATEST_SEMESTER'
,p_column_display_sequence=>140
,p_column_heading=>'Latest Semester'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778073944813444850)
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
 p_id=>wwv_flow_imp.id(778073908949444849)
,p_query_column_id=>3
,p_column_alias=>'SCH_KEY'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074168391444852)
,p_query_column_id=>8
,p_column_alias=>'SCM_KEY'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778073709343444847)
,p_query_column_id=>1
,p_column_alias=>'SS_KEY'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778074037801444851)
,p_query_column_id=>7
,p_column_alias=>'SS_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(778073803575444848)
,p_query_column_id=>2
,p_column_alias=>'STUDENT_KEY'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(441677192814831098)
,p_plug_name=>'Status'
,p_static_id=>'status'
,p_parent_plug_id=>wwv_flow_imp.id(684771902654761049)
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
 p_id=>wwv_flow_imp.id(690675126359103556)
,p_plug_name=>'Status'
,p_static_id=>'status-2'
,p_parent_plug_id=>wwv_flow_imp.id(684771902654761049)
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
 p_id=>wwv_flow_imp.id(1054615779757037114)
,p_plug_name=>'Student Statement '
,p_static_id=>'student-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(1054616947131037126)
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
 p_id=>wwv_flow_imp.id(993877610531033057)
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
 p_id=>wwv_flow_imp.id(403453229583813632)
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
 p_id=>wwv_flow_imp.id(300637549813926608)
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
 p_id=>wwv_flow_imp.id(300635957627926608)
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
 p_id=>wwv_flow_imp.id(403453185403813631)
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
 p_id=>wwv_flow_imp.id(300634364054926607)
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
 p_id=>wwv_flow_imp.id(802402187723658942)
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
 p_id=>wwv_flow_imp.id(300633495628926607)
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
 p_id=>wwv_flow_imp.id(300636364523926608)
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
 p_id=>wwv_flow_imp.id(300636749040926608)
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
 p_id=>wwv_flow_imp.id(300637130791926608)
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
 p_id=>wwv_flow_imp.id(993877698547033058)
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
 p_id=>wwv_flow_imp.id(993877787958033059)
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
 p_id=>wwv_flow_imp.id(300635492810926607)
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
 p_id=>wwv_flow_imp.id(300635166253926607)
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
 p_id=>wwv_flow_imp.id(300634731903926607)
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
 p_id=>wwv_flow_imp.id(300633968416926607)
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
 p_id=>wwv_flow_imp.id(1054665689094369965)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656915'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:INVOICE_NUMBER:TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:PAYMENT_DUE_DATE:DAYS_DUE:AMOUNT_BEFORE_TAX:TAX_AMOUNT:TAX_RATE'
,p_sum_columns_on_break=>'TOTAL_NET_TO_PAY:TOTAL_COLLECTED:INVOICE_BALANCE_DUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(927843160606322798)
,p_plug_name=>'Student Detail'
,p_static_id=>'student-detail'
,p_parent_plug_id=>wwv_flow_imp.id(928383534188760720)
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
 p_id=>wwv_flow_imp.id(928383534188760720)
,p_plug_name=>'Student Details'
,p_static_id=>'student-details'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(836946410577805004)
,p_plug_name=>'Student Immigration Records'
,p_static_id=>'student-immigration-records'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(927844020073322807)
,p_plug_name=>'Student Information'
,p_static_id=>'student-information'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(540068591335773340)
,p_name=>'Student Ledger / Statement'
,p_static_id=>'student-ledger-br-statement'
,p_parent_plug_id=>wwv_flow_imp.id(464874497929095398)
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
 p_id=>wwv_flow_imp.id(993877224748033054)
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
 p_id=>wwv_flow_imp.id(300674909032926624)
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
 p_id=>wwv_flow_imp.id(417108627641289067)
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
 p_id=>wwv_flow_imp.id(268444359096627031)
,p_query_column_id=>11
,p_column_alias=>'FROM_BANK'
,p_column_display_sequence=>101
,p_column_heading=>'From Bank'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300676981416926624)
,p_query_column_id=>6
,p_column_alias=>'MOP'
,p_column_display_sequence=>100
,p_column_heading=>'Mode Of Payment'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268443961492627027)
,p_query_column_id=>12
,p_column_alias=>'REFERENCE_NO'
,p_column_display_sequence=>102
,p_column_heading=>'Reference No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(803864290690284718)
,p_query_column_id=>10
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>120
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300681767992926626)
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
 p_id=>wwv_flow_imp.id(268444677611627034)
,p_query_column_id=>13
,p_column_alias=>'SEMESTER'
,p_column_display_sequence=>110
,p_column_heading=>'Semester'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300670131006926622)
,p_query_column_id=>9
,p_column_alias=>'SFM_KEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(993877347376033055)
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
 p_id=>wwv_flow_imp.id(993877424696033056)
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
 p_id=>wwv_flow_imp.id(300671370679926622)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Transaction Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300672976737926623)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_NUMBER'
,p_column_display_sequence=>60
,p_column_heading=>'Transaction Number'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300672087436926623)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Transaction Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300673347834926623)
,p_query_column_id=>5
,p_column_alias=>'TYPE_OF_FEES'
,p_column_display_sequence=>70
,p_column_heading=>'Type Of Fees'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1041039028267742141)
,p_plug_name=>'Student Outstanding Barring'
,p_static_id=>'student-outstanding-barring'
,p_parent_plug_id=>wwv_flow_imp.id(540078990982774831)
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
 p_id=>wwv_flow_imp.id(1059224813616561099)
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
 p_id=>wwv_flow_imp.id(826853847990888842)
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
 p_id=>wwv_flow_imp.id(300694286522926632)
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
 p_id=>wwv_flow_imp.id(300692752715926631)
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
 p_id=>wwv_flow_imp.id(300691166565926630)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300690692202926630)
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
 p_id=>wwv_flow_imp.id(300693112485926631)
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
 p_id=>wwv_flow_imp.id(300691580314926630)
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
 p_id=>wwv_flow_imp.id(300691893804926631)
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
 p_id=>wwv_flow_imp.id(300693574760926631)
,p_db_column_name=>'REMARKS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(826853736409888841)
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
 p_id=>wwv_flow_imp.id(300689970839926630)
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
 p_id=>wwv_flow_imp.id(300692353384926631)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300690286738926630)
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
 p_id=>wwv_flow_imp.id(300693916521926631)
,p_db_column_name=>'STUDENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Student Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300694753575926632)
,p_db_column_name=>'UNBAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Unbar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300695110007926632)
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
 p_id=>wwv_flow_imp.id(1059250265565642213)
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
 p_id=>wwv_flow_imp.id(832393644841277816)
,p_plug_name=>'Student Outstanding Barring Whitelist Request'
,p_static_id=>'student-outstanding-barring-whitelist-request'
,p_parent_plug_id=>wwv_flow_imp.id(540078990982774831)
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
 p_id=>wwv_flow_imp.id(832393785411277817)
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
 p_id=>wwv_flow_imp.id(832395600508277835)
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
 p_id=>wwv_flow_imp.id(832395255453277832)
,p_db_column_name=>'CANCELLED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cancelled By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832395414275277833)
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
 p_id=>wwv_flow_imp.id(832395499828277834)
,p_db_column_name=>'CANCELLED_REASON'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cancelled Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832395104064277830)
,p_db_column_name=>'COMPLETED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Completed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832395123319277831)
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
 p_id=>wwv_flow_imp.id(832394554103277825)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832394711201277826)
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
 p_id=>wwv_flow_imp.id(832394254854277822)
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
 p_id=>wwv_flow_imp.id(832394417382277823)
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
 p_id=>wwv_flow_imp.id(832393997335277819)
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
 p_id=>wwv_flow_imp.id(832394787441277827)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832394895498277828)
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
 p_id=>wwv_flow_imp.id(832394156678277821)
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
 p_id=>wwv_flow_imp.id(832394442658277824)
,p_db_column_name=>'REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(832393839853277818)
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
 p_id=>wwv_flow_imp.id(832394080487277820)
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
 p_id=>wwv_flow_imp.id(832394974400277829)
,p_db_column_name=>'WHITELIST_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(832404557091291856)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6227088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTION:NUMBER_OF_DAYS:DATE_FROM:DATE_TO:WHITELIST_STATUS:REMARKS:CREATED_BY:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(1019171025239540403)
,p_plug_name=>'Student Profile'
,p_static_id=>'student-profile-2'
,p_parent_plug_id=>wwv_flow_imp.id(754579537110565637)
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
 p_id=>wwv_flow_imp.id(1019171196986540405)
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
 p_id=>wwv_flow_imp.id(300472149789926536)
,p_db_column_name=>'ARRIVAL_STATUS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Arrival Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300473293673926536)
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
 p_id=>wwv_flow_imp.id(300474491242926537)
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
 p_id=>wwv_flow_imp.id(300473688997926536)
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
 p_id=>wwv_flow_imp.id(300472494581926536)
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
 p_id=>wwv_flow_imp.id(300474163932926536)
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
 p_id=>wwv_flow_imp.id(300471785155926536)
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
 p_id=>wwv_flow_imp.id(300472919273926536)
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
 p_id=>wwv_flow_imp.id(1019197371333500917)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655285'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDENT_KEY:ARRIVAL_STATUS:IO_DATE_REPORTED:STUDENT_MOBILE_NO:BRIEFING_DATE:HEALTH_EXAMINATION_DATE:PASSPORT_SUBMISSION_DATE:ENTRY_VISA_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(404766552003039003)
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
 p_id=>wwv_flow_imp.id(927901971511534107)
,p_plug_name=>'Student Record Documents'
,p_static_id=>'student-record-documents'
,p_parent_plug_id=>wwv_flow_imp.id(927843019815322797)
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
 p_id=>wwv_flow_imp.id(928382156254760706)
,p_plug_name=>'Student Visa Records'
,p_static_id=>'student-visa-records'
,p_parent_plug_id=>wwv_flow_imp.id(928186777382221122)
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
 p_id=>wwv_flow_imp.id(928382219769760707)
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
 p_id=>wwv_flow_imp.id(300523183378926557)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300522740074926557)
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
 p_id=>wwv_flow_imp.id(300523958147926557)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300523544672926557)
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
 p_id=>wwv_flow_imp.id(300522384287926557)
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
 p_id=>wwv_flow_imp.id(666096490590946916)
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
 p_id=>wwv_flow_imp.id(928410563568922968)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655779'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919996536972622921)
,p_plug_name=>'Tertiary/Professional Qualification(s)'
,p_static_id=>'tertiary-professional-qualification-s'
,p_parent_plug_id=>wwv_flow_imp.id(918948715634935198)
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
 p_id=>wwv_flow_imp.id(919998144185622937)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(919998192737622938)
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
 p_id=>wwv_flow_imp.id(919997460002622930)
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
 p_id=>wwv_flow_imp.id(318501599853890898)
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
 p_id=>wwv_flow_imp.id(919998009885622936)
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
 p_id=>wwv_flow_imp.id(919997222025622928)
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
 p_id=>wwv_flow_imp.id(919996899140622925)
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
 p_id=>wwv_flow_imp.id(919997586894622932)
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
 p_id=>wwv_flow_imp.id(919996760537622923)
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
 p_id=>wwv_flow_imp.id(919997544683622931)
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
 p_id=>wwv_flow_imp.id(919997078221622926)
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
 p_id=>wwv_flow_imp.id(919997897814622935)
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
 p_id=>wwv_flow_imp.id(919997164626622927)
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
 p_id=>wwv_flow_imp.id(919997326096622929)
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
 p_id=>wwv_flow_imp.id(919997844338622934)
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
 p_id=>wwv_flow_imp.id(919997687593622933)
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
 p_id=>wwv_flow_imp.id(919996834803622924)
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
 p_id=>wwv_flow_imp.id(919996667482622922)
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
 p_id=>wwv_flow_imp.id(920077448086962986)
,p_interactive_grid_id=>wwv_flow_imp.id(919996667482622922)
,p_static_id=>'5554469'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(920077629687962986)
,p_report_id=>wwv_flow_imp.id(920077448086962986)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(318549886355105614)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(318501599853890898)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920078172767962989)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(919996760537622923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920079036670962993)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(919996834803622924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920079900732962996)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(919996899140622925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920080875580962999)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(919997078221622926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920081700949963002)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(919997164626622927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920082667750963004)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(919997222025622928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920083505436963007)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(919997326096622929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920084412396963010)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(919997460002622930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920085334832963013)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(919997544683622931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920086277707963016)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(919997586894622932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920087151077963019)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(919997687593622933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920088058111963022)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(919997844338622934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920088949353963025)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(919997897814622935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920089850485963028)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(919998009885622936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(920090770627963030)
,p_view_id=>wwv_flow_imp.id(920077629687962986)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(919998144185622937)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1024943941299359431)
,p_plug_name=>'Time Tabling'
,p_static_id=>'time-tabling'
,p_parent_plug_id=>wwv_flow_imp.id(462476156046009717)
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
 p_id=>wwv_flow_imp.id(836918091203692897)
,p_plug_name=>'VAL Application'
,p_static_id=>'val-application'
,p_parent_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(836918360984692899)
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
 p_id=>wwv_flow_imp.id(300449561025926526)
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
 p_id=>wwv_flow_imp.id(300449142900926525)
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
 p_id=>wwv_flow_imp.id(300452731817926527)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(488553227589232488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300450738015926526)
,p_db_column_name=>'PROGRAMME_CODE'
,p_display_order=>30
,p_column_identifier=>'R'
,p_column_label=>'Programme Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300451130696926526)
,p_db_column_name=>'PROGRAMME_NAME'
,p_display_order=>40
,p_column_identifier=>'S'
,p_column_label=>'Programme Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300451571885926526)
,p_db_column_name=>'STUDY_INTAKE'
,p_display_order=>50
,p_column_identifier=>'T'
,p_column_label=>'Semester'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300451970608926526)
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
 p_id=>wwv_flow_imp.id(300449973823926526)
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
 p_id=>wwv_flow_imp.id(300450339378926526)
,p_db_column_name=>'VAL_REF_NO'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Reference No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300452382171926527)
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
 p_id=>wwv_flow_imp.id(836939773477727075)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655067'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_VA_KEY:PROGRAMME_CODE:PROGRAMME_NAME:STUDY_INTAKE:VAL_REF_NO:DOC_RECEIVED_DATE:VAL_APPROVAL_DATE:VAL_REJECTED_DATE:VAL_EXPIRY_DATE:IS_ACTIVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(553746016048197805)
,p_plug_name=>'Visa Application'
,p_static_id=>'visa-application'
,p_parent_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(553746205987197807)
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
 p_id=>wwv_flow_imp.id(357025300136675535)
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
 p_id=>wwv_flow_imp.id(300444876454926524)
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
 p_id=>wwv_flow_imp.id(300446399966926524)
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
 p_id=>wwv_flow_imp.id(300446064659926524)
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
 p_id=>wwv_flow_imp.id(300445633234926524)
,p_db_column_name=>'I_CARD_NO'
,p_display_order=>40
,p_column_identifier=>'X'
,p_column_label=>'i-Kad No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300446885438926524)
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
 p_id=>wwv_flow_imp.id(357024848139675531)
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
 p_id=>wwv_flow_imp.id(216710580845122496)
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
 p_id=>wwv_flow_imp.id(300447237660926524)
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
 p_id=>wwv_flow_imp.id(300445197685926524)
,p_db_column_name=>'VISA_TYPE'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Visa Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(794024925300981460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655012'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMMI_VISA_KEY:VISA_TYPE:VISA_EXPIRY_DATE:I_CARD_NO:I_CARD_COLLECT_DATE:CARD_COLLECTION_HANDLED_BY:VAL_REF_NO:SENT_REMINDER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(928382837648760713)
,p_plug_name=>'Visa Approval Letter'
,p_static_id=>'visa-approval-letter'
,p_parent_plug_id=>wwv_flow_imp.id(928186777382221122)
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
 p_id=>wwv_flow_imp.id(928382919501760714)
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
 p_id=>wwv_flow_imp.id(300525825780926558)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Uploaded By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300525433436926558)
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
 p_id=>wwv_flow_imp.id(300526651461926559)
,p_db_column_name=>'DOCUMENT_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(300526280881926558)
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
 p_id=>wwv_flow_imp.id(300524987559926558)
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
 p_id=>wwv_flow_imp.id(666096584758946917)
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
 p_id=>wwv_flow_imp.id(928427628562016115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655806'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_DATE:CREATED_BY:DOCUMENT_DESCRIPTION:IMAGE_FILE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(471515897205513754)
,p_plug_name=>'Voting Information'
,p_static_id=>'voting-information'
,p_parent_plug_id=>wwv_flow_imp.id(461478162779194928)
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
 p_id=>wwv_flow_imp.id(300695898926926632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1041039028267742141)
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
 p_id=>wwv_flow_imp.id(300565967164926577)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1059276993247681541)
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
 p_id=>wwv_flow_imp.id(300509561740926551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(928188738173221142)
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
 p_id=>wwv_flow_imp.id(300420448055926513)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(541233685680889698)
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
 p_id=>wwv_flow_imp.id(341454672909689339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(341450327972689296)
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
 p_id=>wwv_flow_imp.id(240250885956279791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(462475032697009706)
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
 p_id=>wwv_flow_imp.id(300377436632926493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(951724425179810397)
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
 p_id=>wwv_flow_imp.id(300382939160926496)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(951726021012810413)
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
 p_id=>wwv_flow_imp.id(300644274615926611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(464874799906095401)
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
 p_id=>wwv_flow_imp.id(300425175521926515)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(541233726981889699)
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
 p_id=>wwv_flow_imp.id(300558416006926574)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(963613350942233529)
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
 p_id=>wwv_flow_imp.id(300459690158926530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836920120746692917)
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
 p_id=>wwv_flow_imp.id(300456996322926529)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836919143954692907)
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
 p_id=>wwv_flow_imp.id(300433649779926519)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(754579664305565638)
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
 p_id=>wwv_flow_imp.id(300436697771926520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(756581795707057336)
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
 p_id=>wwv_flow_imp.id(300535330386926563)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1020357452239288998)
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
 p_id=>wwv_flow_imp.id(300429705874926517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(719004011612273712)
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
 p_id=>wwv_flow_imp.id(300453527095926527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836918091203692897)
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
 p_id=>wwv_flow_imp.id(300448023760926525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(553746016048197805)
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
 p_id=>wwv_flow_imp.id(832395708843277836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(832393644841277816)
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
 p_id=>wwv_flow_imp.id(300700993777926634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(896689341044610017)
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
 p_id=>wwv_flow_imp.id(300577286001926581)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1024255602195093236)
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
 p_id=>wwv_flow_imp.id(300397650621926503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(497332706338126674)
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
 p_id=>wwv_flow_imp.id(300398041498926503)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(497332706338126674)
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
 p_id=>wwv_flow_imp.id(300398425064926503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(497332706338126674)
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
 p_id=>wwv_flow_imp.id(300234738138926430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(305433785571447228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300236339509926431)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300650172523926614)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(465118478700800426)
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
 p_id=>wwv_flow_imp.id(300617091879926600)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(465238392777796217)
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
 p_id=>wwv_flow_imp.id(636521691733312958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(636521108217312952)
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
 p_id=>wwv_flow_imp.id(300704123287926635)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(936270421161561003)
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
 p_id=>wwv_flow_imp.id(300582310767926584)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1038080661776855407)
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
 p_id=>wwv_flow_imp.id(1191901039182366569)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1191900147837366560)
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
 p_id=>wwv_flow_imp.id(300621007536926601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1053008189537504243)
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
 p_id=>wwv_flow_imp.id(778723498633094526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(778073596264444846)
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
 p_id=>wwv_flow_imp.id(300236722082926431)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(885636332076350542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(885634363644350522)
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
 p_id=>wwv_flow_imp.id(602539327307753362)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(462475032697009706)
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
 p_id=>wwv_flow_imp.id(300516998072926554)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(928184749209221102)
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
 p_id=>wwv_flow_imp.id(300659943500926618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(465236808010796201)
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
 p_id=>wwv_flow_imp.id(300592831473926589)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1040868156287468007)
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
 p_id=>wwv_flow_imp.id(300688837502926629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(540078990982774831)
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
 p_id=>wwv_flow_imp.id(300361357371926485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(533837135566906791)
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
 p_id=>wwv_flow_imp.id(805134471556650927)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1054615779757037114)
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
 p_id=>wwv_flow_imp.id(805134656492650929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1054615779757037114)
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
 p_id=>wwv_flow_imp.id(300235088631926430)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(201541045639949511)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1014733328882834031)
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
 p_id=>wwv_flow_imp.id(300448472356926525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(553746016048197805)
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
 p_id=>wwv_flow_imp.id(300235924340926431)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(357099652465474333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1014733328882834031)
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
 p_id=>wwv_flow_imp.id(300235572898926430)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(799712025430355540)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(785651108811553746)
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
 p_id=>wwv_flow_imp.id(799713179082355551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(785651108811553746)
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
 p_id=>wwv_flow_imp.id(300531980496926561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(928188285205221137)
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
 p_id=>wwv_flow_imp.id(300264404746926441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(461475442537194901)
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
 p_id=>wwv_flow_imp.id(300818591188926672)
,p_branch_name=>'Go To Page 648'
,p_branch_action=>'f?p=&APP_ID.:648:&SESSION.::&DEBUG.:648:P648_STUDENT_KEY:&P648_STUDENT_KEY.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(300819025095926672)
,p_branch_name=>'Go To Page 740'
,p_branch_action=>'f?p=&APP_ID.:740:&SESSION.::&DEBUG.:740:P740_IMMI_DOC_KEY:&P648_IMMI_DOC_KEY.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300720891664926642)
,p_name=>'P648_ACADEMIC_LEVEL_DURING_ENTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300720581110926642)
,p_name=>'P648_ACADEMIC_LEVEL_ENTRY_YEAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300294133709926455)
,p_name=>'P648_AGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
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
 p_id=>wwv_flow_imp.id(300736134380926647)
,p_name=>'P648_AGENCY_MASTER_KEY'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(309639130574864634)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300716930513926641)
,p_name=>'P648_AGENT_INTRODUCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(471516255182513758)
,p_name=>'P648_ALL_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(461477750370194924)
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
 p_id=>wwv_flow_imp.id(300724175849926643)
,p_name=>'P648_ALUMNI_MEMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300716575983926641)
,p_name=>'P648_APPLICATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300443772652926523)
,p_name=>'P648_APRROVAL_VPU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(300721704900926642)
,p_name=>'P648_AREA_OF_INTEREST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300726491576926644)
,p_name=>'P648_AREA_OF_INTEREST2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300322671605926467)
,p_name=>'P648_A_LEVEL_CGPA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300323082947926467)
,p_name=>'P648_A_LEVEL_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300321839676926467)
,p_name=>'P648_A_LEVEL_EDUCATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300321075989926466)
,p_name=>'P648_A_LEVEL_HIGHEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300323431869926467)
,p_name=>'P648_A_LEVEL_SCHOOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300322278947926467)
,p_name=>'P648_A_LEVEL_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300231648812926427)
,p_name=>'P648_BD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(690675250133103557)
,p_name=>'P648_BIRTHDAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(690675126359103556)
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
 p_id=>wwv_flow_imp.id(300383323037926496)
,p_name=>'P648_BY_FINANCE_OFFICE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(951726021012810413)
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
 p_id=>wwv_flow_imp.id(300377803064926493)
,p_name=>'P648_BY_REGISTRAR_OFFICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(951724425179810397)
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
 p_id=>wwv_flow_imp.id(300731351606926646)
,p_name=>'P648_CAMPAIGN_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300243902455926433)
,p_name=>'P648_CAMPUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
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
 p_id=>wwv_flow_imp.id(300238706719926432)
,p_name=>'P648_CAMPUS_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'CAMPUS_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300730948075926646)
,p_name=>'P648_CARDPAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300247971221926435)
,p_name=>'P648_COLLABORATION_PARTNER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300248326968926435)
,p_name=>'P648_COLLABORATION_TYPE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
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
 p_id=>wwv_flow_imp.id(300721299256926642)
,p_name=>'P648_CONCLUDED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300268791117926443)
,p_name=>'P648_COR_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(461478294015194930)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300270057205926444)
,p_name=>'P648_COR_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(461478294015194930)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300269228118926444)
,p_name=>'P648_COR_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(461478294015194930)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300270450296926444)
,p_name=>'P648_COR_POST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(461478294015194930)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300269645639926444)
,p_name=>'P648_COR_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(461478294015194930)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(309639252371864635)
,p_name=>'P648_COUNSELOR_KEY'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(309639130574864634)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300246309410926434)
,p_name=>'P648_COUNTRY_FROM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300239488285926432)
,p_name=>'P648_COURSE_APPLIED_KEY'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300727348895926644)
,p_name=>'P648_CRIMINAL_CONVICTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300728927853926645)
,p_name=>'P648_CRIMINAL_FURTHERS_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(378798139110924933)
,p_name=>'P648_CROSS_INSTITUTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300237554833926431)
,p_name=>'P648_CURRENT_PROFILE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'CURRENT_PROFILE_STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300728090033926645)
,p_name=>'P648_DATA_PROTECTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300293722895926455)
,p_name=>'P648_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300528786168926560)
,p_name=>'P648_DATE_OF_BIRTH_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300299551547926457)
,p_name=>'P648_DISABILITIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(461479889034194946)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300299983309926458)
,p_name=>'P648_DISABILITIES_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(461479889034194946)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300728517404926645)
,p_name=>'P648_DISABILITY_FURTHERS_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(471516161638513757)
,p_name=>'P648_DUN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(471515897205513754)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300339051175926474)
,p_name=>'P648_ENGLISH_PROFICIENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(919998611061622942)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300339471739926474)
,p_name=>'P648_ENGLISH_SCORE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_imp.id(919998611061622942)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300296135682926456)
,p_name=>'P648_ETHNICITY_OTHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300265686217926442)
,p_name=>'P648_E_MAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(461477750370194924)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300266109690926442)
,p_name=>'P648_E_MAIL2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(461477750370194924)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300245112631926434)
,p_name=>'P648_FAMILY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(383471402610852156)
,p_name=>'P648_FO_MIGRATION_CONFIRMATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(540078990982774831)
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
 p_id=>wwv_flow_imp.id(602537677771753345)
,p_name=>'P648_FROM_APP'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300725377808926644)
,p_name=>'P648_FROM_MODULE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300239121246926432)
,p_name=>'P648_FROM_PAGE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300717722545926641)
,p_name=>'P648_FUNDING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300719692634926642)
,p_name=>'P648_FUTURE_CAREER_OPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300245513308926434)
,p_name=>'P648_GIVEN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300412948489926509)
,p_name=>'P648_HOSTEL_ACCOMODATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(462476297503009719)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300413291635926509)
,p_name=>'P648_HOSTEL_BLOCK_APPLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_imp.id(462476297503009719)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300413776008926510)
,p_name=>'P648_HOSTEL_TYPE_APPLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_imp.id(462476297503009719)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300722134114926643)
,p_name=>'P648_HOW_DO_YOU_KNOW_US'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300727708454926644)
,p_name=>'P648_HOW_TO_PAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300252884684926437)
,p_name=>'P648_IC_PASSPORT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'IC_PASSPORT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300252440384926437)
,p_name=>'P648_IC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'IC_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300253642123926437)
,p_name=>'P648_ID_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300253269383926437)
,p_name=>'P648_ID_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300441757394926522)
,p_name=>'P648_IMMI_DOC_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(836946410577805004)
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
 p_id=>wwv_flow_imp.id(300726972636926644)
,p_name=>'P648_INCOME_RANGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300238368788926431)
,p_name=>'P648_INSTITUTE_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_default=>'&GLO_INSTITUTE_KEY.'
,p_source=>'INSTITUTE_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300726123380926644)
,p_name=>'P648_INTRODUCER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300725784179926644)
,p_name=>'P648_INTRODUCER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300718529684926641)
,p_name=>'P648_INTRO_BY_STUDENT_IC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300737696554926648)
,p_name=>'P648_IS_APPLY_FOR_SCHOLARSHIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300247523042926435)
,p_name=>'P648_IS_COLLABORATION_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(378798001992924932)
,p_name=>'P648_IS_CROSS_INSTITUTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300738182706926648)
,p_name=>'P648_IS_IDP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300310546464926462)
,p_name=>'P648_IS_TRIAL_RESULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300321447421926467)
,p_name=>'P648_IS_TRIAL_RESULT_A'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300713082037926639)
,p_name=>'P648_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(461475135927194898)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300713389641926639)
,p_name=>'P648_LAST_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(461475135927194898)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300733379857926646)
,p_name=>'P648_LEAD_FROM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300731703205926646)
,p_name=>'P648_LEAD_REGISTER_BY_CAMPUS_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300736485499926647)
,p_name=>'P648_LEAD_SCORING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300737294198926648)
,p_name=>'P648_LEAD_SOURCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300736913483926648)
,p_name=>'P648_LEAD_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300247163634926435)
,p_name=>'P648_LOCAL_OVERSEAS_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300301935417926458)
,p_name=>'P648_MAJOR_ILLNESSES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(462474676414009702)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300302316882926459)
,p_name=>'P648_MAJOR_ILLNESSES_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_imp.id(462474676414009702)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(267724432754376320)
,p_name=>'P648_MALAYSIAN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300293346361926455)
,p_name=>'P648_MARITAL_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300529221009926560)
,p_name=>'P648_MARITAL_STATUS_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300730134181926645)
,p_name=>'P648_MARKETING_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300723776460926643)
,p_name=>'P648_MATRIX_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300723351055926643)
,p_name=>'P648_NAME_TO_PRINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300246770330926435)
,p_name=>'P648_NATIONALITY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300529595676926560)
,p_name=>'P648_NATIONALITY_ID_1'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300718981443926641)
,p_name=>'P648_NATIONAL_SERVICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300719338252926641)
,p_name=>'P648_NATIONAL_SERVICE_BATCH_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300300329588926458)
,p_name=>'P648_OKU_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_imp.id(461479889034194946)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300311705693926462)
,p_name=>'P648_O_LEVEL_CGPA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(471516056168513756)
,p_name=>'P648_PARLIMEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(471515897205513754)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300272668126926445)
,p_name=>'P648_PERMENANT_SAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300272991677926445)
,p_name=>'P648_PER_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300274284232926446)
,p_name=>'P648_PER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300273392577926445)
,p_name=>'P648_PER_COUNTRY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300274651444926446)
,p_name=>'P648_PER_POST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300273798499926445)
,p_name=>'P648_PER_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(461478428907194931)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300294526254926455)
,p_name=>'P648_PLACE_OF_BIRTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'PLACE_OF_BIRTH'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300734903688926647)
,p_name=>'P648_PREVIOUS_SCHOOL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300712604768926639)
,p_name=>'P648_PROFILE_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(461475135927194898)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300712219176926639)
,p_name=>'P648_PROFILE_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(461475135927194898)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300371553017926491)
,p_name=>'P648_PROGRAMME_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(533884186444102264)
,p_source=>'SELECT COURSE_KEY FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300732165515926646)
,p_name=>'P648_PROGRAMME_INTERESTED1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300732562391926646)
,p_name=>'P648_PROGRAMME_INTERESTED2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300732918072926646)
,p_name=>'P648_PROGRAMME_INTERESTED3'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300371926738926491)
,p_name=>'P648_PROGRAMME_STRUCTURE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(533884186444102264)
,p_source=>'SELECT UCSI_PROGRAMME_STRUCTURE_ID FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300765306392926657)
,p_name=>'P648_R'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1058328344868836600)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379298397007795236)
,p_name=>'P648_RACE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300742892539926650)
,p_name=>'P648_RACE_OTHERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300294979183926455)
,p_name=>'P648_RELIGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300295341004926455)
,p_name=>'P648_RELIGION_OTHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300730509835926645)
,p_name=>'P648_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300309002606926461)
,p_name=>'P648_S'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(918948789672935199)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300244777673926434)
,p_name=>'P648_SALUTATION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300733696871926646)
,p_name=>'P648_SCHOOL_COUNTRY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300734568153926647)
,p_name=>'P648_SCHOOL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300734158490926647)
,p_name=>'P648_SCHOOL_STATE_KEY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300735303341926647)
,p_name=>'P648_SCHOOL_STREAMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300735771854926647)
,p_name=>'P648_SCHOOL_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300372324266926491)
,p_name=>'P648_SCM_KEY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(533884186444102264)
,p_source=>'SELECT SCM_KEY FROM STUDENT_COURSE_MASTER WHERE STUDENT_KEY = :P648_STUDENT_KEY'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300310937364926462)
,p_name=>'P648_SECONDARY_EDUCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300312116995926463)
,p_name=>'P648_SECONDARY_EDUCATION_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300310103839926462)
,p_name=>'P648_SECONDARY_EDUCATION_HIGHEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300312496239926463)
,p_name=>'P648_SECONDARY_EDUCATION_SCHOOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300312968941926463)
,p_name=>'P648_SECONDARY_EDUCATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'SECONDARY_EDUCATION_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300311374619926462)
,p_name=>'P648_SECONDARY_EDUCATION_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300403051176926505)
,p_name=>'P648_SEL_SEMESTER3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1024944014765359432)
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
 p_id=>wwv_flow_imp.id(300292938396926454)
,p_name=>'P648_SEX'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(461478162779194928)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300528439874926559)
,p_name=>'P648_SEX_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300320643452926466)
,p_name=>'P648_SK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(919994127698622897)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300337922750926474)
,p_name=>'P648_SK2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(919996536972622921)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300722541415926643)
,p_name=>'P648_SPECIAL_ABILITIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300248756520926435)
,p_name=>'P648_SPONSORED_BY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
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
 p_id=>wwv_flow_imp.id(300309714628926462)
,p_name=>'P648_ST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(918949014555935201)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300231991402926427)
,p_name=>'P648_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(690675412740103558)
,p_name=>'P648_STATUS_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(690675126359103556)
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
 p_id=>wwv_flow_imp.id(300233233570926428)
,p_name=>'P648_STATUS_CP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(300233604170926428)
,p_name=>'P648_STATUS_CP_SCHL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(300233988240926429)
,p_name=>'P648_STATUS_CP_SP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(300232474163926428)
,p_name=>'P648_STATUS_SCHL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(300232840967926428)
,p_name=>'P648_STATUS_SP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(441677192814831098)
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
 p_id=>wwv_flow_imp.id(300308369302926461)
,p_name=>'P648_STUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(918948715634935198)
,p_source=>'P648_STUDENT_KEY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300724973450926644)
,p_name=>'P648_STUDENT_BANK_ACC_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300724499157926643)
,p_name=>'P648_STUDENT_BANK_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300715321954926640)
,p_name=>'P648_STUDENT_CURRENT_OCCUPATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300237176595926431)
,p_name=>'P648_STUDENT_KEY'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'STUDENT_KEY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300266508797926442)
,p_name=>'P648_STUDENT_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(461477750370194924)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300266897271926443)
,p_name=>'P648_STUDENT_MOBILE_NO_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(461477750370194924)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300245940257926434)
,p_name=>'P648_STUDENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300528054834926559)
,p_name=>'P648_STUDENT_NAME_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300244286533926434)
,p_name=>'P648_STUDENT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(461475305165194900)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300729288298926645)
,p_name=>'P648_STUDENT_PASS_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300716095759926640)
,p_name=>'P648_STUDENT_PROFILE_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300237961715926431)
,p_name=>'P648_STUDENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'STUDENT_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300715754806926640)
,p_name=>'P648_STUDENT_TYPE_SUB_CATAGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300717370030926641)
,p_name=>'P648_TOTAL_PARENT_INCOME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300689219379926629)
,p_name=>'P648_TOTAL_PREPAYMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(540078990982774831)
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
 p_id=>wwv_flow_imp.id(300549018736926570)
,p_name=>'P648_TOTAL_PREPAYMENT_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(945747249910213942)
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
 p_id=>wwv_flow_imp.id(300729727727926645)
,p_name=>'P648_TYPE_OF_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300239963002926432)
,p_name=>'P648_UCSI_HOLD_P_RESIDENT_PASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'UCSI_HOLD_P_RESIDENT_PASS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300741742971926649)
,p_name=>'P648_UCSI_LAST_SEM'
,p_source_data_type=>'DATE'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300742120908926649)
,p_name=>'P648_UCSI_LAST_STUDENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300739758079926648)
,p_name=>'P648_UCSI_LEADING_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300740921514926649)
,p_name=>'P648_UCSI_OTHER_INSTITUTEION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300741312458926649)
,p_name=>'P648_UCSI_OTHER_INS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300257235273926439)
,p_name=>'P648_UCSI_PASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300255266160926438)
,p_name=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300530061250926560)
,p_name=>'P648_UCSI_PASSPORT_EXPIRE_DATE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(927843160606322798)
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
 p_id=>wwv_flow_imp.id(300254426443926437)
,p_name=>'P648_UCSI_PASSPORT_ISSUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300254880673926438)
,p_name=>'P648_UCSI_PASSPORT_ISSUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300254068805926437)
,p_name=>'P648_UCSI_PASSPORT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'UCSI_PASSPORT_NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300257994105926439)
,p_name=>'P648_UCSI_PASS_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300257661935926439)
,p_name=>'P648_UCSI_PASS_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300743373181926650)
,p_name=>'P648_UCSI_PASS_TYPE_OTHERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300256392170926438)
,p_name=>'P648_UCSI_PERMENANT_RESIDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300255654236926438)
,p_name=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300740553474926649)
,p_name=>'P648_UCSI_PRORAMME_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300256883031926438)
,p_name=>'P648_UCSI_PR_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300256007524926438)
,p_name=>'P648_UCSI_PR_NUMBER_REAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(461475968171194906)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300240343027926432)
,p_name=>'P648_UCSI_P_RESIDENT_NUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
,p_source=>'UCSI_P_RESIDENT_NUM'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300722928940926643)
,p_name=>'P648_VIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(461475197808194899)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(471515929949513755)
,p_name=>'P648_VOTING_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(471515897205513754)
,p_item_source_plug_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300281113724926449)
,p_tabular_form_region_id=>wwv_flow_imp.id(903238069182828338)
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
 p_id=>wwv_flow_imp.id(378798311377924935)
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
 p_id=>wwv_flow_imp.id(378798858201924940)
,p_event_id=>wwv_flow_imp.id(378798311377924935)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378798457312924936)
,p_event_id=>wwv_flow_imp.id(378798311377924935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300813539223926671)
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
 p_id=>wwv_flow_imp.id(300814525452926671)
,p_event_id=>wwv_flow_imp.id(300813539223926671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024255602195093236)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300814084852926671)
,p_event_id=>wwv_flow_imp.id(300813539223926671)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(461475305165194900)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378798885612924941)
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
 p_id=>wwv_flow_imp.id(378799017498924942)
,p_event_id=>wwv_flow_imp.id(378798885612924941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_CROSS_INSTITUTION_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300779359036926661)
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
 p_id=>wwv_flow_imp.id(300780327180926662)
,p_event_id=>wwv_flow_imp.id(300779359036926661)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_OKU_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300781360802926662)
,p_event_id=>wwv_flow_imp.id(300779359036926661)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_DISABILITIES_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300779823745926662)
,p_event_id=>wwv_flow_imp.id(300779359036926661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_DISABILITIES_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300780873968926662)
,p_event_id=>wwv_flow_imp.id(300779359036926661)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_OKU_NUMBER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(267724233970376318)
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
 p_id=>wwv_flow_imp.id(267724311934376319)
,p_event_id=>wwv_flow_imp.id(267724233970376318)
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
 p_id=>wwv_flow_imp.id(300804144469926668)
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
 p_id=>wwv_flow_imp.id(300805134554926668)
,p_event_id=>wwv_flow_imp.id(300804144469926668)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_COLLABORATION_PARTNER_ID,P648_COLLABORATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300804588866926668)
,p_event_id=>wwv_flow_imp.id(300804144469926668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_COLLABORATION_PARTNER_ID,P648_COLLABORATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300805539340926669)
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
 p_id=>wwv_flow_imp.id(300806039490926669)
,p_event_id=>wwv_flow_imp.id(300805539340926669)
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
 p_id=>wwv_flow_imp.id(300806453760926669)
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
 p_id=>wwv_flow_imp.id(300806932049926669)
,p_event_id=>wwv_flow_imp.id(300806453760926669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024944014765359432)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414659354193022725)
,p_name=>'Refresh Attachment Region'
,p_static_id=>'refresh-attachment-region'
,p_event_sequence=>310
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(920190892011264698)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414659477194022726)
,p_event_id=>wwv_flow_imp.id(414659354193022725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(920190892011264698)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300814945141926671)
,p_name=>'Refresh Region'
,p_static_id=>'refresh-region'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(300577286001926581)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300815450151926671)
,p_event_id=>wwv_flow_imp.id(300814945141926671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1039840033547740812)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300816739296926672)
,p_name=>'Refresh Region Outstanding Fee (ADD)'
,p_static_id=>'refresh-region-outstanding-fee-add'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(300695898926926632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300817214191926672)
,p_event_id=>wwv_flow_imp.id(300816739296926672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1041039028267742141)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300817633849926672)
,p_name=>'Refresh Region Outstanding Fee (VIEW)'
,p_static_id=>'refresh-region-outstanding-fee-view'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1041039028267742141)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300818146069926672)
,p_event_id=>wwv_flow_imp.id(300817633849926672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1041039028267742141)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300797581658926666)
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
 p_id=>wwv_flow_imp.id(300798532176926667)
,p_event_id=>wwv_flow_imp.id(300797581658926666)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_RELIGION_OTHER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300798021875926666)
,p_event_id=>wwv_flow_imp.id(300797581658926666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_RELIGION_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300810748816926670)
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
 p_id=>wwv_flow_imp.id(300811720157926670)
,p_event_id=>wwv_flow_imp.id(300810748816926670)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300811193580926670)
,p_event_id=>wwv_flow_imp.id(300810748816926670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER_REAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300815791566926671)
,p_name=>'Show birthday message'
,p_static_id=>'show-birthday-message'
,p_event_sequence=>260
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300816303239926672)
,p_event_id=>wwv_flow_imp.id(300815791566926671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.message.showPageSuccess( "Happy Birthday!!!").addClass("forBirthdaymessage");')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300812127853926670)
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
 p_id=>wwv_flow_imp.id(300813161572926671)
,p_event_id=>wwv_flow_imp.id(300812127853926670)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300812602998926671)
,p_event_id=>wwv_flow_imp.id(300812127853926670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PR_NUMBER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300807359373926669)
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
 p_id=>wwv_flow_imp.id(300808876469926670)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300810299620926670)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS,P648_UCSI_PERMENANT_RESIDENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300809365622926670)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
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
 p_id=>wwv_flow_imp.id(300809881587926670)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
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
 p_id=>wwv_flow_imp.id(300807785974926669)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PERMENANT_RESIDENT_REAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300808375521926669)
,p_event_id=>wwv_flow_imp.id(300807359373926669)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS,P648_UCSI_PERMENANT_RESIDENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300796629278926666)
,p_name=>'When Add Attachement'
,p_static_id=>'when-add-attachement'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(541233685680889698)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300797172404926666)
,p_event_id=>wwv_flow_imp.id(300796629278926666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(541233685680889698)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300795757334926666)
,p_name=>'When Add Notes'
,p_static_id=>'when-add-notes'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(541233726981889699)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300796278932926666)
,p_event_id=>wwv_flow_imp.id(300795757334926666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(541233726981889699)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300785526898926663)
,p_name=>'When Cancel Credit Note'
,p_static_id=>'when-cancel-credit-note'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(465118478700800426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300786044829926663)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465118478700800426)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300786539457926663)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540068591335773340)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300787015773926663)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464874799906095401)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300787533429926664)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540078990982774831)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300788004451926664)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465238392777796217)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300788556243926664)
,p_event_id=>wwv_flow_imp.id(300785526898926663)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465236808010796201)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300788925931926664)
,p_name=>'When Cancel Discount'
,p_static_id=>'when-cancel-discount'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(465238392777796217)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300789426296926664)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465236808010796201)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300789889583926664)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465118478700800426)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300790481729926664)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465238392777796217)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300790889167926665)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464874799906095401)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300791468079926665)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540068591335773340)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300791961227926665)
,p_event_id=>wwv_flow_imp.id(300788925931926664)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540078990982774831)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300802272975926668)
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
 p_id=>wwv_flow_imp.id(300802712510926668)
,p_event_id=>wwv_flow_imp.id(300802272975926668)
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
 p_id=>wwv_flow_imp.id(300803784452926668)
,p_event_id=>wwv_flow_imp.id(300802272975926668)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(919994291881622899)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300803263057926668)
,p_event_id=>wwv_flow_imp.id(300802272975926668)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(919994291881622899)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(819008826329726152)
,p_name=>'When Dialog Close Agency'
,p_static_id=>'when-dialog-close-agency'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(799712025430355540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(819009003866726153)
,p_event_id=>wwv_flow_imp.id(819008826329726152)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(785651108811553746)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(819009062889726154)
,p_event_id=>wwv_flow_imp.id(819008826329726152)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(309639302938864636)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(819008567032726149)
,p_name=>'When Dialog Close Counselor'
,p_static_id=>'when-dialog-close-counselor'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(799713179082355551)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(819008653061726150)
,p_event_id=>wwv_flow_imp.id(819008567032726149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(785651108811553746)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(819008719224726151)
,p_event_id=>wwv_flow_imp.id(819008567032726149)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(309639302938864636)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300783166888926662)
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
 p_id=>wwv_flow_imp.id(300784129601926663)
,p_event_id=>wwv_flow_imp.id(300783166888926662)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_TYPE_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300785164579926663)
,p_event_id=>wwv_flow_imp.id(300783166888926662)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_BLOCK_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300783603147926663)
,p_event_id=>wwv_flow_imp.id(300783166888926662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_BLOCK_APPLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300784644832926663)
,p_event_id=>wwv_flow_imp.id(300783166888926662)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_HOSTEL_TYPE_APPLY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300770527744926659)
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
 p_id=>wwv_flow_imp.id(300771535702926659)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300772514094926660)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300773524791926660)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-3'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300771058725926659)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300772059681926660)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_ISSUE_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300773080284926660)
,p_event_id=>wwv_flow_imp.id(300770527744926659)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-3'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASSPORT_EXPIRE_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(267724514149376321)
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
 p_id=>wwv_flow_imp.id(267724764322376323)
,p_event_id=>wwv_flow_imp.id(267724514149376321)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(471515897205513754)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(267724686325376322)
,p_event_id=>wwv_flow_imp.id(267724514149376321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(471515897205513754)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300781721644926662)
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
 p_id=>wwv_flow_imp.id(300782707264926662)
,p_event_id=>wwv_flow_imp.id(300781721644926662)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_MAJOR_ILLNESSES_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300782253368926662)
,p_event_id=>wwv_flow_imp.id(300781721644926662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_MAJOR_ILLNESSES_TYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300792315392926665)
,p_name=>'When Misc Collection'
,p_static_id=>'when-misc-collection'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(465236808010796201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300792817250926665)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465236808010796201)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300793369579926665)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465118478700800426)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300793848201926665)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(465238392777796217)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300794300475926665)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540068591335773340)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300794836207926666)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464874799906095401)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300795322818926666)
,p_event_id=>wwv_flow_imp.id(300792315392926665)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(540078990982774831)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300798888199926667)
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
 p_id=>wwv_flow_imp.id(300799944199926667)
,p_event_id=>wwv_flow_imp.id(300798888199926667)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_ETHNICITY_OTHER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300799451358926667)
,p_event_id=>wwv_flow_imp.id(300798888199926667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_ETHNICITY_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300768097486926658)
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
 p_id=>wwv_flow_imp.id(300769096945926659)
,p_event_id=>wwv_flow_imp.id(300768097486926658)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300770100760926659)
,p_event_id=>wwv_flow_imp.id(300768097486926658)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300768612055926659)
,p_event_id=>wwv_flow_imp.id(300768097486926658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300769684649926659)
,p_event_id=>wwv_flow_imp.id(300768097486926658)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_UCSI_PASS_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300773979192926660)
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
 p_id=>wwv_flow_imp.id(300774469851926660)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300775416599926660)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_COUNTRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300776426558926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-3'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300777443519926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-4'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_CITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300778391771926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide-5'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_POST_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300774959309926660)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_POST_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300775913574926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_CITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300776920056926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-3'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300777905051926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-4'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_COUNTRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300778897069926661)
,p_event_id=>wwv_flow_imp.id(300773979192926660)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show-5'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P648_PER_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(832396205472277841)
,p_name=>'When Region Outstanding Fee Whitelist'
,p_static_id=>'when-region-outstanding-fee-whitelist'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(832393644841277816)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832396308753277842)
,p_event_id=>wwv_flow_imp.id(832396205472277841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(832393644841277816)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300800291107926667)
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
 p_id=>wwv_flow_imp.id(300800885253926667)
,p_event_id=>wwv_flow_imp.id(300800291107926667)
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
 p_id=>wwv_flow_imp.id(300801839428926667)
,p_event_id=>wwv_flow_imp.id(300800291107926667)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(918949225946935203)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300801313173926667)
,p_event_id=>wwv_flow_imp.id(300800291107926667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(918949225946935203)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300281432298926449)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(903238069182828338)
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
 p_id=>wwv_flow_imp.id(300350801025926481)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(920192262366264711)
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
 p_id=>wwv_flow_imp.id(300767709577926658)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Visa Renewal'
,p_static_id=>'generate-visa-renewal'
,p_process_sql_clob=>'NOTIFY_VISA_EXPIRY_STUDENT(:P648_STUDENT_KEY);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(300448472356926525)
,p_internal_uid=>91071892049910043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300242831651926433)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(460848411021306996)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Profile'
,p_static_id=>'initialize-form-profile'
,p_internal_uid=>90547014123909818
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300286458180926451)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(934109917077469297)
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
 p_id=>wwv_flow_imp.id(300243242544926433)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(460848411021306996)
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
 p_id=>wwv_flow_imp.id(300338346329926474)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(919996536972622921)
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
 p_id=>wwv_flow_imp.id(300330108205926470)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(919994291881622899)
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
 p_id=>wwv_flow_imp.id(300319927148926466)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(918949225946935203)
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
 p_id=>wwv_flow_imp.id(300470667811926535)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1014733328882834031)
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
 p_id=>wwv_flow_imp.id(471513408186513729)
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
,p_process_when_button_id=>wwv_flow_imp.id(300235924340926431)
,p_internal_uid=>261817590658497114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300766558986926658)
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
,p_process_when_button_id=>wwv_flow_imp.id(300235924340926431)
,p_internal_uid=>91070741458910043
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300471014218926535)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1014733328882834031)
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
