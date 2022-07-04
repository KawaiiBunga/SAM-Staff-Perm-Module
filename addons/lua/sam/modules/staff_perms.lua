if SAM_LOADED then return end

-- ADD ! COMMANDS FROM SAM ADMIN MOD HERE!
-- ["command"] = true
-- You should be able to use any of the SAM commands in the table below
-- MAKE SURE TO ADD A , AFTER EACH ENTRY AND LEAVE IT OUT FOR THE LAST ONE!

local cmdPerms = {
    ["noclip"] = true,
    ["god"] = true,
	  ["banid"] = true,
    ["ban"] = true,
    ["kick"] = true,
}


hook.Add("SAM.CanRunCommand", "resitrictCommands", function(ply, cmd)
    if cmdPerms[cmd] then
        if ply:Team() != TEAM_STAFF then return false end -- Change TEAM_STAFF to your staff job
    end
end)
