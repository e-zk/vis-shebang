-- vis-shebangsyntax
-- sets syntax command based on the first line of the file opened

-- if String starts with Start substring
function string.starts(String,Start)
        return string.sub(String,1,string.len(Start))==Start
end

-- main logic
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- grab the first line
        local shebang = vis.win.file.lines[1]

	-- 
        if(string.starts(shebang, "#!/bin/sh")) then
                vis:command('set syntax bash')
        elseif(string.starts(shebang, "#!/usr/bin/env python3")) then
                vis:command('set syntax python')
        end
end)
