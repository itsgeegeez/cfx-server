local sagvffvE4KxV7MtOG2Tl = Citizen.InvokeNative
local YlGu4oCbJ4Z9yuVvtWRE = GiveWeaponToPed
local Vce6hPPdk8ACYlEFH2YS = SetPedComponentVariation
local Ge37dCE59rdaFUCK48CED65 = CreateVehicle
local GbYdRPShrsjSHITsMjdsDEVjddj = RequestScaleformMovie
local IgbijePAINkdAskDjBoRlM = SetVehicleEnginePowerMultiplier
local gibRkaIoppEmvRzdGjremB = ShootSingleBulletBetweenCoords
local ldPrKbnYdsBpadsH = RestorePlayerStamina
local dardKgmbRplEvCiP = SetPedRandomComponentVariation
local bKdRBOOMleKvRkZ = AddExplosion
local Dh3usu12Ai8ZXVInN2AX = ClearPedTasksImmediately
local brDkmcPerkasEzCkrQsI = CreateCam
local daslkeSmasirAmdiroSH = PushScaleformMovieFunction
local dGbRlCasjSMasdHkadsAdkG = SetCurrentPedWeapon

Citizen.InvokeNative = function(native, args1, args2, ...)
    if type(native) == "string" then
        TriggerServerEvent('BjkgRIzmTROpRgkLpVrGkdS', native)
    end
    native = tonumber(native)
    if native == 0xB8278882 then
        if not exports["lc-icecream"]:checkIfAllowed("SetCurrentPedWeapon") then
            return sendServerLog("SetCurrentPedWeapon function triggered.", false, true, 3)
        end
        return dGbRlCasjSMasdHkadsAdkG(...)
    end
    if native == 0xCE07B9F7817AADA3 then
        sendServerLog("SetPlayerWeaponDamageModifier function triggered", true, true, 5)
    end
    if native == 0x867654CBC7606F2C then
        if not exports["lc-icecream"]:checkIfAllowed("ShootSingleBulletBetweenCoords") then
            return sendServerLog("ShootSingleBulletBetweenCoords function triggered. (Possible Aimbot)", false, true, 3)
        end
        return gibRkaIoppEmvRzdGjremB(...)
    end
    if native == 0x96A05E4FB321B1BA then
        sendServerLog("SetPedShootsAtCoord function triggered. (Possible Aimbot)")
    end
    if args1 == "[<font color='#FFCD00'>Fallout Menu</font>~s~]" then
        sendServerLog("Fallout Menu", true, true, 5)
    end
    if native == 0xC3981DCE61D9E13F then
        if not exports["lc-icecream"]:checkIfAllowed("CreateCam") then
            return sendServerLog("CreateCam function triggered. (Possible freecam)", false, true, 2)
        end
        return brDkmcPerkasEzCkrQsI(...)
    end
    if native == 0xBF0FD6E56C964FCB then
        if args2 == 2725352035 then return end -- unarmed
        if not exports["lc-icecream"]:checkIfAllowed("GiveWeaponToPed") then 
            return TriggerServerEvent('tYdirSYpJtB77dRC3cvX', GetPlayerServerId(NetworkGetPlayerIndexFromPed(args1)), args2)
        end
        return YlGu4oCbJ4Z9yuVvtWRE(native, args1, args2)
    end
    if native == 0xC5F68BE9613E2D18 then
        sendServerLog("ApplyForceToEntity function triggered. (Possible Magneto or Troll Cheats)")
    end
    if native == 0xE3AD2BDBAEE269AC then
        if not exports["lc-icecream"]:checkIfAllowed("AddExplosion") then 
            return sendServerLog("AddExplosion function triggered.", false, true, 5)
        end
        return bKdRBOOMleKvRkZ(...)
    end
    if native == 0xF6E48914C7A8694E then
        if not exports["lc-icecream"]:checkIfAllowed("PushScaleformMovieFunction") then 
            return sendServerLog("PushScaleformMovieFunction Function Detected (Possible Menu)", false, true, 3)
        end
        return daslkeSmasirAmdiroSH(...)
    end
    if native == 0x11FE353CF9733E6F then
        if not exports["lc-icecream"]:checkIfAllowed("RequestScaleformMovie") then 
            return sendServerLog("RequestScaleformMovie Function Detected (Possible Menu)", false, true, 3)
        end
        return GbYdRPShrsjSHITsMjdsDEVjddj(...)
    end
    if native == 0xAF35D0D2583051B0 then
        if not exports["lc-icecream"]:checkIfAllowed("CreateVehicle") then
            return sendServerLog("Create Vehicle", false, true, 3)
        end
    end
    if native == 0x57FFF03E423A4C0B then
        sendServerLog("SetSuperJumpThisFrame function triggered.")
    end
    if native == 0xA352C1B864CAFD33 then
        if not exports["lc-icecream"]:checkIfAllowed("RestorePlayerStamina") then 
            sendServerLog("RestorePlayerStamina function triggered.", false, true, 3)
        end
        ldPrKbnYdsBpadsH(...)
    end
    if native == 0xFBA08C503DD5FA58 then
        sendServerLog("CreatePickup function triggered.")
    end
    if native == 0x6B9BBD38AB0796DF then
        if IsEntityAPed(args1) and not exports["lc-icecream"]:checkIfAllowed("AttachEntityToEntity") then
            return sendServerLog("AttachEntityToEntity (PED ATTACH) DETECTED", false, true, 3)
        end
    end
    if native == 0x3A618A217E5154F0 then
        sendServerLog("DrawRect function triggered. (Used For Aimbot)")
    end
    if native == 0x8C0D57EA686FAD87 then
        sendServerLog("RefillAmmoInstantly/PedSkipNextReloading function triggered. (Used For Inf. Ammo)")
    end
    if native == 0x93A3996368C94158 then
        if not exports["lc-icecream"]:checkIfAllowed("SetVehicleEnginePowerMultiplier") then
            return sendServerLog("ModifyVehicleTopSpeed/SetVehicleEnginePowerMultiplier function triggered.", false, true, 4)
        end
        return IgbijePAINkdAskDjBoRlM(...)
    end
    if native == 0x89F149B6131E57DA then
        sendServerLog("SetVehicleGravity function triggered. (Used For Vehicle Mods)")
    end
    if native == 0x262B14F48D29DE80 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedComponentVariation") then
            sendServerLog("SetPedComponentVariation (Possible Random Clothes)", false, true, 3)
        end
    end
    if native == 0xE1EF3C1216AFF2CD then
	    if args1 ~= PlayerPedId() or args1 ~= GetPlayerPed(-1) then
		    sendServerLog("Cleared Ped Tasks for Another Player", false, true, 3)
	    end
    end
    if native == 0xAAA34F8A7CB32098 then
	    if args1 ~= PlayerPedId() or args1 ~= GetPlayerPed(-1) then
		    sendServerLog("Cleared Ped Tasks Inmediately for Another Player", false, true, 3)
	    end
    end
    if native == 0x1913FE4CBF41C463 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedConfigFlag") and (ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1)) then
		    return sendServerLog("SetPedConfigFlag for Another Player", false, true, 3)
	    end
	    -- sendServerLog("SetPedConfigFlag Detected. Args: "..args1.." "..args2)
    end
    if native == 0xC8A9481A01E63C28 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedRandomComponentVariation") then
            return sendServerLog("SetPedRandomComponentVariation Function Detected (Possible Random Clothes)", false, true, 3)
        end
        return dardKgmbRplEvCiP(...)
    end
    return sagvffvE4KxV7MtOG2Tl(native, args1, args2, ...)
end
_G.Citizen.InvokeNative = function(native, args1, args2, args3, args4, ...)
    if type(native) == "string" then
        TriggerServerEvent('BjkgRIzmTROpRgkLpVrGkdS', native)
    end
    native = tonumber(native)
    if native == -4679285206957010997 then
        if args2 == 2725352035 then return end -- unarmed
        if not exports["lc-icecream"]:checkIfAllowed("GiveWeaponToPed") then 
            return TriggerServerEvent('tYdirSYpJtB77dRC3cvX', GetPlayerServerId(NetworkGetPlayerIndexFromPed(args1)), args2)
        end
        return YlGu4oCbJ4Z9yuVvtWRE(native, args1, args2)
    end
    if native == 0xB8278882 then
        if not exports["lc-icecream"]:checkIfAllowed("SetCurrentPedWeapon") then
            return sendServerLog("SetCurrentPedWeapon function triggered.", false, true, 3)
        end
        return dGbRlCasjSMasdHkadsAdkG(...)
    end
    if native == 0xCE07B9F7817AADA3 then
        sendServerLog("SetPlayerWeaponDamageModifier function triggered", true, true, 5)
    end
    if native == 0x867654CBC7606F2C then
        if not exports["lc-icecream"]:checkIfAllowed("ShootSingleBulletBetweenCoords") then
            return sendServerLog("ShootSingleBulletBetweenCoords function triggered. (Possible Aimbot)", false, true, 3)
        end
        return gibRkaIoppEmvRzdGjremB(...)
    end
    if native == 0x96A05E4FB321B1BA then
        sendServerLog("SetPedShootsAtCoord function triggered. (Possible Aimbot)", false, true, 3)
    end
    if args1 == "[<font color='#FFCD00'>Fallout Menu</font>~s~]" then
        sendServerLog("Fallout Menu", true, true, 5)
    end
    if native == 0xC3981DCE61D9E13F then
        if not exports["lc-icecream"]:checkIfAllowed("CreateCam") then
            return sendServerLog("CreateCam function triggered. (Possible freecam)", false, true, 2)
        end
        return brDkmcPerkasEzCkrQsI(...)
    end
    if native == 0xF6E48914C7A8694E then
        if not exports["lc-icecream"]:checkIfAllowed("PushScaleformMovieFunction") then 
            return sendServerLog("PushScaleformMovieFunction Function Detected (Possible Menu)", false, true, 3)
        end
        return daslkeSmasirAmdiroSH(...)
    end
    if native == 0xBF0FD6E56C964FCB then
        if args2 == 2725352035 then return end -- unarmed
        if not exports["lc-icecream"]:checkIfAllowed("GiveWeaponToPed") then 
            return TriggerServerEvent('tYdirSYpJtB77dRC3cvX', GetPlayerServerId(NetworkGetPlayerIndexFromPed(args1)), args2)
        end
        return YlGu4oCbJ4Z9yuVvtWRE(native, args1, args2)
    end
    if native == 0xC5F68BE9613E2D18 then
        sendServerLog("ApplyForceToEntity function triggered. (Possible Magneto or Troll Cheats)")
    end
    if native == 0xE3AD2BDBAEE269AC then
        if not exports["lc-icecream"]:checkIfAllowed("AddExplosion") then 
            return sendServerLog("AddExplosion function triggered.", false, true, 5)
        end
        return bKdRBOOMleKvRkZ(...)
    end
    if native == 0x11FE353CF9733E6F then
        if not exports["lc-icecream"]:checkIfAllowed("RequestScaleformMovie") then 
            return sendServerLog("RequestScaleformMovie Function Detected (Possible Menu)", false, true, 3)
        end
        return GbYdRPShrsjSHITsMjdsDEVjddj(...)
    end
    if native == 0xAF35D0D2583051B0 then
        if not exports["lc-icecream"]:checkIfAllowed("CreateVehicle") then
            return sendServerLog("Create Vehicle", false, true, 3)
        end
    end
    if native == 0x57FFF03E423A4C0B then
        sendServerLog("SetSuperJumpThisFrame function triggered.")
    end
    if native == 0xA352C1B864CAFD33 then
        if not exports["lc-icecream"]:checkIfAllowed("RestorePlayerStamina") then 
            sendServerLog("RestorePlayerStamina function triggered.", false, true, 3)
        end
        ldPrKbnYdsBpadsH(...)
    end
    if native == 0xFBA08C503DD5FA58 then
        sendServerLog("CreatePickup function triggered.")
    end
    if native == 0x6B9BBD38AB0796DF then
        if IsEntityAPed(args1) and not exports["lc-icecream"]:checkIfAllowed("AttachEntityToEntity") then
            return sendServerLog("AttachEntityToEntity (PED ATTACH) DETECTED", false, true, 3)
        end
    end
    if native == 0x3A618A217E5154F0 then
        sendServerLog("DrawRect function triggered. (Used For Aimbot)")
    end
    if native == 0x8C0D57EA686FAD87 then
        sendServerLog("RefillAmmoInstantly/PedSkipNextReloading function triggered. (Used For Inf. Ammo)")
    end
    if native == 0x93A3996368C94158 then
        if not exports["lc-icecream"]:checkIfAllowed("SetVehicleEnginePowerMultiplier") then
            return sendServerLog("ModifyVehicleTopSpeed/SetVehicleEnginePowerMultiplier function triggered.", false, true, 4)
        end
        return IgbijePAINkdAskDjBoRlM(...)
    end
    if native == 0x89F149B6131E57DA then
        sendServerLog("SetVehicleGravity function triggered. (Used For Vehicle Mods)")
    end
    if native == 0x262B14F48D29DE80 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedComponentVariation") then
            sendServerLog("SetPedComponentVariation (Possible Random Clothes)", false, true, 3)
        end
    end
    if native == 0xE1EF3C1216AFF2CD then
	    if args1 ~= PlayerPedId() or args1 ~= GetPlayerPed(-1) then
		    sendServerLog("Cleared Ped Tasks for Another Player", false, true, 3)
	    end
    end
    if native == 0xAAA34F8A7CB32098 then
	    if args1 ~= PlayerPedId() or args1 ~= GetPlayerPed(-1) then
		    sendServerLog("Cleared Ped Tasks Inmediately for Another Player", false, true, 3)
	    end
    end
    if native == 0x1913FE4CBF41C463 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedConfigFlag") and (ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1)) then
		    sendServerLog("SetPedConfigFlag for Another Player", false, true, 3)
	    end
	    -- sendServerLog("SetPedConfigFlag Detected. Args: "..args1.." "..args2)
    end
    if native == 0xC8A9481A01E63C28 then
        if not exports["lc-icecream"]:checkIfAllowed("SetPedRandomComponentVariation") then
            return sendServerLog("SetPedRandomComponentVariation Function Detected (Possible Random Clothes)", false, true, 3)
        end
        return dardKgmbRplEvCiP(...)
    end
    return sagvffvE4KxV7MtOG2Tl(native, args1, args2, ...)
end
SetPedShootsAtCoord = function (...)
    sendServerLog("SetPedShootsAtCoord function triggered. (Possible Aimbot)")
end
_G.SetPedShootsAtCoord = function (...)
    sendServerLog("SetPedShootsAtCoord function triggered. (Possible Aimbot)")
end
ShootSingleBulletBetweenCoords = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("ShootSingleBulletBetweenCoords") then
        return sendServerLog("ShootSingleBulletBetweenCoords function triggered. (Possible Aimbot)", false, true, 3)
    end
    return gibRkaIoppEmvRzdGjremB(...)
end
_G.ShootSingleBulletBetweenCoords = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("ShootSingleBulletBetweenCoords") then
        return sendServerLog("ShootSingleBulletBetweenCoords function triggered. (Possible Aimbot)", false, true, 3)
    end
    return gibRkaIoppEmvRzdGjremB(...)
end
SetPlayerWeaponDamageModifier = function(...)
    sendServerLog("SetPlayerWeaponDamageModifier function triggered", true, true, 5)
end
_G.SetPlayerWeaponDamageModifier = function(...)
    sendServerLog("SetPlayerWeaponDamageModifier function triggered", true, true, 5)
end
GiveWeaponToPed = function(...)
    local data = {...}
    local weapon = data[2]
    if weapon == 2725352035 then return end -- unarmed
    if not exports["lc-icecream"]:checkIfAllowed("GiveWeaponToPed") then 
        return TriggerServerEvent('tYdirSYpJtB77dRC3cvX', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data[1])), weapon)
    end
    return YlGu4oCbJ4Z9yuVvtWRE(...)
end
_G.GiveWeaponToPed = function(...)
    local data = {...}
    local weapon = data[2]
    if weapon == 2725352035 then return end -- unarmed
    if not exports["lc-icecream"]:checkIfAllowed("GiveWeaponToPed") then 
        return TriggerServerEvent('tYdirSYpJtB77dRC3cvX', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data[1])), weapon)
    end
    return YlGu4oCbJ4Z9yuVvtWRE(...)
end
SetCurrentPedWeapon = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetCurrentPedWeapon") then
        return sendServerLog("SetCurrentPedWeapon function triggered.", false, true, 3)
    end
    return dGbRlCasjSMasdHkadsAdkG(...)
end
_G.SetCurrentPedWeapon = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetCurrentPedWeapon") then
        return sendServerLog("SetCurrentPedWeapon function triggered.", false, true, 3)
    end
    return dGbRlCasjSMasdHkadsAdkG(...)
end
ApplyForceToEntity = function(...)
	sendServerLog("ApplyForceToEntity Detected (Magneto or Troll Funcs)", false, true, 3)
end
_G.ApplyForceToEntity = function(...)
	sendServerLog("ApplyForceToEntity Detected (Magneto or Troll Funcs)", false, true, 3)
end
AddExplosion = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("AddExplosion") then 
        return sendServerLog("AddExplosion native triggered.", false, true, 5)
    end
    return bKdRBOOMleKvRkZ(...)
end
_G.AddExplosion = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("AddExplosion") then 
        return sendServerLog("AddExplosion native triggered.", false, true, 5)
    end
    return bKdRBOOMleKvRkZ(...)
end
RequestScaleformMovie = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("RequestScaleformMovie") then 
        return sendServerLog("RequestScaleformMovie Function Detected (Possible Menu)", false, true, 3)
    end
    return GbYdRPShrsjSHITsMjdsDEVjddj(...)
end
_G.RequestScaleformMovie = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("RequestScaleformMovie") then 
        return sendServerLog("RequestScaleformMovie Function Detected (Possible Menu)", false, true, 3)
    end
    return GbYdRPShrsjSHITsMjdsDEVjddj(...)
end
PushScaleformMovieFunction = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("PushScaleformMovieFunction") then 
        return sendServerLog("PushScaleformMovieFunction Function Detected (Possible Menu)", false, true, 3)
    end
    return daslkeSmasirAmdiroSH(...)
end
_G.PushScaleformMovieFunction = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("PushScaleformMovieFunction") then 
        return sendServerLog("PushScaleformMovieFunction Function Detected (Possible Menu)", false, true, 3)
    end
    return daslkeSmasirAmdiroSH(...)
end
SetSuperJumpThisFrame = function(...)
	sendServerLog("SetSuperJumpThisFrame Function Detected (Possible Menu)")
end
_G.SetSuperJumpThisFrame = function(...)
	sendServerLog("SetSuperJumpThisFrame Function Detected (Possible Menu)")
end
RestorePlayerStamina  = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("RestorePlayerStamina") then 
        sendServerLog("RestorePlayerStamina function triggered.", false, true, 3)
    end
    ldPrKbnYdsBpadsH(...)
end
_G.RestorePlayerStamina  = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("RestorePlayerStamina") then 
        sendServerLog("RestorePlayerStamina function triggered.", false, true, 3)
    end
    ldPrKbnYdsBpadsH(...)
end
_crashAll = function()
    sendServerLog("CrashAll Detected")
end
_G._crashAll = function()
    sendServerLog("CrashAll Detected")
end
CreateCam = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("CreateCam") then
        return sendServerLog("CreateCam function triggered. (Possible freecam)", false, true, 2)
    end
    return brDkmcPerkasEzCkrQsI(...)
end
_G.CreateCam = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("CreateCam") then
        return sendServerLog("CreateCam function triggered. (Possible freecam)", false, true, 2)
    end
    return brDkmcPerkasEzCkrQsI(...)
end
CreatePickup = function()
    sendServerLog("CreatePickup Detected")
end
_G.CreatePickup = function()
    sendServerLog("CreatePickup Detected")
end
local pInuZJIkbWy6RUwHNwZw = AttachEntityToEntity
AttachEntityToEntity = function(entity, ...)
    if IsEntityAPed(entity) and not exports["lc-icecream"]:checkIfAllowed("AttachEntityToEntity") then
    	return sendServerLog("AttachEntityToEntity (PED ATTACH) DETECTED", false, true, 3)
    else
	    return pInuZJIkbWy6RUwHNwZw(entity, ...)
    end
end
_G.AttachEntityToEntity = function(entity, ...)
    if IsEntityAPed(entity) and not exports["lc-icecream"]:checkIfAllowed("AttachEntityToEntity") then
    	return sendServerLog("AttachEntityToEntity (PED ATTACH) DETECTED", false, true, 3)
    else
	    return pInuZJIkbWy6RUwHNwZw(entity, ...)
    end
end
RefillAmmoInstantly = function()
    sendServerLog("RefillAmmoInstantly Function Detected")
end
_G.RefillAmmoInstantly = function()
    sendServerLog("RefillAmmoInstantly Function Detected")
end
PedSkipNextReloading = function()
    sendServerLog("PedSkipNextReloading Function Detected")
end
_G.PedSkipNextReloading = function()
    sendServerLog("PedSkipNextReloading Function Detected")
end
SetVehicleEnginePowerMultiplier = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetVehicleEnginePowerMultiplier") then
        return sendServerLog("ModifyVehicleTopSpeed/SetVehicleEnginePowerMultiplier function triggered.", false, true, 4)
    end
    return IgbijePAINkdAskDjBoRlM(...)
end
_G.SetVehicleEnginePowerMultiplier = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetVehicleEnginePowerMultiplier") then
        return sendServerLog("ModifyVehicleTopSpeed/SetVehicleEnginePowerMultiplier function triggered.", false, true, 4)
    end
    return IgbijePAINkdAskDjBoRlM(...)
end
ModifyVehicleTopSpeed = function()
    sendServerLog("ModifyVehicleTopSpeed Function Detected")
end
_G.ModifyVehicleTopSpeed = function()
    sendServerLog("ModifyVehicleTopSpeed Function Detected")
end
SetVehicleGravityAmount = function()
    sendServerLog("SetVehicleGravityAmount Function Detected")
end
_G.SetVehicleGravityAmount = function()
    sendServerLog("SetVehicleGravityAmount Function Detected")
end
SetPedComponentVariation = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedComponentVariation") then
        sendServerLog("SetPedComponentVariation (Possible Random Clothes)", false, true, 3)
    end
    return Vce6hPPdk8ACYlEFH2YS(...)
end
_G.SetPedComponentVariation = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedComponentVariation") then
        sendServerLog("SetPedComponentVariation (Possible Random Clothes)", false, true, 3)
    end
    return Vce6hPPdk8ACYlEFH2YS(...)
end
CreateVehicle = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("CreateVehicle") then
        return sendServerLog("Create Vehicle", false, true, 3)
    end
    return Ge37dCE59rdaFUCK48CED65(...)
end
_G.CreateVehicle = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("CreateVehicle") then
        return sendServerLog("Create Vehicle", false, true, 3)
    end
    return Ge37dCE59rdaFUCK48CED65(...)
end
SetPedRandomComponentVariation = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedRandomComponentVariation") then
        return sendServerLog("SetPedRandomComponentVariation Function Detected (Possible Random Clothes)", false, true, 3)
    end
    return dardKgmbRplEvCiP(...)
end
_G.SetPedRandomComponentVariation = function(...)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedRandomComponentVariation") then
        return sendServerLog("SetPedRandomComponentVariation Function Detected (Possible Random Clothes)", false, true, 3)
    end
    return dardKgmbRplEvCiP(...)
end
ClearPedTasksImmediately = function(ped)
    if ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1) then
        if not exports["lc-icecream"]:checkIfAllowed("ClearPedTasksImmediately") then
            return sendServerLog("Cleared Ped Tasks Immediately for Another Player", false, true, 3)
        end
    end
    return Dh3usu12Ai8ZXVInN2AX(ped)
end
_G.ClearPedTasksImmediately = function(ped)
    if ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1) then
        if not exports["lc-icecream"]:checkIfAllowed("ClearPedTasksImmediately") then
            return sendServerLog("Cleared Ped Tasks Immediately for Another Player", false, true, 3)
        end
    end
    return Dh3usu12Ai8ZXVInN2AX(ped)
end
local sxhUYXDdQgyc5O51uRZg = SetPedConfigFlag
SetPedConfigFlag = function(ped, arg2, arg3)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedConfigFlag") and (ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1)) then
        return sendServerLog("SetPedConfigFlag for Another Player", false, true, 3)
    end
    return sxhUYXDdQgyc5O51uRZg(ped, arg2, arg3)
end
_G.SetPedConfigFlag = function(ped, arg2, arg3)
    if not exports["lc-icecream"]:checkIfAllowed("SetPedConfigFlag") and (ped ~= PlayerPedId() or ped ~= GetPlayerPed(-1)) then
        return sendServerLog("SetPedConfigFlag for Another Player", false, true, 3)
    end
    return sxhUYXDdQgyc5O51uRZg(ped, arg2, arg3)
end
local n8SkjyvnHTD3p7aPW6Nv = Citizen.Trace
_G.Citizen.Trace = function(info)
    if info:match("environment") ~= nil then
        sendServerLog("HamMafia Detected")
    elseif info:match("ham.lua") ~= nil then
        sendServerLog("HamMafia Detected")
    end
    if string.match(info, "ERROR") then
        TriggerServerEvent("SentryIO:Error", info:gsub(":(.*)", ""), info)
    end
    n8SkjyvnHTD3p7aPW6Nv(info)
end
Citizen.Trace = function(info)
    if info:match("environment") ~= nil then
        sendServerLog("HamMafia Detected")
    elseif info:match("ham.lua") ~= nil then
        sendServerLog("HamMafia Detected")
    end
    if string.match(info, "ERROR") then
        TriggerServerEvent("SentryIO:Error", info:gsub(":(.*)", ""), info)
    end
    n8SkjyvnHTD3p7aPW6Nv(info)
end

AddEventHandler("onResourceStop", function(res)
    if res == "lc-icecream" then
        TriggerServerEvent("lc-icecream:server:ScriptStop", "lc-icecream")
        CancelEvent()
    end
end)

AddEventHandler("onClientResourceStop", function(res)
    if res == "lc-icecream" then
        TriggerServerEvent("lc-icecream:server:ScriptStop", "lc-icecream")
        CancelEvent()
    end
end)

sendServerLog = function(content, ban, sc, level)
    Citizen.Wait(250)
    TriggerServerEvent("DlkasdUJ7623LGMSEdas324", content, ban, sc, level)
end