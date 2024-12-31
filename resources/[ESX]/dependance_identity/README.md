# supv_convert-unix

*__How to use? :__*
```lua
local moment <const> = exports['supv_convert-unix']

---@param unixTime: number
---@param date_format?: string-'DD/MM/YYYY'
---@return string
print(moment:ConvertUnixTime(832716000000)) --> 22/05/1996 
```
