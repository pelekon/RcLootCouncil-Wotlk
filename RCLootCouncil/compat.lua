-- get num group members backport
if not GetNumGroupMembers then
    function GetNumGroupMembers()
        if IsInRaid() then 
            return GetNumRaidMembers()
        else
            return GetNumPartyMembers()
        end
    end
end