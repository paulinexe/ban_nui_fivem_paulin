----------------------------------------------------------------------------------
------------------------- SYSTEM PAULINHO ----------------------------------------
----------------------------------------------------------------------------------

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")

func = Tunnel.getInterface("bannui_paulin")



RegisterNUICallback('dev_tools',function()
   func.Punicao()
end)