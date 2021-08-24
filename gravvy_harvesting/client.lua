local active = false
local type = nil
local min = nil
local max = nil
local animDict = nil
local animName = nil
local canHarvest

Areas = {
    ['Area1'] = {
        ['zone'] = PolyZone:Create({
                vector2(1065.9406738281, -1978.6196289062),
                vector2(1067.5544433594, -1998.28515625),
                vector2(1040.8641357422, -1998.3608398438),
                vector2(1040.9678955078, -1979.2512207031)
            }, {
                name = "corn1",
                minZ = 46.666061401367,
                maxZ = 48.688507080078
            }),
        ['type'] = 'corn',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area2'] = {
        ['zone'] = PolyZone:Create({
                vector2(1141.0008544922, -2036.169921875),
                vector2(1156.1500244141, -2011.1005859375),
                vector2(1157.01171875, -1969.7276611328),
                vector2(1167.9555664062, -1967.6796875),
                vector2(1186.3812255859, -1946.9781494141),
                vector2(1220.1264648438, -1947.5378417969),
                vector2(1216.8519287109, -1961.9138183594),
                vector2(1200.2691650391, -1964.8735351562),
                vector2(1200.7751464844, -1975.3713378906),
                vector2(1221.6826171875, -1996.3933105469),
                vector2(1209.9348144531, -2037.2264404297)
            }, {
                name = "cotton1",
                minZ = 51.60270690918,
                maxZ = 56.177139282227
            }),
        ['type'] = 'cotton',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area3'] = {
        ['zone'] = PolyZone:Create({
                vector2(1236.2624511719, -1954.8094482422),
                vector2(1349.4686279297, -1956.029296875),
                vector2(1350.3797607422, -2022.4193115234),
                vector2(1238.5986328125, -2020.6593017578)
            }, {
                name = "cotton2",
                minZ = 53.566345214844,
                maxZ = 56.250682830811
            }),
        ['type'] = 'cotton',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area4'] = {
        ['zone'] = PolyZone:Create({
                vector2(1256.3000488281, -1931.0750732422),
                vector2(1256.9505615234, -1889.0822753906),
                vector2(1352.9067382812, -1888.8519287109),
                vector2(1352.8111572266, -1931.2221679688)
            }, {
                name = "wheat1",
                minZ = 51.702365875244,
                maxZ = 54.719902038574
            }),
        ['type'] = 'wheat',
        ['amountMin'] = 1,
        ['amountMax'] = 2,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area5'] = {
        ['zone'] = PolyZone:Create({
                vector2(1356.0330810547, -1869.0001220703),
                vector2(1356.2663574219, -1823.7214355469),
                vector2(1249.2456054688, -1826.0645751953),
                vector2(1251.3511962891, -1867.1259765625)
            }, {
                name = "wheat2",
                minZ = 55.04125213623,
                maxZ = 67.304679870605
            }),
        ['type'] = 'wheat',
        ['amountMin'] = 1,
        ['amountMax'] = 2,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area6'] = {
        ['zone'] = PolyZone:Create({
                vector2(1214.6300048828, -1871.3666992188),
                vector2(1198.07421875, -1868.9294433594),
                vector2(1196.2512207031, -1892.5384521484),
                vector2(1187.6030273438, -1896.9125976562),
                vector2(1184.0712890625, -1902.4250488281),
                vector2(1184.0079345703, -1923.1749267578),
                vector2(1192.3824462891, -1929.5362548828),
                vector2(1212.5804443359, -1925.5285644531)
            }, {
                name = "cotton3",
                minZ = 48.819679260254,
                maxZ = 53.751949310303
            }),
        ['type'] = 'cotton',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area7'] = {
        ['zone'] = PolyZone:Create({
                vector2(1161.7432861328, -1860.8947753906),
                vector2(1161.1947021484, -1930.87890625),
                vector2(1137.9661865234, -1933.0620117188),
                vector2(1136.4940185547, -1900.8210449219),
                vector2(1126.8151855469, -1896.8095703125),
                vector2(1116.541015625, -1891.4173583984),
                vector2(1107.8698730469, -1871.2534179688),
                vector2(1119.9416503906, -1868.3179931641),
                vector2(1120.8859863281, -1861.2482910156)
            }, {
                name = "cotton4",
                minZ = 47.188999176025,
                maxZ = 49.452026367188
            }),
        ['type'] = 'cotton',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area8'] = {
        ['zone'] = PolyZone:Create({
                vector2(1069.5584716797, -1950.4340820312),
                vector2(1067.0258789062, -1970.5128173828),
                vector2(1039.626953125, -1970.2058105469),
                vector2(1037.2873535156, -1950.5825195312)
            }, {
                name = "corn2",
                minZ = 46.52978515625,
                maxZ = 48.480766296387
            }),
        ['type'] = 'corn',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area9'] = {
        ['zone'] = PolyZone:Create({
                vector2(1073.5819091797, -2008.2689208984),
                vector2(1072.6676025391, -2020.2546386719),
                vector2(1042.8884277344, -2020.6336669922),
                vector2(1040.9300537109, -2008.0805664062)
            }, {
                name = "corn3",
                minZ = 45.997066497803,
                maxZ = 48.682903289795
            }),
        ['type'] = 'corn',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area10'] = {
        ['zone'] = PolyZone:Create({
                vector2(1073.6866455078, -2028.05859375),
                vector2(1074.3094482422, -2038.9591064453),
                vector2(1043.4035644531, -2038.8463134766),
                vector2(1043.1459960938, -2028.2956542969)
            }, {
                name = "corn4",
                minZ = 45.920959472656,
                maxZ = 50.539302825928
            }),
        ['type'] = 'corn',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area11'] = {
        ['zone'] = PolyZone:Create({
                vector2(1041.0008544922, -1970.5556640625),
                vector2(1038.2835693359, -1950.6192626953),
                vector2(1067.2375488281, -1950.755859375),
                vector2(1067.4670410156, -1968.2072753906)
            }, {
                name = "corn5",
                minZ = 46.591201782227,
                maxZ = 48.422241210938
            }),
        ['type'] = 'corn',
        ['amountMin'] = 1,
        ['amountMax'] = 3,
        ['animDict'] = "mech_pickup@plant@tobacco",
        ['animName'] = "enter_lf",
    },
    ['Area12'] = {
        ['zone'] = PolyZone:Create({
                vector2(1067.1281738281, -1820.0402832031),
                vector2(1066.4381103516, -1808.1374511719),
                vector2(1065.076171875, -1806.8891601562),
                vector2(1066.6430664062, -1798.0882568359),
                vector2(1058.0827636719, -1798.6104736328),
                vector2(1057.5739746094, -1780.4187011719),
                vector2(1049.2604980469, -1780.9324951172),
                vector2(1048.8948974609, -1730.3050537109),
                vector2(1058.1695556641, -1729.2824707031),
                vector2(1055.6618652344, -1721.1773681641),
                vector2(1066.0737304688, -1719.7893066406),
                vector2(1066.8203125, -1710.6295166016),
                vector2(1080.6296386719, -1712.3308105469),
                vector2(1079.6453857422, -1720.5316162109),
                vector2(1089.4150390625, -1720.3172607422),
                vector2(1091.0501708984, -1750.4370117188),
                vector2(1090.1960449219, -1807.4599609375),
                vector2(1091.1490478516, -1817.5632324219)
            }, {
                name = "apples",
                minZ = 46.843742370605,
                maxZ = 50.302871704102
            }),
        ['type'] = 'apple',
        ['amountMin'] = 1,
        ['amountMax'] = 1,
        ['animDict'] = "mech_pickup@inv@apple@counter",
        ['animName'] = "enter",
    },
}

Citizen.CreateThread(function()
    while true do
        Wait(200)
        canHarvest = false
        checkPoly()
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if canHarvest then
            if not active then
                DrawTxt('Press '.. Config.InteractKey .. ' to start harvesting', 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
                if IsControlJustReleased(0, Config.Keys["ENTER"]) then
                    if type ~= nil then
                        active = true
                        if active then
                            goCollect(min, max, type, animDict, animName)
                        end
                    end
                end
            end
        end
    end
end)

function checkPoly()
    local playerped = PlayerPedId()
    if not canHarvest then
        if not IsPedOnMount(playerped) and not IsPedInAnyVehicle(playerped) then
            for k,v in pairs(Areas) do
                local coord = GetEntityCoords(playerped)
                local inPoly = Areas[k].zone:isPointInside(coord)
                if inPoly then
                    type = Areas[k].type
                    min = Areas[k].amountMin
                    max = Areas[k].amountMax
                    animDict = Areas[k].animDict
                    animName = Areas[k].animName
                    canHarvest = true
                    break
                else
                    type = nil
                    min = nil
                    max = nil
                    animDict = nil
                    animName = nil
                    canHarvest = false
                end
            end
        end
    end
end

function goCollect(min, max, type, animDict, animName)
    local _type = type
    local playerPed = PlayerPedId()
    TriggerEvent("redemrp_notification:start", "Harvesting...", 3, "success")
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(100)
    end
    TaskPlayAnim(playerPed, animDict, animName, 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
    Wait(800)
    TaskPlayAnim(playerPed, animDict, "base", 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
    Wait(2300)
    TriggerServerEvent('gravvy_harvesting:giveItem', min, max, _type)
    Wait(6000)
    ClearPedTasks(playerPed)
    active = false
    canHarvest = false
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end
