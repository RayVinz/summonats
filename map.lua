local PlaceId = game.PlaceId

local supportedGames = {
    [117616339044619] = "https://raw.githubusercontent.com/RayVinz/Universal/refs/heads/main/animerng.lua",

}

local scriptUrl = supportedGames[PlaceId]

if scriptUrl then
    print("[RayVinz Hub] ตรวจพบแมพที่รองรับ กำลังโหลดสคริปต์...")
    local success, err = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
    
    if not success then
        warn("[RayVinz Hub Error] โหลดสคริปต์ไม่สำเร็จ: " .. tostring(err))
    end
else

    warn("[RayVinz Hub] ไม่รองรับแมพนี้! (Place ID ของแมพนี้คือ: " .. tostring(PlaceId) .. ")")
end
