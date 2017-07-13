set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.4.00.12'
,p_default_workspace_id=>42937890966776491
,p_default_application_id=>600
,p_default_owner=>'APEX_PLUGIN'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/org_orclapex_builtwithlove
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(73877157346861954)
,p_plugin_type=>'REGION TYPE'
,p_name=>'ORG.ORCLAPEX.BUILTWITHLOVE'
,p_display_name=>'Built with love using APEX'
,p_supported_ui_types=>'DESKTOP'
,p_css_file_urls=>'#PLUGIN_FILES#orclapexlove#MIN#.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'FUNCTION render_region(p_region              IN apex_plugin.t_region,',
'                       p_plugin              IN apex_plugin.t_plugin,',
'                       p_is_printer_friendly IN BOOLEAN)',
'  RETURN apex_plugin.t_region_render_result IS',
'  -- plugin attributes',
'  l_result apex_plugin.t_region_render_result;',
'  -- other vars',
'  l_region_id VARCHAR2(200);',
'  --',
'BEGIN',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_region(p_plugin => p_plugin,',
'                                  p_region => p_region);',
'  END IF;',
'  -- set vars',
'  l_region_id := apex_escape.html_attribute(p_region.static_id ||',
'                                            ''_orclapex_builtwithlove'');',
'  --',
'  -- write region html',
'  sys.htp.p(''<div id="'' || l_region_id || ''">'' ||',
'            ''<span class="footer-apex">Built with <span class="fa fa-heart"><span class="u-VisuallyHidden">love</span></span> using <a href="https://apex.oracle.com/" target="_blank">Oracle Application Express</a></span>'' ||',
'            ''</div>'');',
'  --',
'  RETURN l_result;',
'  --',
'END render_region;'))
,p_render_function=>'render_region'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Built with love using Application Express footer. A must have for every proud #orclapex community member.'
,p_version_identifier=>'1.0'
,p_about_url=>'http://joelkallman.blogspot.de/2017/07/built-with-using-oracle-application.html'
,p_files_version=>3
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E666F6F7465722D61706578207B0A2020666F6E742D73697A653A20313170783B0A20206C696E652D6865696768743A20313670783B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A2020766572746963616C2D616C69676E3A20746F';
wwv_flow_api.g_varchar2_table(2) := '703B0A7D0A0A2E666F6F7465722D61706578202E66612E66612D6865617274207B0A2020766572746963616C2D616C69676E3A20746F703B0A2020666F6E742D73697A653A20313070783B0A20206C696E652D6865696768743A20313670783B0A202077';
wwv_flow_api.g_varchar2_table(3) := '696474683A20313670783B0A2020746578742D616C69676E3A2063656E7465723B0A20207472616E736974696F6E3A20636F6C6F7220317320656173653B0A7D0A0A2E666F6F7465722D617065783A686F766572202E66612E66612D6865617274207B0A';
wwv_flow_api.g_varchar2_table(4) := '2020636F6C6F723A20234646303030303B0A2020616E696D6174696F6E3A2070756C736520317320696E66696E6974653B0A7D0A0A406B65796672616D65732070756C7365207B0A20203025207B0A202020207472616E73666F726D3A207363616C6528';
wwv_flow_api.g_varchar2_table(5) := '302E39293B0A20207D0A2020373025207B0A202020207472616E73666F726D3A207363616C6528312E3235293B0A20207D0A202031303025207B0A202020207472616E73666F726D3A207363616C6528302E39293B0A20207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(73878751850916154)
,p_plugin_id=>wwv_flow_api.id(73877157346861954)
,p_file_name=>'orclapexlove.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E666F6F7465722D617065787B666F6E742D73697A653A313170783B6C696E652D6865696768743A313670783B646973706C61793A696E6C696E652D626C6F636B3B766572746963616C2D616C69676E3A746F707D2E666F6F7465722D61706578202E66';
wwv_flow_api.g_varchar2_table(2) := '612E66612D68656172747B766572746963616C2D616C69676E3A746F703B666F6E742D73697A653A313070783B6C696E652D6865696768743A313670783B77696474683A313670783B746578742D616C69676E3A63656E7465723B7472616E736974696F';
wwv_flow_api.g_varchar2_table(3) := '6E3A636F6C6F7220317320656173657D2E666F6F7465722D617065783A686F766572202E66612E66612D68656172747B636F6C6F723A236630303B616E696D6174696F6E3A70756C736520317320696E66696E6974657D406B65796672616D6573207075';
wwv_flow_api.g_varchar2_table(4) := '6C73657B30257B7472616E73666F726D3A7363616C6528302E39297D3730257B7472616E73666F726D3A7363616C6528312E3235297D313030257B7472616E73666F726D3A7363616C6528302E39297D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(73879162641917418)
,p_plugin_id=>wwv_flow_api.id(73877157346861954)
,p_file_name=>'orclapexlove.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
