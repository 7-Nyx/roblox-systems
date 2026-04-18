local DataStoreService = game:GetService("DataStoreService")
local store = DataStoreService:GetDataStore("PlayerData")

local DataHandler = {}

function DataHandler:Save(player, data)
    local success, err = pcall(function()
        store:SetAsync(player.UserId, data)
    end)

    if success then
        print("Data saved")
    else
        warn("Save failed:", err)
    end
end

function DataHandler:Load(player)
    local data
    local success, err = pcall(function()
        data = store:GetAsync(player.UserId)
    end)

    if success then
        return data
    else
        warn("Load failed:", err)
        return nil
    end
end

return DataHandler
