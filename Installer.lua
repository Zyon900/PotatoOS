
-- Installs AutoStart.lua 

local function install()
    local response = http.get(url)
    local sResponse = response.readAll()
    response.close()
    if fs.exists("startup") then
        fs.delete("startup")
    end
    local file = fs.open("startup", "w")
    file.write(sResponse)
    file.close()
    os.reboot()
end

install()