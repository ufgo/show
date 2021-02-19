local tools = {}


function tools.arrShuffle(t)
	math.randomseed(os.time())
	local tbl = {}
	for i = 1, #t do
		tbl[i] = t[i]
	end
	for i = #tbl, 2, -1 do
		local j = math.random(i)
		tbl[i], tbl[j] = tbl[j], tbl[i]
	end
	return tbl
end

function tools.tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

return tools