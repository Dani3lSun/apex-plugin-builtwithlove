FUNCTION render_region(p_region              IN apex_plugin.t_region,
                       p_plugin              IN apex_plugin.t_plugin,
                       p_is_printer_friendly IN BOOLEAN)
  RETURN apex_plugin.t_region_render_result IS
  -- plugin attributes
  l_result apex_plugin.t_region_render_result;
  -- other vars
  l_region_id VARCHAR2(200);
  --
BEGIN
  -- Debug
  IF apex_application.g_debug THEN
    apex_plugin_util.debug_region(p_plugin => p_plugin,
                                  p_region => p_region);
  END IF;
  -- set vars
  l_region_id := apex_escape.html_attribute(p_region.static_id ||
                                            '_orclapex_builtwithlove');
  --
  -- write region html
  sys.htp.p('<div id="' || l_region_id || '">' ||
            '<span class="footer-apex">Built with <span class="fa fa-heart"><span class="u-VisuallyHidden">love</span></span> using <a href="https://apex.oracle.com/" target="_blank">Oracle Application Express</a></span>' ||
            '</div>');
  --
  RETURN l_result;
  --
END render_region;