-- Author      : Potdisc
-- Create Date : 3/11/2013 10:25:13 PM
-- tokenData.lua
-- Contains equip location and useable classes from tier tokens

-- Equip locations
RCTokenTable = {
	--[xxxxxx] = "ExampleSlot",

	-- TIER 7 Naxx, OS, EoE
	[40616] = "HeadSlot", -- priest, pala, lock 10
	[40631] = "HeadSlot", -- priest, pala, lock 25
	[40617] = "HeadSlot", -- warrior, hunter, shammy 10
	[40632] = "HeadSlot", -- warrior, hunter, shammy 25
	[40618] = "HeadSlot", -- rogue, DK, mage, druid 10
	[40633] = "HeadSlot", -- rogue, DK, mage, druid 10

	[40610] = "ChestSlot", -- priest, pala, lock 10
	[40625] = "ChestSlot", -- priest, pala, lock 25
	[40611] = "ChestSlot", -- warrior, hunter, shammy 10
	[40626] = "ChestSlot", -- warrior, hunter, shammy 25
	[40612] = "ChestSlot", -- rogue, DK, mage, druid 10
	[40627] = "ChestSlot", -- rogue, DK, mage, druid 25

	[40622] = "ShoulderSlot", -- priest, pala, lock 10
	[40637] = "ShoulderSlot", -- priest, pala, lock 25
	[40623] = "ShoulderSlot", -- warrior, hunter, shammy 10
	[40638] = "ShoulderSlot", -- warrior, hunter, shammy 10
	[40624] = "ShoulderSlot", -- rogue, DK, mage, druid 10
	[40639] = "ShoulderSlot", -- rogue, DK, mage, druid 25

	[40619] = "LegsSlot", -- priest, pala, lock 10
	[40619] = "LegsSlot", -- priest, pala, lock 25
	[40620] = "LegsSlot", -- warrior, hunter, shammy 10
	[40635] = "LegsSlot", -- warrior, hunter, shammy 25
	[40621] = "LegsSlot", -- rogue, DK, mage, druid 10
	[40636] = "LegsSlot", -- rogue, DK, mage, druid 25

	[40613] = "HandsSlot", -- priest, pala, lock 10
	[40628] = "HandsSlot", -- priest, pala, lock 25
	[40614] = "HandsSlot", -- warrior, hunter, shammy 10
	[40629] = "HandsSlot", -- warrior, hunter, shammy 25
	[40615] = "HandsSlot", -- rogue, DK, mage, druid 10
	[40630] = "HandsSlot", -- rogue, DK, mage, druid 10


	 -- TIER 8 - Ulduar -------------------------------
		-- Normal
	[45635] = "ChestSlot",
	[45636] = "ChestSlot",
	[45637] = "ChestSlot",

	[45647] = "HeadSlot",
	[45648] = "HeadSlot",
	[45649] = "HeadSlot",

	[45644] = "HandsSlot",
	[45645] = "HandsSlot",
	[45646] = "HandsSlot",

	[45650] = "LegsSlot",
	[45651] = "LegsSlot",
	[45652] = "LegsSlot",

	[45659] = "ShoulderSlot",
	[45660] = "ShoulderSlot",
	[45661] = "ShoulderSlot",

		-- Heroic
	[45632] = "ChestSlot",
	[45633] = "ChestSlot",
	[45634] = "ChestSlot",

	[45638] = "HeadSlot",
	[45639] = "HeadSlot",
	[45640] = "HeadSlot",

	[45641] = "HandsSlot",
	[45642] = "HandsSlot",
	[45643] = "HandsSlot",

	[45653] = "LegsSlot",
	[45654] = "LegsSlot",
	[45655] = "LegsSlot",

	[45656] = "ShoulderSlot",
	[45657] = "ShoulderSlot",
	[45658] = "ShoulderSlot",
	
	
	-- TIER 9 - ToGC
	[47557] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --Paladin, Priest, Warlock
	[47558] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --Warrior, Hunter, Shaman
	[47559] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, -- Rogue, Death Knight, Mage, 
	
	
	-- TIER 10 - ICC
	[52025] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Rogue, Death Knight, Mage, Druid
	[52028] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Rogue, Death Knight, Mage, Druid HC

	
	
	[52026] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Warrior, Hunter, Shaman
	[52029] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Warrior, Hunter, Shaman HC
	
	[52027] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Paladin, Priest, Warlock
	[52030] = {"ChestSlot", "ShoulderSlot", "HandsSlot", "LegsSlot", "HeadSlot" }, --  Paladin, Priest, Warlock HC
	
}

RCTokenLevel = {
	-- TIER 7
	[40616] = 200,
	[40631] = 213,
	[40617] = 200,
	[40632] = 213,
	[40618] = 200,
	[40633] = 213,
	[40610] = 200,
	[40625] = 213,
	[40611] = 200,
	[40626] = 213,
	[40612] = 200,
	[40627] = 213,
	[40622] = 200,
	[40637] = 213,
	[40623] = 200,
	[40638] = 213,
	[40624] = 200,
	[40639] = 213,
	[40619] = 200,
	[40619] = 213,
	[40620] = 200,
	[40635] = 213,
	[40621] = 200,
	[40636] = 213,
	[40613] = 200,
	[40628] = 213,
	[40614] = 200,
	[40629] = 213,
	[40615] = 200,
	[40630] = 213,
	-- TIER 8
	-- Normal
	[45635] = 219,
	[45636] = 219,
	[45637] = 219,
	[45647] = 219,
	[45648] = 219,
	[45649] = 219,
	[45644] = 219,
	[45645] = 219,
	[45646] = 219,
	[45650] = 219,
	[45651] = 219,
	[45652] = 219,
	[45659] = 219,
	[45660] = 219,
	[45661] = 219,
	-- Heroic
	[45632] = 226,
	[45633] = 226,
	[45634] = 226,
	[45638] = 226,
	[45639] = 226,
	[45640] = 226,
	[45641] = 226,
	[45642] = 226,
	[45643] = 226,
	[45653] = 226,
	[45654] = 226,
	[45655] = 226,
	[45656] = 226,
	[45657] = 226,
	[45658] = 226,
		
	-- TIER 9
	[47557] = 258,
	[47558] = 258,
	[47559] = 258,
		
	-- TIER 10
	[52025] = 264,
	[52028] = 277,
		
		
	[52026] = 264,
	[52029] = 277,
		
	[52027] = 264,
	[52030] = 277,
}

local VANQUISHER = {"DEATHKNIGHT", "DRUID", "MAGE", "ROGUE"}
local CONQUEROR = {"PALADIN", "PRIEST", "WARLOCK"}
local PROTECTOR = {"HUNTER", "SHAMAN", "WARRIOR"}
-- Classes that can use the token
RCTokenClasses = {
	-- TIER 7
	[40616] = CONQUEROR,
	[40631] = CONQUEROR,
	[40617] = PROTECTOR,
	[40632] = PROTECTOR,
	[40618] = VANQUISHER,
	[40633] = VANQUISHER,
	[40610] = CONQUEROR,
	[40625] = CONQUEROR,
	[40611] = PROTECTOR,
	[40626] = PROTECTOR,
	[40612] = VANQUISHER,
	[40627] = VANQUISHER,
	[40622] = CONQUEROR,
	[40637] = CONQUEROR,
	[40623] = PROTECTOR,
	[40638] = PROTECTOR,
	[40624] = VANQUISHER,
	[40639] = VANQUISHER,
	[40619] = CONQUEROR,
	[40619] = CONQUEROR,
	[40620] = PROTECTOR,
	[40635] = PROTECTOR,
	[40621] = VANQUISHER,
	[40636] = VANQUISHER,
	[40613] = CONQUEROR,
	[40628] = CONQUEROR,
	[40614] = PROTECTOR,
	[40629] = PROTECTOR,
	[40615] = VANQUISHER,
	[40630] = VANQUISHER,
	-- TIER 8
	-- Normal
	[45635] = CONQUEROR,
	[45636] = PROTECTOR,
	[45637] = VANQUISHER,
	[45647] = CONQUEROR,
	[45648] = PROTECTOR,
	[45649] = VANQUISHER,
	[45644] = CONQUEROR,
	[45645] = PROTECTOR,
	[45646] = VANQUISHER,
	[45650] = CONQUEROR,
	[45651] = PROTECTOR,
	[45652] = VANQUISHER,
	[45659] = CONQUEROR,
	[45660] = PROTECTOR,
	[45661] = VANQUISHER,
	-- Heroic
	[45632] = CONQUEROR,
	[45633] = PROTECTOR,
	[45634] = VANQUISHER,
	[45638] = CONQUEROR,
	[45639] = PROTECTOR,
	[45640] = VANQUISHER,
	[45641] = CONQUEROR,
	[45642] = PROTECTOR,
	[45643] = VANQUISHER,
	[45653] = CONQUEROR,
	[45654] = PROTECTOR,
	[45655] = VANQUISHER,
	[45656] = CONQUEROR,
	[45657] = PROTECTOR,
	[45658] = VANQUISHER,
		
	-- TIER 9
	[47557] = CONQUEROR,
	[47558] = PROTECTOR,
	[47559] = VANQUISHER,
		
	-- TIER 10
	[52025] = VANQUISHER,
	[52028] = VANQUISHER,
		
		
	[52026] = PROTECTOR,
	[52029] = PROTECTOR,
		
	[52027] = CONQUEROR,
	[52030] = CONQUEROR,
}
