
if Config.UseNewESX then
    ESX = exports["es_extended"]:getSharedObject()
else
    ESX = nil

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end)
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('onClientResourceStart', function(ressourceName)
    if(GetCurrentResourceName() ~= ressourceName) then 
        return 
    end 
    print("" ..ressourceName.." started sucessfully")
end)

RegisterNetEvent("phoenix:sendclothes")
AddEventHandler("phoenix:sendclothes", function(itemb)
    local playerPed = PlayerPedId()
    for k, v in pairs(Config.Items) do 
        if v.itemname == itemb then
            if ESX.PlayerData.job and ESX.PlayerData.job.name == v.job  or v.job == nil then 
            	Config.ProgressBar()
                RequestAnimDict(Config.Animation.dict)
                while not HasAnimDictLoaded(Config.Animation.dict) do 
                    Citizen.Wait(25)
                end 
                TaskPlayAnim(playerPed, Config.Animation.dict, Config.Animation.anim, 1.0, -1.0, -1, 1, 1, true, true, true)
                Citizen.Wait(Config.Time)
                ClearPedTasks(playerPed)
                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    if skin.sex == 0 then
                        -- Mann 
                        if v.mtorso ~= nil then
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "torso_1", v.mtorso)
                                TriggerEvent('skinchanger:change', "torso_2", v.mtorso2)
                            else
                                SetPedComponentVariation(playerPed, 11, v.mtorso , v.mtorso2 , 2) 
                            end
                        end
                        if v.mtshirt ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "tshirt_1", v.mtshirt)
                                TriggerEvent('skinchanger:change', "tshirt_2", v.mtshirt2)
                            else
                                SetPedComponentVariation(playerPed, 8, v.mtshirt , v.mtshirt2 , 2)
                            end
                        end
                        if v.marms ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "arms", v.marms)
                                TriggerEvent('skinchanger:change', "arms_2", v.marms2)
                            else
                                SetPedComponentVariation(playerPed, 3, v.marms , v.marms2 , 2)
                            end
                        end
                        if v.mpants ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "pants_1", v.mpants)
                                TriggerEvent('skinchanger:change', "pants_2", v.mpants2)
                            else 
                                SetPedComponentVariation(playerPed, 4, v.mpants , v.mpants2 , 2)
                            end
                        end
                        if v.mshoes ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "shoes_1", v.mshoes)
                                TriggerEvent('skinchanger:change', "shoes_2", v.mshoes2)
                            else 
                                SetPedComponentVariation(playerPed, 6, v.mshoes , v.mshoes2 , 2)
                            end
                        end
                        if v.mmask ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "mask_1", v.mmask)
                                TriggerEvent('skinchanger:change', "mask_2", v.mmask2)
                            else 
                                SetPedComponentVariation(playerPed, 1, v.mmask , v.mmask2 , 2)
                            end
                        end
                        if v.mvest ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "bproof_1", v.mvest)
                                TriggerEvent('skinchanger:change', "bproof_2", v.mvest2)
                            else 
                                SetPedComponentVariation(playerPed, 9, v.mvest , v.mvest2 , 2)
                            end
                        end
                        if v.mhat ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "helmet_1", v.mhat)
                                TriggerEvent('skinchanger:change', "helmet_2", v.mhat2)
                            else 
                                SetPedPropIndex(playerPed, 0, v.mhat, v.mhat2, true)
                            end
                        end
                        if v.mbag ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "bags_1", v.mbag)
                                TriggerEvent('skinchanger:change', "bags_2", v.mbag2)
                            else 
                                SetPedComponentVariation(playerPed, 5, v.mbag , v.mbag2 , 2)
                            end
                        end
                    else -- Frau Start
                        if v.ftorso ~= nil then
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "torso_1", v.ftorso)
                                TriggerEvent('skinchanger:change', "torso_2", v.ftorso2)
                            else
                                SetPedComponentVariation(playerPed, 11, v.ftorso , v.ftorso2 , 2) 
                            end
                        end
                        if v.ftshirt ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "tshirt_1", v.ftshirt)
                                TriggerEvent('skinchanger:change', "tshirt_2", v.ftshirt2)
                            else
                                SetPedComponentVariation(playerPed, 8, v.ftshirt , v.ftshirt2 , 2)
                            end
                        end
                        if v.farms ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "arms", v.farms)
                                TriggerEvent('skinchanger:change', "arms_2", v.farms2)
                            else
                                SetPedComponentVariation(playerPed, 3, v.farms , v.farms2 , 2)
                            end
                        end
                        if v.fpants ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "pants_1", v.fpants)
                                TriggerEvent('skinchanger:change', "pants_2", v.fpants2)
                            else 
                                SetPedComponentVariation(playerPed, 4, v.fpants , v.fpants2 , 2)
                            end
                        end
                        if v.fshoes ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "shoes_1", v.fshoes)
                                TriggerEvent('skinchanger:change', "shoes_2", v.fshoes2)
                            else 
                                SetPedComponentVariation(playerPed, 6, v.fshoes , v.fshoes2 , 2)
                            end
                        end
                        if v.fmask ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "mask_1", v.fmask)
                                TriggerEvent('skinchanger:change', "mask_2", v.fmask2)
                            else 
                                SetPedComponentVariation(playerPed, 1, v.fmask , v.fmask2 , 2)
                            end
                        end
                        if v.fvest ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "bproof_1", v.fvest)
                                TriggerEvent('skinchanger:change', "bproof_2", v.fvest2)

                            else 
                                SetPedComponentVariation(playerPed, 9, v.fvest , v.fvest2 , 2)
                            end
                        end
                        if v.fhat ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "helmet_1", v.fhat)
                                TriggerEvent('skinchanger:change', "helmet_2", v.fhat2)
                            else 
                                SetPedPropIndex(playerPed, 0, v.fhat, v.fhat2, true)
                            end
                        end
                        if v.fbag ~= nil then 
                            if Config.SaveOutfits then
                                TriggerEvent('skinchanger:change', "bags_1", v.fbag)
                                TriggerEvent('skinchanger:change', "bags_2", v.fbag2)
                            else 
                                SetPedComponentVariation(playerPed, 5, v.fbag , v.fbag2 , 2)
                            end
                        end
                    end
                end)
            else 
                print("You dont have the Job for it")
            end
            if Config.SaveOutfits then
                Citizen.Wait(1000)
                TriggerEvent('skinchanger:getSkin', function(skin)
                    TriggerServerEvent('esx_skin:save', skin)
                end)
            end
        end  
    end
end)
