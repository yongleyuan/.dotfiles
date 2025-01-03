--------------------
-- Basic Utils
--------------------

-- Keymap for reloading hs config
hs.hotkey.bind({ "alt", "ctrl", "cmd" }, "R", function()
	hs.reload()
end)
hs.alert.show("Reloaded config")

-- Add hs to lua-ls
local EmmyLua = hs.loadSpoon("EmmyLua")

--------------------
-- VimMode
--------------------
local VimMode = hs.loadSpoon("VimMode")
local vim = VimMode:new()

-- Disable VimMode for apps
vim:disableForApp("Code")
vim:disableForApp("zoom.us")
vim:disableForApp("iTerm")
vim:disableForApp("Ghostty")
vim:disableForApp("Terminal")

-- Enter VimMode
vim:bindHotKeys({ enter = { { "ctrl" }, "'" } })
vim:shouldDimScreenInNormalMode(false)
