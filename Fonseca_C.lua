local screenW,screenH = guiGetScreenSize()
local resW, resH = 1920,1080
local x, y = (screenW/resW), (screenH/resH)
local components = { "area_name", "radio", "vehicle_name" }
-----------------------------------------------------------====================================----------------------------------------------------------------------------------------
FomeTempo = 11000000
SedeTempo = 8700000
-----------------------------------------------------------====================================----------------------------------------------------------------------------------------
function Fonseca()
    if getElementData ( localPlayer, "Fome:Logado" ) == true then
        local Jogador_Falando = getElementData(localPlayer, "Falando") or false
        local Vida = math.floor(getElementHealth(localPlayer))
        local Colete = math.floor(getPedArmor(localPlayer))
        Sede = getElementData(localPlayer, "sede")
        Fome = getElementData(localPlayer, "fome")
        dxDrawImage(x*1859, y*1016, x*43, y*42, "files/fundo.png", 0, 0, 0, tocolor(255, 255, 255, 180), false)
        dxDrawImage(x*1806, y*1016, x*43, y*42, "files/fundo.png", 0, 0, 0, tocolor(255, 255, 255, 180), false)
        dxDrawImage(x*1753, y*1016, x*43, y*42, "files/fundo.png", 0, 0, 0, tocolor(255, 255, 255, 180), false)
        dxDrawImage(x*1700, y*1016, x*43, y*42, "files/fundo.png", 0, 0, 0, tocolor(255, 255, 255, 180), false)
        dxDrawImage(x*1647, y*1016, x*43, y*42, "files/fundo.png", 0, 0, 0, tocolor(255, 255, 255, 180), false)
        if Jogador_Falando == true then                                                                                                      -- Ativando # = True
            dxDrawImage(x*1859, y*1016, x*43, y*42, "files/fundo2.png", 0, 0, 0, tocolor(255, 255, 255, 200), false)
        end
        dxDrawImage(x*1700, y*1058, x*43, y*42/-100*Vida, "files/fundo3.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1647, y*1058, x*43, y*42/-100*Colete, "files/fundo5.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1806, y*1058, x*43, y*42/-100*Sede, "files/fundo4.png", 0, 0, 0, tocolor(255, 255, 255, 200), false)
        dxDrawImage(x*1753, y*1058, x*43, y*42/-100*Fome, "files/fundo7.png", 0, 0, 0, tocolor(255, 255, 255, 200), false)
        dxDrawImage(x*1819, y*1029, x*18, y*18, "files/gota.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1660, y*1029, x*17, y*17, "files/shield.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1764, y*1027, x*22, y*22, "files/fome.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1714, y*1029, x*16, y*16, "files/hp.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(x*1871, y*1029, x*18, y*18, "files/mic.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
end

addEventHandler ( "onClientPlayerVoiceStart", root, function() 
    if (source and isElement(source) and getElementType(source) == "player") and localPlayer == source then
        setElementData(source, "Falando", true);
    end 
end);
    
addEventHandler ( "onClientPlayerVoiceStop", root,function()
    if (source and isElement(source) and getElementType(source) == "player") and localPlayer == source then
        setElementData(source, "Falando", false);
    end
end);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function getPedMaxHealth(ped)
    assert(isElement(ped) and (getElementType(ped) == "ped" or getElementType(ped) == "player"), "Bad argument @ 'getPedMaxHealth' [Expected ped/player at argument 1, got " .. tostring(ped) .. "]")
    local stat = getPedStat(ped, 24)
    local maxhealth = 100 + (stat - 569) / 4.31
    return math.max(1, maxhealth)
    end
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function agscFomeRepeat()
    if getElementData ( localPlayer, "Fome:Logado" ) == true then
    ---
    Fome = getElementData ( localPlayer, "fome" ) -1
    SetarFome = setElementData ( localPlayer, "fome", Fome )
    ---
    if Fome <= 0 then
    setElementData ( localPlayer, "fome", 25 )
    setElementHealth ( localPlayer, 0 )
    outputChatBox ( "Você morreu de fome!", 255, 255, 255, true )
    end
    if Fome == 15 then
    outputChatBox ( "Você esta com fome!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    if Fome == 10 then
    outputChatBox ( "Você esta com fome!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    if Fome == 5 then
    outputChatBox ( "Você esta com muita fome!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    end
    end
    setTimer(agscFomeRepeat,FomeTempo,0)
    ---
    function agscVerificarFomeRepeat ()
    if getElementData ( localPlayer, "Fome:Logado" ) == true then
    Fome = getElementData ( localPlayer, "fome" )
    if Fome > 100 then
    setElementData ( localPlayer, "fome", 100 )
    end
    end
    end
    setTimer(agscVerificarFomeRepeat,50,0)
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function agscSedeRepeat()
    if getElementData ( localPlayer, "Sede:Logado" ) == true then
    ---
    Sede = getElementData ( localPlayer, "sede" ) -1
    SetarSede = setElementData ( localPlayer, "sede", Sede )
    ---
    if Sede <= 0 then
    setElementData ( localPlayer, "sprp:Sede", 10 )
    setElementHealth ( localPlayer, 0 )
    outputChatBox ( "Você morreu de sede!", 255, 255, 255, true )
    end
    if Sede == 15 then
    outputChatBox ( "Você esta com sede!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    if Sede == 10 then
    outputChatBox ( "Você esta com sede!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    if Sede == 5 then
    outputChatBox ( "Você esta com muita sede!", 255, 255, 255, true )
    playSoundFrontEnd ( 45 )
    end
    end
    end
    setTimer(agscSedeRepeat,SedeTempo,0)
    ---
    function agscVerificarSedeRepeat ()
    if getElementData ( localPlayer, "Sede:Logado" ) == true then
    ---
    Sede = getElementData ( localPlayer, "sede" )
    if Sede > 100 then
    setElementData ( localPlayer, "sede", 100 )
    ---
    end
    end
    end
    setTimer(agscVerificarSedeRepeat,50,0)

function setHud()
    addEventHandler("onClientRender", getRootElement(), Fonseca)
    setPlayerHudComponentVisible("armour", false)
    setPlayerHudComponentVisible("wanted", false)
    setPlayerHudComponentVisible("weapon", false)
    setPlayerHudComponentVisible("money", false)
    setPlayerHudComponentVisible("health", false)
    setPlayerHudComponentVisible("clock", false)
    setPlayerHudComponentVisible("breath", false)
    setPlayerHudComponentVisible("ammo", false)

    for _, component in ipairs( components ) do
        setPlayerHudComponentVisible( component, false )
    end
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), setHud)

function removeHud()
    setPlayerHudComponentVisible("armour", true)
    setPlayerHudComponentVisible("wanted", true)
    setPlayerHudComponentVisible("weapon", true)
    setPlayerHudComponentVisible("money", true)
    setPlayerHudComponentVisible("health", true)
    setPlayerHudComponentVisible("clock", true)
    setPlayerHudComponentVisible("breath", true)
    setPlayerHudComponentVisible("ammo", true)
end
addEventHandler("onClientResourceStop", getResourceRootElement(getThisResource()), removeHud)