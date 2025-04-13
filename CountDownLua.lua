function getday(var1, var2, var3)
    
  local arr = {
        year = tonumber(var1), 
        month = tonumber(var2), 
        day = tonumber(var3), 
        hour = 0, 
        minute = 0, 
        second = 0
    }  
	
    local rLeft = os.time(arr) - os.time() - 3600
    local dLeft = math.floor(rLeft/60/60/24)

    if dLeft < 0 then
        return "000"
    else
	if dLeft < 10 then
	return "00" .. dLeft
	else
    if dLeft < 100 then
	    return "0" .. dLeft
    else
        return dLeft
    end
	end
	end

end

