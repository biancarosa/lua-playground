-- local a = nil
-- if a then
--     print('olar')
-- else
--     print('not olar')
-- end

local json = [[{
    "chave" : null,
    "outra_chave" : "not null"
}]]

local cjson_decode = require("cjson").decode

local jayson = cjson_decode(json)
print(jayson.chave)
print(getmetatable(jayson.chave))
print(jayson.outra_chave)
print(getmetatable(jayson.outra_chave))


if jayson.chave then
    print('jayson.chave is not nil')
else
    print('jayson.chave is nil')
end
if getmetatable(jayson.chave) then
    print('getmetatable is not nil')
else
    print('getmetatable is nil')
end