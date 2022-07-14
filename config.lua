--- Here is the page where you can find blips and colors for the blips: https://docs.fivem.net/docs/game-references/blips/

local blip = {
    --example {title="", colour=, id=, x=, y=, z=},
    
    {title="BLIPNAME", colour=1, id=1, size= 1.0, display= 4, x = 222.98, y = -792.31, z = 30.72}, --meetingpoint garage
  
  
}
  
Citizen.CreateThread(function()

    for _, amg in pairs(blip) do
        amg.blip = AddBlipForCoord(amg.x, amg.y, amg.z)
        SetBlipSprite(amg.blip, amg.id)
        SetBlipDisplay(amg.blip, amg.display)
        SetBlipScale(amg.blip, amg.size)
        SetBlipColour(amg.blip, amg.colour)
        SetBlipAsShortRange(amg.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(amg.title)
        EndTextCommandSetBlipName(amg.blip)
    end
end)
