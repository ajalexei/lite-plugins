-- mod-version:2 -- lite-xl 2.0
local core = require "core"
local config = require "core.config"
local command = require "core.command"
local keymap = require "core.keymap"

command.add("core.docview", {
  ["pdfview:show-preview"] = function()
    -- The current (La)TeX file and path
    local texname = core.active_view:get_name()
    local viewcmd = config.pdfview and config.pdfview.view_command
    local pdffile = core.active_view:get_filename()

    pdffile = pdffile:gsub("%.tex$", ".pdf")

    -- Windows does not understand/expand the ~ from the get_filename call
    if PLATFORM == "Windows" then
      pdffile = pdffile:gsub("~", os.getenv("USERPROFILE"))
    end
    
    core.log("Opening PDF preview for %s", texname)

    if viewcmd ~= nil then
      system.exec(viewcmd .. " " .. pdffile)
    elseif PLATFORM == "Windows" then
      system.exec("start " .. pdffile)
    else
      system.exec(string.format("xdg-open %q", pdffile))
    end
  end
})

keymap.add { ["ctrl+shift+v"] = "pdfview:show-preview" }
