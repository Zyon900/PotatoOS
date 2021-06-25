
-- Downloader

local function download(url)
    local response = http.get(url)
    local sResponse = response.readAll()
    response.close()
    return sResponse
end

-- Save File

local function saveFile(code, path)
    
    if fs.exists(path) then
        fs.delete(path)
    end

    local file = fs.open(path, "wb")
    file.write(code)
    file.close()
end

