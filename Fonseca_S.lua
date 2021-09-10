function deslogar(acc)
    cancelEvent ()
    end
    addEventHandler("onPlayerLogout",getRootElement(),deslogar)
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --- F O M E
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    addEventHandler ("onPlayerLogin",root,function(_,Acc)
    local FomeAcc2 = getAccountData ( Acc, "fome" )
    if FomeAcc2 == false then
    setElementData (source, "fome", 100)
    setElementData (source, "Fome:Logado", true)
    else
    setElementData (source, "fome", FomeAcc2 )
    setElementData (source, "Fome:Logado", true)
    end
    end)
    ---
    function saveAccountDataFome ( account )
    if isGuestAccount ( account ) then return false end
    Player = getAccountPlayer (account)
    Fomes = getElementData (Player, "fome" )
    setAccountData (account,"fome",Fomes)
    end
    ---
    addEventHandler ( 'onPlayerQuit', root, function ( )
    local acc = getPlayerAccount ( source )
    saveAccountDataFome ( acc )
    end )
    ---
    addEventHandler( "onResourceStart", getResourceRootElement( getThisResource() ), function( )        
    for _, plr in pairs( getElementsByType( "player" ) ) do 
    local Acc = getPlayerAccount (plr)
    if not isGuestAccount (Acc) then
    local FomeAcc = getAccountData (Acc,"fome")
    if FomeAcc == false then
    setElementData (plr,"fome",100)
    setElementData (plr, "Fome:Logado", true)
    else
    setElementData (plr,"fome",FomeAcc)
    setElementData (plr, "Fome:Logado", true)
    end
    end    
    end
    end)
    ---
    addEventHandler ("onResourceStop",getResourceRootElement( getThisResource()),function()
    for index,players in ipairs(getElementsByType("player")) do 
    local acc = getPlayerAccount ( players )
    saveAccountDataFome ( acc )
    end
    end)
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- S E D E
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    addEventHandler ("onPlayerLogin",root,function(_,Acc)
    local SedeAcc2 = getAccountData ( Acc, "sede" )
    if SedeAcc2 == false then
    setElementData (source, "sede", 100)
    setElementData (source, "Sede:Logado", true)
    else
    setElementData (source, "sede", SedeAcc2 )
    setElementData (source, "Sede:Logado", true)
    end
    end)
    ---
    function saveAccountDataSede ( account )
    if isGuestAccount ( account ) then return false end
    Player = getAccountPlayer (account)
    Sedes = getElementData (Player, "sede" )
    setAccountData (account,"sede",Sedes)
    end
    ---
    addEventHandler ( 'onPlayerQuit', root, function ( )
    local acc = getPlayerAccount ( source )
    saveAccountDataSede ( acc )
    end )
    ---
    addEventHandler( "onResourceStart", getResourceRootElement( getThisResource() ), function( )        
    for _, plr in pairs( getElementsByType( "player" ) ) do 
    local Acc = getPlayerAccount (plr)
    if not isGuestAccount (Acc) then
    local SedeAcc = getAccountData (Acc,"sede")
    if SedeAcc == false then
    setElementData (plr,"sede",100)
    setElementData (plr, "Sede:Logado", true)
    else
    setElementData (plr,"sede",SedeAcc)
    setElementData (plr, "Sede:Logado", true)
    end
    end    
    end
    end)
    ---
    addEventHandler ("onResourceStop",getResourceRootElement( getThisResource()),function()
    for index,players in ipairs(getElementsByType("player")) do 
    local acc = getPlayerAccount ( players )
    saveAccountDataSede ( acc )
    end
    end)