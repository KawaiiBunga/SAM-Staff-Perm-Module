if SAM_LOADED then return end

-- ADD ! COMMANDS FROM SAM ADMIN MOD HERE!
-- ["command"] = true

local cmdPerms = {
    ["noclip"] = true,
    ["god"] = true,
    ["banid"] = true,
    ["cloak"] = true,
    ["uncloak"] = true,
    ["gag"] = true,
    ["ungag"] = true,
    ["mute"] = true,
    ["unmute"] = true,
    ["freeze"] = true,
    ["unfreeze"] = true,
    ["strip"] = true,
    ["bring"] = true,
    ["goto"] = true,
    ["return"] = true,
}


hook.Add("SAM.CanRunCommand", "resitrictCommands", function(ply, cmd)
    if cmdPerms[cmd] then
        if ply:Team() != TEAM_STAFF then return false end -- Change TEAM_STAFF to your staff job
    end
end)
