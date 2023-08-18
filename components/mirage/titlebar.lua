--      ████████╗██╗████████╗██╗     ███████╗██████╗  █████╗ ██████╗
--      ╚══██╔══╝██║╚══██╔══╝██║     ██╔════╝██╔══██╗██╔══██╗██╔══██╗
--         ██║   ██║   ██║   ██║     █████╗  ██████╔╝███████║██████╔╝
--         ██║   ██║   ██║   ██║     ██╔══╝  ██╔══██╗██╔══██║██╔══██╗
--         ██║   ██║   ██║   ███████╗███████╗██████╔╝██║  ██║██║  ██║
--         ╚═╝   ╚═╝   ╚═╝   ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝

-- ===================================================================
-- Initialization
-- ===================================================================


local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xresources.apply_dpi
local slidebar = require("components.mirage.smart-wibar")


-- ===================================================================
-- Titlebar Creation
-- ===================================================================


-- Add a titlebar
client.connect_signal("request::titlebars", function(c)
   local titlebar = awful.titlebar(c, {
      size = dpi(30),
      position = "right",
   })
   titlebar:setup {
      {
         wibox.layout.margin(awful.titlebar.widget.closebutton(c), dpi(4), dpi(5), dpi(5), dpi(5)),
         wibox.layout.margin(awful.titlebar.widget.minimizebutton(c), dpi(4), dpi(5), dpi(5), dpi(5)),
         wibox.layout.margin(awful.titlebar.widget.maximizedbutton(c), dpi(4), dpi(5), dpi(5), dpi(5)),
         layout = wibox.layout.fixed.vertical
      },
      nil,
      nil,
      layout = wibox.layout.align.horizontal
   }
end)