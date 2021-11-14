ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local open = false 
local mainMenu = RageUI.CreateMenu("Magasin de Glace", "Interactions Disponibles")

function OpenMenuGlace()
     if open then 
         open = false
         RageUI.Visible(mainMenu, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu, true)
         CreateThread(function()
         while open do 


            RageUI.IsVisible(mainMenu,function() 

                RageUI.Separator("↓ ~b~Liste des Glaces~w~ ↓")


				RageUI.Button("Glace à la ~y~vanille", nil, {RightLabel = "~g~3$"}, true , {
					onSelected = function()
						TriggerServerEvent('Glace:AchatVanille')	
					end
				})

                RageUI.Button("Glace au ~m~Chocolat", nil, {RightLabel = "~g~3$"}, true , {
					onSelected = function()
						TriggerServerEvent('Glace:AchatChocolat')
					end
				})

                RageUI.Button("Glace au ~g~Citron Vert", nil, {RightLabel = "~g~3$"}, true , {
					onSelected = function()
						TriggerServerEvent('Glace:CitronVert')
					end
				})

                RageUI.Button("Glace au ~b~Schtroumpf", nil, {RightLabel = "~g~3$"}, true , {
					onSelected = function()
						TriggerServerEvent('Glace:AchatSchtroumpf')
					end
				})

                RageUI.Button("Fermer", nil, {Color = {BackgroundColor = {255, 0, 0, 50}}, RightLabel = "→→"}, true , {
                    onSelected = function()
                        RageUI.CloseAll()
                    end
                })


            end)
          Wait(0)
         end
      end)
   end
end

local position = {
    {x = -468.02, y = -29.5, z = 45.76 },

}



Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData  then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
       if dist <= 1.0 then
               wait = 1
                ESX.ShowHelpNotification("Appuyer sur~b~ ~INPUT_PICKUP~ pour parler au Commerçant") 
                if IsControlJustPressed(1,51) then
                OpenMenuGlace()
            end
        end
      end
    Citizen.Wait(wait)
    end
  end
end)




Citizen.CreateThread(function()
    if Config.blip then
        for k, v in pairs(Config.pos) do
            local blip = AddBlipForCoord(v.x, v.y, v.z)

            SetBlipSprite(blip, Config.Id)
            SetBlipScale (blip, Config.Taille)
            SetBlipColour(blip, Config.Couleur)
            SetBlipAsShortRange(blip, Config.Range)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName('Magasin de Glace')
            EndTextCommandSetBlipName(blip)
        end
    end
end)



Citizen.CreateThread(function()
    local hash = GetHashKey("a_m_y_downtown_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "a_m_y_downtown_01", -465.77, -29.75, 44.76, 87.12, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)