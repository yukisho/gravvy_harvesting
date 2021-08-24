data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('gravvy_harvesting:giveItem')
AddEventHandler('gravvy_harvesting:giveItem', function(min,max,item) 
	local _source = source
    local _min = min
    local _max = max
    local _item = item
	local ItemData = data.getItem(_source, _item)
	math.randomseed(GetGameTimer())
	local amount = math.random(_min,_max)
	ItemData.AddItem(amount)
end)