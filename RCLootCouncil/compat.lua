-- get num group members backport
local addon = LibStub("AceAddon-3.0"):GetAddon("RCLootCouncil")

function addon:IsInRaid() 
    return GetNumRaidMembers() > 0
end

function addon:IsInGroup()
    return (GetNumRaidMembers() == 0 and GetNumPartyMembers() > 0)
end

function addon:GetNumGroupMembers()
    if addon:IsInRaid() then 
        return GetNumRaidMembers()
    else
        return GetNumPartyMembers()
    end
end