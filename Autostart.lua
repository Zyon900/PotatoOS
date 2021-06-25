
-- Downloader

local function download(url)
    local response = http.get(url)
    local sResponse = response.readAll()
    response.close()
    return sResponse
end

-- Save File

local function saveFile(content, path) 
    if fs.exists(path) then
        fs.delete(path)
    end
    local file = fs.open(path, "w")
    file.write(content)
    file.close()
end

-- Update App from Json
local function Update()
end

-- Fetch apps.json and update PotatoOS.lua

local function getLinks()

    -- permalink
    local appsJsonLink = ""

    local appsJson = download(appsJsonLink)

end

-- Update App