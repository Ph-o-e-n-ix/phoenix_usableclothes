
if Config.UseNewESX then
	ESX = exports["es_extended"]:getSharedObject()
else
	local ESX = nil
	TriggerEvent('esx:getSharedObject', function(obj) 
		ESX = obj 
	end)
end

local inuse = false
for _,item in pairs(Config.Items) do
	ESX.RegisterUsableItem(item.itemname, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		local itemb = item.itemname
		if not inuse then
			inuse = true
			TriggerClientEvent("phoenix:sendclothes", source, itemb)
			if Config.RemoveItem then 
				xPlayer.removeInventoryItem(itemb, 1)
			end
		else 
			TriggerClientEvent("phoenix:resetclothes", source)
			inuse = false
		end
	end)
end
