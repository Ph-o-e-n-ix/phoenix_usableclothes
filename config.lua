Config = {}

Config.UseNewESX = true -- New ESX has a new Export. Enable if you need this

Config.SaveOutfits = false -- If the Outfit should be saved or not

Config.RemoveItem = false -- Remove Item after using it

Config.UseAnProgbar = false -- Set it to true if you use Progressbar "an_progbar". 
--You can change the Progressbar in the client.lua, if needed

Config.Animation = { -- Animation the Player does after using item
    dict = 'clothingshirt',
    anim = 'try_shirt_positive_d'
}

Config.Time = 3000 -- 3 Seconds (Time to get Clothes on)

Config.Items = { 
    {
        itemname = 'overall1',
        job = nil, -- You can add jobs like -> job = 'police'
        mtorso = 66, -- Set Number to nil if you dont want to change it
        mtorso2 = nil,
        mtshirt = 15,
        mtshirt2 = nil,
        marms = 27,
        marms2 = nil, 
        mpants = 39, 
        mpants2 = nil, 
        mshoes = 51,
        mshoes2 = nil, 
        mmask = 161, 
        mmask2 = nil, 
        mvest = nil, 
        mvest2 = nil,
        mhat = nil, 
        mhat2 = nil,
        mbag = 44,
        mbag2 = 0,

        ftorso = 59, 
        ftorso2 = 1,
        ftshirt = 14,
        ftshirt2 = nil,
        farms = 49,
        farms2 = nil, 
        fpants = 38, 
        fpants2 = 1, 
        fshoes = 51,
        fshoes2 = nil, 
        fmask = 161, 
        fmask2 = nil, 
        fvest = nil, 
        fvest2 = nil,
        fhat = nil, 
        fhat2 = nil,
        fbag = 44,
        fbag2 = 0,
    },
    --------------------------------------------------------------------
    {
        itemname = 'overall2', 
        job = nil,
        mtorso = 66, 
        mtorso2 = nil,
        mtshirt = 15,
        mtshirt2 = nil,
        marms = 27,
        marms2 = nil, 
        mpants = 39, 
        mpants2 = nil, 
        mshoes = 51,
        mshoes2 = nil, 
        mmask = 161, 
        mmask2 = nil, 
        mvest = nil, 
        mvest2 = nil,
        mhat = nil, 
        mhat2 = nil,
        mbag = 44,
        mbag2 = nil,

        ftorso = 66, 
        ftorso2 = nil,
        ftshirt = 15,
        ftshirt2 = nil,
        farms = 27,
        farms2 = nil, 
        fpants = 39, 
        fpants2 = nil, 
        fshoes = 51,
        fshoes2 = nil, 
        fmask = 161, 
        fmask2 = nil, 
        fvest = nil, 
        fvest2 = nil,
        fhat = nil, 
        fhat2 = nil,
        fbag = 44,
        fbag2 = nil,
    },
    --------------------------------------------------------------------
}