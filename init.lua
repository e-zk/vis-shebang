-- vis-shebang
-- plugin that sets syntax based on the first line of the file opened
--
-- expects a 'shebangs' variable to be defined:
--
--	shebangs = {
--		["#!/bin/sh"] = "bash",
--		["#!/usr/bin/env python3"] = "python"
--	}
--
-- this variable maps shebangs (strings at the start of the file) to the
-- desired syntax. (`set syntax <...>`)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- if the shebangs variable is undefined, do nothing
	if shebangs == nil then return end

	-- grab the first line
	local shebang = vis.win.file.lines[1]

	-- grab the desired syntax for the current file's shebang;
	-- if no syntax is undefined for the current shebang, then do nothing
	local shebang_syntax = shebangs[shebang]
	if shebang_syntax == nil then return end

	-- set the syntax
	vis:command("set syntax " .. shebang_syntax)
end)
