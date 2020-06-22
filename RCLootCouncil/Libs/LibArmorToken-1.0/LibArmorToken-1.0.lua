local lib, oldMinor = LibStub:NewLibrary("LibArmorToken-1.0", 1)
if not lib then return end

local items

-- API

function lib:ItemIsToken(itemid)
    if items[itemid] then
        return true
    end
end

do
    local t = {}
    function lib:IterateClassesForToken(itemid)
        if not items[itemid] then
            return ipairs({})
        end
        wipe(t)
        for cl in pairs(items[itemid]) do
            table.insert(t, cl)
        end
        return ipairs(t)
    end
end

function lib:IterateItemsForTokenAndClass(itemid, class)
    if not (items[itemid] and items[itemid][class]) then
        return ipairs({})
    end
    return ipairs(items[itemid][class])
end

function lib:FindTokenForItemByClass(itemid, class)
    for tokenid in pairs(items) do 
        if items[tokenid][class] then 
            for _, id in ipairs(items[tokenid][class]) do 
                if id == itemid then 
                    return tokenid 
                end
            end
        end
    end
    return nil
end
-- DATA
items = {
   
    [29753] = { -- Chestguard of the Fallen Defender
        DRUID = {28130, 29091, 29096, 28140, 31379, 29087},
        PRIEST = {29056, 29050, 31413, 27711},
        WARRIOR = {24544, 29019, 29012},
    },
    [29754] = { -- Chestguard of the Fallen Champion
        PALADIN = {29062, 27879, 29066, 29071, 27702, 31613},
        ROGUE = {29045, 25831},
        SHAMAN = {31396, 29029, 29033, 27469, 25997, 29038},
    },
    [29755] = { -- Chestguard of the Fallen Hero
        HUNTER = {29082, 28334},
        MAGE = {25856, 29077},
        WARLOCK = {24552, 28964, 30200},
    },
    [29756] = { -- Gloves of the Fallen Hero
        HUNTER = {29085, 28335},
        MAGE = {29080, 25857},
        WARLOCK = {28968, 30188, 24556},
    },
    [29757] = { -- Gloves of the Fallen Champion
        PALADIN = {27880, 29065, 29067, 29072, 27703, 31614},
        ROGUE = {29048, 25834},
        SHAMAN = {31397, 29032, 29034, 27470, 29039, 26000},
    },
    [29758] = { -- Gloves of the Fallen Defender
        DRUID = {29090, 29092, 28136, 29097, 31375, 28126},
        PRIEST = {31409, 29057, 27707, 29055},
        WARRIOR = {29017, 29020, 24549},
    },
    [29759] = { -- Helm of the Fallen Hero
        HUNTER = {29081, 28331},
        MAGE = {29076, 25855},
        WARLOCK = {24553, 28963, 30187},
    },
    [29760] = { -- Helm of the Fallen Champion
        PALADIN = {31616, 29061, 27881, 29068, 29073, 27704},
        ROGUE = {29044, 25830},
        SHAMAN = {29028, 31400, 29035, 25998, 27471, 29040},
    },
    [29761] = { -- Helm of the Fallen Defender
        DRUID = {29093, 28137, 29098, 31376, 29086, 28127},
        PRIEST = {29049, 31410, 27708, 29058},
        WARRIOR = {24545, 29011, 29021},
    },
    [29762] = { -- Pauldrons of the Fallen Hero
        HUNTER = {29084, 28333},
        MAGE = {25854, 29079},
        WARLOCK = {30186, 24554, 28967},
    },
    [29763] = { -- Pauldrons of the Fallen Champion
        PALADIN = {31619, 29064, 27883, 29070, 29075, 27706},
        ROGUE = {25832, 29047},
        SHAMAN = {29031, 29037, 31407, 25999, 27473, 29043},
    },
    [29764] = { -- Pauldrons of the Fallen Defender
        DRUID = {28129, 29089, 29095, 28139, 29100, 31378},
        PRIEST = {29060, 29054, 31412, 27710},
        WARRIOR = {29016, 24546, 29023},
    },
    [29765] = { -- Leggings of the Fallen Hero
        HUNTER = {29083, 28332},
        MAGE = {25858, 29078},
        WARLOCK = {30201, 24555, 28966},
    },
    [29766] = { -- Leggings of the Fallen Champion
        PALADIN = {31618, 29063, 27882, 29069, 29074, 27705},
        ROGUE = {25833, 29046},
        SHAMAN = {29030, 29036, 31406, 27472, 26001, 29042},
    },
    [29767] = { -- Leggings of the Fallen Defender
        DRUID = {28128, 29088, 29094, 28138, 29099, 31377},
        PRIEST = {31411, 29059, 27709, 29053},
        WARRIOR = {24547, 29022, 29015},
    },
    [30236] = { -- Chestguard of the Vanquished Champion
        PALADIN = {32039, 30123, 30129, 32020, 30134, 31992},
        ROGUE = {30144, 32002},
        SHAMAN = {32004, 32009, 30185, 30164, 30169, 32029},
    },
    [30237] = { -- Chestguard of the Vanquished Defender
        DRUID = {31972, 30216, 30222, 30231, 31991, 32060},
        PRIEST = {32019, 30150, 32038, 30159},
        WARRIOR = {30113, 30118, 30486},
    },
    [30238] = { -- Chestguard of the Vanquished Hero
        HUNTER = {31960, 30139},
        MAGE = {32050, 30196},
        WARLOCK = {31977, 31982, 30214},
    },
    [30239] = { -- Gloves of the Vanquished Champion
        PALADIN = {32040, 30124, 30130, 32021, 30135, 31993},
        ROGUE = {30145, 31998},
        SHAMAN = {32005, 32010, 30189, 30165, 30170, 32030},
    },
    [30240] = { -- Gloves of the Vanquished Defender
        DRUID = {30217, 30232, 30223, 31987, 32056, 31967},
        PRIEST = {30160, 30151, 32034, 32015},
        WARRIOR = {30119, 30114, 30487},
    },
    [30241] = { -- Gloves of the Vanquished Hero
        HUNTER = {31961, 30140},
        MAGE = {32049, 30205},
        WARLOCK = {31981, 30211, 31973},
    },
    [30242] = { -- Helm of the Vanquished Champion
        PALADIN = {32041, 30125, 30131, 32022, 30136, 31997},
        ROGUE = {30146, 31999},
        SHAMAN = {32006, 32011, 30190, 30166, 30171, 32031},
    },
    [30243] = { -- Helm of the Vanquished Defender
        DRUID = {31968, 30219, 30233, 31988, 30228, 32057},
        PRIEST = {32016, 30161, 32035, 30152},
        WARRIOR = {30488, 30115, 30120},
    },
    [30244] = { -- Helm of the Vanquished Hero
        HUNTER = {31962, 30141},
        MAGE = {32048, 30206},
        WARLOCK = {31980, 30212, 31974},
    },
    [30245] = { -- Leggings of the Vanquished Champion
        PALADIN = {32042, 30126, 30132, 32023, 30137, 31995},
        ROGUE = {32000, 30148},
        SHAMAN = {32032, 32007, 32012, 30192, 30167, 30172},
    },
    [30246] = { -- Leggings of the Vanquished Defender
        DRUID = {31969, 30220, 30234, 30229, 31989, 32058},
        PRIEST = {32017, 30153, 30162, 32036},
        WARRIOR = {30489, 30121, 30116},
    },
    [30247] = { -- Leggings of the Vanquished Hero
        HUNTER = {31963, 30142},
        MAGE = {32051, 30207},
        WARLOCK = {31983, 30213, 31975},
    },
    [30248] = { -- Pauldrons of the Vanquished Champion
        PALADIN = {32043, 30127, 30133, 32024, 30138, 31996},
        ROGUE = {32001, 30149},
        SHAMAN = {32033, 32008, 32013, 30194, 30168, 30173},
    },
    [30249] = { -- Pauldrons of the Vanquished Defender
        DRUID = {31971, 30221, 32059, 31990, 30230, 30235},
        PRIEST = {30154, 32018, 30163, 32037},
        WARRIOR = {30122, 30490, 30117},
    },
    [30250] = { -- Pauldrons of the Vanquished Hero
        HUNTER = {31964, 30143},
        MAGE = {30210, 32047},
        WARLOCK = {31976, 31979, 30215},
    },
    [31089] = { -- Chestguard of the Forgotten Conqueror
        PALADIN = {32039, 30990, 30991, 30992, 32020, 31992},
        PRIEST = {31065, 31066, 32019, 32038},
        WARLOCK = {31977, 31052, 31982},
    },
    [31090] = { -- Chestguard of the Forgotten Vanquisher
        DRUID = {31041, 31042, 31043, 31972, 31991, 32060},
        MAGE = {31057, 32050},
        ROGUE = {32002, 31028},
    },
    [31091] = { -- Chestguard of the Forgotten Protector
        HUNTER = {31960, 31004},
        SHAMAN = {32004, 31016, 31017, 31018, 32009, 32029},
        WARRIOR = {30976, 30486, 30975},
    },
    [31092] = { -- Gloves of the Forgotten Conqueror
        PALADIN = {30982, 30983, 32040, 30985, 32021, 31993},
        PRIEST = {32034, 31060, 31061, 32015},
        WARLOCK = {31981, 31050, 31973},
    },
    [31093] = { -- Gloves of the Forgotten Vanquisher
        DRUID = {32056, 31987, 31032, 31034, 31035, 31967},
        MAGE = {32049, 31055},
        ROGUE = {31026, 31998},
    },
    [31094] = { -- Gloves of the Forgotten Protector
        HUNTER = {31001, 31961},
        SHAMAN = {31008, 31011, 32005, 32010, 32030, 31007},
        WARRIOR = {30969, 30970, 30487},
    },
    [31095] = { -- Helm of the Forgotten Protector
        HUNTER = {31962, 31003},
        SHAMAN = {31012, 32006, 31014, 31015, 32011, 32031},
        WARRIOR = {30488, 30972, 30974},
    },
    [31096] = { -- Helm of the Forgotten Vanquisher
        DRUID = {31040, 31968, 31988, 32057, 31037, 31039},
        MAGE = {31056, 32048},
        ROGUE = {31027, 31999},
    },
    [31097] = { -- Helm of the Forgotten Conqueror
        PALADIN = {32041, 30987, 30988, 30989, 32022, 31997},
        PRIEST = {31064, 32016, 32035, 31063},
        WARLOCK = {31051, 31980, 31974},
    },
    [31098] = { -- Leggings of the Forgotten Conqueror
        PALADIN = {32042, 30993, 30994, 30995, 32023, 31995},
        PRIEST = {32017, 31067, 31068, 32036},
        WARLOCK = {31975, 31053, 31983},
    },
    [31099] = { -- Leggings of the Forgotten Vanquisher
        DRUID = {31969, 31044, 31045, 31046, 31989, 32058},
        MAGE = {31058, 32051},
        ROGUE = {32000, 31029},
    },
    [31100] = { -- Leggings of the Forgotten Protector
        HUNTER = {31963, 31005},
        SHAMAN = {32032, 32007, 31019, 32012, 31020, 31021},
        WARRIOR = {30977, 30978, 30489},
    },
    [31101] = { -- Pauldrons of the Forgotten Conqueror
        PALADIN = {32043, 30996, 30997, 30998, 32024, 31996},
        PRIEST = {32018, 32037, 31069, 31070},
        WARLOCK = {31976, 31979, 31054},
    },
    [31102] = { -- Pauldrons of the Forgotten Vanquisher
        DRUID = {31971, 31047, 31048, 31049, 31990, 32059},
        MAGE = {31059, 32047},
        ROGUE = {32001, 31030},
    },
    [31103] = { -- Pauldrons of the Forgotten Protector
        HUNTER = {31964, 31006},
        SHAMAN = {32033, 32008, 32013, 31022, 31023, 31024},
        WARRIOR = {30490, 30979, 30980},
    },
    [34848] = { -- Bracers of the Forgotten Conqueror
        MAGE = {33883, 33901},
        PALADIN = {34432, 34433, 33889, 33904, 33910, 34431},
        PRIEST = {34434, 34435, 33883, 33901},
        WARLOCK = {33883, 34436, 33901},
        WARRIOR = {33904, 33889, 33910},
    },
    [34851] = { -- Bracers of the Forgotten Protector
        DEATHKNIGHT = {33876},
        HUNTER = {33897, 33906, 34443, 33876, 33894},
        PALADIN = {33813},
        SHAMAN = {34437, 33894, 34438, 34439, 33897, 33906, 33876},
        WARRIOR = {34441, 34442, 33813},
    },
    [34852] = { -- Bracers of the Forgotten Vanquisher
        DRUID = {33893, 34444, 34445, 34446, 33881, 33917, 33887},
        MAGE = {33913, 34447},
        MONK = {33881, 33893, 33917, 33887},
        PRIEST = {33913},
        ROGUE = {34448, 33881, 33893, 33917, 33887},
        WARLOCK = {33913},
    },
    [34853] = { -- Belt of the Forgotten Conqueror
        MAGE = {33882, 33900},
        PALADIN = {33888, 33903, 33909, 34485, 34487, 34488},
        PRIEST = {34528, 33882, 33900, 34527},
        WARLOCK = {33882, 33900, 34541},
        WARRIOR = {33888, 33909, 33903},
    },
    [34854] = { -- Belt of the Forgotten Protector
        HUNTER = {33898, 33907, 33877, 34549, 33895},
        PALADIN = {33811},
        SHAMAN = {33895, 33898, 34542, 34543, 34545, 33907, 33877},
        WARRIOR = {33811, 34546, 34547},
    },
    [34855] = { -- Belt of the Forgotten Vanquisher
        DRUID = {33891, 33915, 33879, 34554, 34555, 34556, 33885},
        MAGE = {33912, 34557},
        MONK = {33915, 33891, 33885, 33879},
        PRIEST = {33912},
        ROGUE = {33915, 33891, 33885, 34558, 33879},
        WARLOCK = {33912},
    },
    [34856] = { -- Boots of the Forgotten Conqueror
        MAGE = {33884, 33902},
        PALADIN = {34560, 34561, 33890, 33905, 33911, 34559},
        PRIEST = {34562, 34563, 33884, 33902},
        WARLOCK = {34564, 33902, 33884},
        WARRIOR = {33905, 33890, 33911},
    },
    [34857] = { -- Boots of the Forgotten Protector
        HUNTER = {33896, 34570, 33899, 33908, 33878},
        PALADIN = {33812},
        SHAMAN = {34565, 34566, 34567, 33896, 33899, 33908, 33878},
        WARRIOR = {34568, 34569, 33812},
    },
    [34858] = { -- Boots of the Forgotten Vanquisher
        DRUID = {33892, 34571, 34572, 34573, 33880, 33916, 33886},
        MAGE = {33914, 34574},
        MONK = {33880, 33916, 33892, 33886},
        PRIEST = {33914},
        ROGUE = {33880, 33916, 33892, 33886, 34575},
        WARLOCK = {33914},
    },
    [40610] = { -- Chestguard of the Lost Conqueror
        PALADIN = {39633, 39629, 39638},
        PRIEST = {39515, 39523},
        WARLOCK = {39497},
    },
    [40611] = { -- Chestguard of the Lost Protector
        HUNTER = {39579},
        SHAMAN = {39592, 39588, 39597},
        WARRIOR = {39611, 39606},
    },
    [40612] = { -- Chestguard of the Lost Vanquisher
        DEATHKNIGHT = {39617, 39623},
        DRUID = {39538, 39547, 39554},
        MAGE = {39492},
        ROGUE = {39558},
    },
    [40613] = { -- Gloves of the Lost Conqueror
        PALADIN = {39632, 39634, 39639},
        PRIEST = {39530, 39519},
        WARLOCK = {39500},
    },
    [40614] = { -- Gloves of the Lost Protector
        HUNTER = {39582},
        SHAMAN = {39593, 39601, 39591},
        WARRIOR = {39609, 39622},
    },
    [40615] = { -- Gloves of the Lost Vanquisher
        DEATHKNIGHT = {39624, 39618},
        DRUID = {39544, 39557, 39543},
        MAGE = {39495},
        ROGUE = {39560},
    },
    [40616] = { -- Helm of the Lost Conqueror
        PALADIN = {39640, 39635, 39628},
        PRIEST = {39521, 39514},
        WARLOCK = {39496},
    },
    [40617] = { -- Helm of the Lost Protector
        HUNTER = {39578},
        SHAMAN = {39602, 39594, 39583},
        WARRIOR = {39610, 39605},
    },
    [40618] = { -- Helm of the Lost Vanquisher
        DEATHKNIGHT = {39625, 39619},
        DRUID = {39545, 39553, 39531},
        MAGE = {39491},
        ROGUE = {39561},
    },
    [40619] = { -- Leggings of the Lost Conqueror
        PALADIN = {39641, 39636, 39630},
        PRIEST = {39528, 39517},
        WARLOCK = {39498},
    },
    [40620] = { -- Leggings of the Lost Protector
        HUNTER = {39580},
        SHAMAN = {39603, 39595, 39589},
        WARRIOR = {39612, 39607},
    },
    [40621] = { -- Leggings of the Lost Vanquisher
        DEATHKNIGHT = {39626, 39620},
        DRUID = {39546, 39539, 39555},
        MAGE = {39493},
        ROGUE = {39564},
    },
    [40622] = { -- Spaulders of the Lost Conqueror
        PALADIN = {39642, 39637, 39631},
        PRIEST = {39529, 39518},
        WARLOCK = {39499},
    },
    [40623] = { -- Spaulders of the Lost Protector
        HUNTER = {39581},
        SHAMAN = {39604, 39596, 39590},
        WARRIOR = {39608, 39613},
    },
    [40624] = { -- Spaulders of the Lost Vanquisher
        DEATHKNIGHT = {39627, 39621},
        DRUID = {39556, 39548, 39542},
        MAGE = {39494},
        ROGUE = {39565},
    },
    [40625] = { -- Breastplate of the Lost Conqueror
        PALADIN = {40569, 40579, 40574},
        PRIEST = {40449, 40458},
        WARLOCK = {40423},
    },
    [40626] = { -- Breastplate of the Lost Protector
        HUNTER = {40503},
        SHAMAN = {40514, 40523, 40508},
        WARRIOR = {40544, 40525},
    },
    [40627] = { -- Breastplate of the Lost Vanquisher
        DEATHKNIGHT = {40550, 40559},
        DRUID = {40471, 40469, 40463},
        MAGE = {40418},
        ROGUE = {40495},
    },
    [40628] = { -- Gauntlets of the Lost Conqueror
        PALADIN = {40570, 40580, 40575},
        PRIEST = {40445, 40454},
        WARLOCK = {40420},
    },
    [40629] = { -- Gauntlets of the Lost Protector
        HUNTER = {40504},
        SHAMAN = {40520, 40515, 40509},
        WARRIOR = {40545, 40527},
    },
    [40630] = { -- Gauntlets of the Lost Vanquisher
        DEATHKNIGHT = {40552, 40563},
        DRUID = {40472, 40466, 40460},
        MAGE = {40415},
        ROGUE = {40496},
    },
    [40631] = { -- Crown of the Lost Conqueror
        PALADIN = {40576, 40571, 40581},
        PRIEST = {40456, 40447},
        WARLOCK = {40421},
    },
    [40632] = { -- Crown of the Lost Protector
        HUNTER = {40505},
        SHAMAN = {40521, 40516, 40510},
        WARRIOR = {40528, 40546},
    },
    [40633] = { -- Crown of the Lost Vanquisher
        DEATHKNIGHT = {40554, 40565},
        DRUID = {40473, 40467, 40461},
        MAGE = {40416},
        ROGUE = {40499},
    },
    [40634] = { -- Legplates of the Lost Conqueror
        PALADIN = {40577, 40572, 40583},
        PRIEST = {40448, 40457},
        WARLOCK = {40422},
    },
    [40635] = { -- Legplates of the Lost Protector
        HUNTER = {40506},
        SHAMAN = {40512, 40522, 40517},
        WARRIOR = {40529, 40547},
    },
    [40636] = { -- Legplates of the Lost Vanquisher
        DEATHKNIGHT = {40556, 40567},
        DRUID = {40468, 40493, 40462},
        MAGE = {40417},
        ROGUE = {40500},
    },
    [40637] = { -- Mantle of the Lost Conqueror
        PALADIN = {40584, 40578, 40573},
        PRIEST = {40450, 40459},
        WARLOCK = {40424},
    },
    [40638] = { -- Mantle of the Lost Protector
        HUNTER = {40507},
        SHAMAN = {40513, 40524, 40518},
        WARRIOR = {40530, 40548},
    },
    [40639] = { -- Mantle of the Lost Vanquisher
        DEATHKNIGHT = {40568, 40557},
        DRUID = {40494, 40465, 40470},
        MAGE = {40419},
        ROGUE = {40502},
    },
    [45632] = { -- Breastplate of the Wayward Conqueror
        PALADIN = {46154, 46173, 46178},
        PRIEST = {46168, 46193},
        WARLOCK = {46137},
    },
    [45633] = { -- Breastplate of the Wayward Protector
        HUNTER = {46141},
        SHAMAN = {46206, 46205, 46198},
        WARRIOR = {46146, 46162},
    },
    [45634] = { -- Breastplate of the Wayward Vanquisher
        DEATHKNIGHT = {46118, 46111},
        DRUID = {46186, 46194, 46159},
        MAGE = {46130},
        ROGUE = {46123},
    },
    [45635] = { -- Chestguard of the Wayward Conqueror
        PALADIN = {45381, 45374, 45375},
        PRIEST = {45395, 45389},
        WARLOCK = {45421},
    },
    [45636] = { -- Chestguard of the Wayward Protector
        HUNTER = {45364},
        SHAMAN = {45411, 45405, 45413},
        WARRIOR = {45424, 45429},
    },
    [45637] = { -- Chestguard of the Wayward Vanquisher
        DEATHKNIGHT = {45340, 45335},
        DRUID = {45354, 45348, 45358},
        MAGE = {45368},
        ROGUE = {45396},
    },
    [45638] = { -- Crown of the Wayward Conqueror
        PALADIN = {46180, 46156, 46175},
        PRIEST = {46172, 46197},
        WARLOCK = {46140},
    },
    [45639] = { -- Crown of the Wayward Protector
        HUNTER = {46143},
        SHAMAN = {46209, 46201, 46212},
        WARRIOR = {46166, 46151},
    },
    [45640] = { -- Crown of the Wayward Vanquisher
        DEATHKNIGHT = {46120, 46115},
        DRUID = {46184, 46161, 46191},
        MAGE = {46129},
        ROGUE = {46125},
    },
    [45641] = { -- Gauntlets of the Wayward Conqueror
        PALADIN = {46155, 46179, 46174},
        PRIEST = {46163, 46188},
        WARLOCK = {46135},
    },
    [45642] = { -- Gauntlets of the Wayward Protector
        HUNTER = {46142},
        SHAMAN = {46200, 46207, 46199},
        WARRIOR = {46148, 46164},
    },
    [45643] = { -- Gauntlets of the Wayward Vanquisher
        DEATHKNIGHT = {46113, 46119},
        DRUID = {46189, 46158, 46183},
        MAGE = {46132},
        ROGUE = {46124},
    },
    [45644] = { -- Gloves of the Wayward Conqueror
        PALADIN = {45376, 45370, 45383},
        PRIEST = {45392, 45387},
        WARLOCK = {45419},
    },
    [45645] = { -- Gloves of the Wayward Protector
        HUNTER = {45360},
        SHAMAN = {45401, 45414, 45406},
        WARRIOR = {45426, 45430},
    },
    [45646] = { -- Gloves of the Wayward Vanquisher
        DEATHKNIGHT = {45337, 45341},
        DRUID = {45345, 45355, 45351},
        MAGE = {46131},
        ROGUE = {45397},
    },
    [45647] = { -- Helm of the Wayward Conqueror
        PALADIN = {45377, 45372, 45382},
        PRIEST = {45386, 45391},
        WARLOCK = {45417},
    },
    [45648] = { -- Helm of the Wayward Protector
        HUNTER = {45361},
        SHAMAN = {45408, 45402, 45412},
        WARRIOR = {45425, 45431},
    },
    [45649] = { -- Helm of the Wayward Vanquisher
        DEATHKNIGHT = {45336, 45342},
        DRUID = {46313, 45346, 45356},
        MAGE = {45365},
        ROGUE = {45398},
    },
    [45650] = { -- Leggings of the Wayward Conqueror
        PALADIN = {45384, 45379, 45371},
        PRIEST = {45394, 45388},
        WARLOCK = {45420},
    },
    [45651] = { -- Leggings of the Wayward Protector
        HUNTER = {45362},
        SHAMAN = {45416, 45409, 45403},
        WARRIOR = {45432, 45427},
    },
    [45652] = { -- Leggings of the Wayward Vanquisher
        DEATHKNIGHT = {45338, 45343},
        DRUID = {45353, 45347, 45357},
        MAGE = {45367},
        ROGUE = {45399},
    },
    [45653] = { -- Legplates of the Wayward Conqueror
        PALADIN = {46176, 46153, 46181},
        PRIEST = {46170, 46195},
        WARLOCK = {46139},
    },
    [45654] = { -- Legplates of the Wayward Protector
        HUNTER = {46144},
        SHAMAN = {46208, 46210, 46202},
        WARRIOR = {46169, 46150},
    },
    [45655] = { -- Legplates of the Wayward Vanquisher
        DEATHKNIGHT = {46121, 46116},
        DRUID = {46192, 46185, 46160},
        MAGE = {46133},
        ROGUE = {46126},
    },
    [45656] = { -- Mantle of the Wayward Conqueror
        PALADIN = {46152, 46177, 46182},
        PRIEST = {46165, 46190},
        WARLOCK = {46136},
    },
    [45657] = { -- Mantle of the Wayward Protector
        HUNTER = {46145},
        SHAMAN = {46211, 46204, 46203},
        WARRIOR = {46149, 46167},
    },
    [45658] = { -- Mantle of the Wayward Vanquisher
        DEATHKNIGHT = {46122, 46117},
        DRUID = {46187, 46196, 46157},
        MAGE = {46134},
        ROGUE = {46127},
    },
    [45659] = { -- Spaulders of the Wayward Conqueror
        PALADIN = {45385, 45380, 45373},
        PRIEST = {45393, 45390},
        WARLOCK = {45422},
    },
    [45660] = { -- Spaulders of the Wayward Protector
        HUNTER = {45363},
        SHAMAN = {45410, 45404, 45415},
        WARRIOR = {45433, 45428},
    },
    [45661] = { -- Spaulders of the Wayward Vanquisher
        DEATHKNIGHT = {45344, 45339},
        DRUID = {45352, 45349, 45359},
        MAGE = {45369},
        ROGUE = {45400},
    },
    -- ignoring all these since we won't use them in RC
    --[[
    [47242] = { -- Trophy of the Crusade
        DEATHKNIGHT = {48481, 48482, 48483, 48484, 48485, 48553, 48554, 48555, 48556, 48557, 48496, 48497, 48498, 48499, 48500, 48538, 48539, 48540, 48541, 48542},
        DRUID = {48133, 48134, 48135, 48136, 48137, 48148, 48149, 48150, 48151, 48152, 48163, 48164, 48165, 48166, 48167, 48178, 48179, 48180, 48181, 48182, 48193, 48194, 48195, 48196, 48197, 48208, 48209, 48210, 48211, 48212},
        HUNTER = {48256, 48257, 48258, 48259, 48270, 48271, 48272, 48273, 48274, 48255},
        MAGE = {47753, 47754, 47755, 47756, 47757, 47768, 47769, 47770, 47771, 47772},
        PALADIN = {48640, 48641, 48657, 48658, 48659, 48660, 48661, 48575, 48576, 48577, 48578, 48579, 48590, 48591, 48592, 48593, 48594, 48607, 48608, 48609, 48610, 48611, 48622, 48623, 48624, 48625, 48626, 48637, 48638, 48639},
        PRIEST = {48096, 48064, 48065, 48066, 48077, 48078, 48079, 48080, 48081, 47983, 47984, 48062, 47985, 47986, 47987, 48063, 48092, 48093, 48094, 48095},
        ROGUE = {48224, 48225, 48226, 48227, 48238, 48239, 48240, 48241, 48242, 48223},
        SHAMAN = {48285, 48286, 48287, 48288, 48289, 48300, 48301, 48302, 48303, 48304, 48316, 48317, 48318, 48319, 48320, 48331, 48332, 48333, 48334, 48335, 48346, 48347, 48348, 48349, 48350, 48361, 48362, 48363, 48364, 48365},
        WARLOCK = {47778, 47779, 47780, 47781, 47782, 47803, 47804, 47805, 47806, 47807},
        WARRIOR = {48450, 48452, 48454, 48391, 48392, 48393, 48394, 48395, 48461, 48462, 48430, 48463, 48464, 48465, 48376, 48377, 48378, 48379, 48380, 48446},
    },
    [47557] = { -- Regalia of the Grand Conqueror
        PALADIN = {48642, 48643, 48644, 48645, 48646, 48647, 48648, 48649, 48650, 48651, 48580, 48581, 48582, 48583, 48584, 48585, 48586, 48587, 48588, 48589, 48612, 48613, 48614, 48615, 48616, 48617, 48618, 48619, 48620, 48621},
        PRIEST = {48058, 48033, 48035, 48037, 48091, 48029, 48082, 48083, 48084, 48085, 48086, 48087, 48088, 48089, 48090, 48059, 48060, 48061, 48057, 48031},
        WARLOCK = {47788, 47789, 47790, 47791, 47792, 47793, 47794, 47795, 47796, 47797},
    },
    [47558] = { -- Regalia of the Grand Protector
        HUNTER = {48260, 48261, 48262, 48263, 48264, 48265, 48266, 48267, 48268, 48269},
        SHAMAN = {48290, 48291, 48292, 48293, 48294, 48305, 48306, 48307, 48308, 48309, 48321, 48322, 48323, 48324, 48325, 48326, 48327, 48328, 48329, 48330, 48351, 48352, 48353, 48354, 48355, 48356, 48357, 48358, 48359, 48360},
        WARRIOR = {48384, 48385, 48451, 48447, 48453, 48455, 48396, 48397, 48398, 48399, 48400, 48433, 48466, 48467, 48468, 48469, 48470, 48381, 48382, 48383},
    },
    [47559] = { -- Regalia of the Grand Vanquisher
        DEATHKNIGHT = {48544, 48545, 48546, 48547, 48548, 48549, 48550, 48551, 48552, 48486, 48487, 48488, 48489, 48493, 48494, 48495, 48491, 48490, 48492, 48543},
        DRUID = {48138, 48139, 48140, 48141, 48142, 48143, 48144, 48145, 48146, 48147, 48168, 48169, 48170, 48171, 48172, 48173, 48174, 48175, 48176, 48177, 48198, 48199, 48200, 48201, 48202, 48203, 48204, 48205, 48206, 48207},
        MAGE = {47758, 47759, 47760, 47761, 47762, 47763, 47764, 47765, 47766, 47767},
        ROGUE = {48228, 48229, 48230, 48231, 48232, 48233, 48234, 48235, 48236, 48237},
    },
    [52025] = { -- Vanquisher's Mark of Sanctification
        DEATHKNIGHT = {51125, 51126, 51127, 51128, 51129, 51130, 51131, 51132, 51133, 51134},
        DRUID = {51136, 51137, 51138, 51139, 51140, 51141, 51142, 51143, 51144, 51145, 51146, 51147, 51148, 51149, 51135},
        MAGE = {51155, 51156, 51157, 51158, 51159},
        ROGUE = {51185, 51186, 51187, 51188, 51189},
    },
    [52026] = { -- Protector's Mark of Sanctification
        HUNTER = {51152, 51153, 51154, 51150, 51151},
        SHAMAN = {51200, 51201, 51202, 51203, 51204, 51190, 51191, 51192, 51193, 51194, 51195, 51196, 51197, 51198, 51199},
        WARRIOR = {51210, 51211, 51212, 51213, 51214, 51215, 51216, 51217, 51218, 51219},
    },
    [52027] = { -- Conqueror's Mark of Sanctification
        PALADIN = {51168, 51169, 51170, 51171, 51172, 51173, 51174, 51160, 51161, 51162, 51163, 51164, 51165, 51166, 51167},
        PRIEST = {51175, 51176, 51177, 51178, 51179, 51180, 51181, 51182, 51183, 51184},
        WARLOCK = {51208, 51209, 51205, 51206, 51207},
    },
    [52028] = { -- Vanquisher's Mark of Sanctification
        DEATHKNIGHT = {51305, 51306, 51307, 51308, 51309, 51310, 51311, 51312, 51313, 51314},
        DRUID = {51296, 51297, 51298, 51299, 51300, 51301, 51302, 51303, 51304, 51290, 51291, 51292, 51293, 51294, 51295},
        MAGE = {51280, 51281, 51282, 51283, 51284},
        ROGUE = {51250, 51251, 51252, 51253, 51254},
    },
    [52029] = { -- Protector's Mark of Sanctification
        HUNTER = {51288, 51289, 51285, 51286, 51287},
        SHAMAN = {51235, 51236, 51237, 51238, 51239, 51240, 51241, 51242, 51243, 51244, 51245, 51246, 51247, 51248, 51249},
        WARRIOR = {51220, 51221, 51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229},
    },
    [52030] = { -- Conqueror's Mark of Sanctification
        PALADIN = {51265, 51266, 51267, 51268, 51269, 51270, 51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 51279},
        PRIEST = {51264, 51255, 51256, 51257, 51258, 51259, 51260, 51261, 51262, 51263},
        WARLOCK = {51232, 51233, 51234, 51230, 51231},
    },
    ]]--
}
-- END DATA
