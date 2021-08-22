----------------------------------------------------------------------------------
------------------------- SYSTEM PAULINHO ----------------------------------------
----------------------------------------------------------------------------------

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")

func = {}
Tunnel.bindInterface("bannui_paulin", func)

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

local webhook = ""
function func.Punicao()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRP.kick(source,'HAHAHA VOCE E MUITO ENGRAÇADO PORQUE NÃO TENTA EM OUTRO LADO? AQUI NAO VAI DAR!')
        SendWebhookMessage(webhook, "ANTI DEVTOOLS     [ID]: "..user_id.."  [KICKADO]		[MOTIVO: ACESSANDO O DEVTOOLS]	")
    end
end