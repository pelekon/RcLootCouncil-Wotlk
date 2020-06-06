local LibD = LibStub:GetLibrary("LibDeflate")
local deflate_level = {level = 9}
local PREFIX = "RCLootCouncil_WotLK"

function RCLootCouncil:AceCommSetup()
    self:RegisterComm(PREFIX)
end

function RCLootCouncil:Send(target, msg, ...)
    local serialized_data = self:Serialize(msg, {...})
    local compressed_data = LibD:CompressDeflate(serialized_data, deflate_level)
    local encoded = LibD:EncodeForPrint(compressed_data)
    self:debugS("Sending " .. msg .. " data: " .. encoded)
    self:SendCommMessage(PREFIX, encoded, target)
end

function RCLootCouncil:SendTo(target, msg, ...)
    local serialized_data = self:Serialize(msg, {...})
    local compressed_data = LibD:CompressDeflate(serialized_data, deflate_level)
    local encoded = LibD:EncodeForPrint(compressed_data)

    self:SendCommMessage(PREFIX, encoded, "WHISPER", target)
end

function RCLootCouncil:OnCommReceived(prefix, msg, distri, sender)
    if prefix ~= PREFIX then return end

    local decoded_msg = LibD:DecodeForPrint(msg)
    local decompressed_msg = LibD:DecompressDeflate(decoded_msg)
    local ok, command, data = self:Deserialize(decompressed_msg)

    if ok then
        self:HandleMessage(command, data, distri, sender)
    end
end