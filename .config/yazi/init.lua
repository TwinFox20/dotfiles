require("no-status"):setup()

require("zoxide"):setup { update_db = true }

if os.getenv("NVIM") then
  require("toggle-pane"):entry("min-preview")
end

Header:children_add(function()
  if ya.target_family() ~= "unix" then
    return ""
  end
  return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("blue")
end, 500, Header.LEFT)
