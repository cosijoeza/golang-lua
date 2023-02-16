local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

local RFID_test =  uuid()
print(RFID_test)

unit = {
    RFID =  uuid(),
    --AuthorizeRequest = initAuthorizeRequest()
};