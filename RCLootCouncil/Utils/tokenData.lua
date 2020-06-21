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
	[40631] = "HeadSlot", -- warrior, hunter, shammy 25
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
	[47557] = "ChestSlot", --Paladin, Priest, Warlock
	[47558] = "ChestSlot", --Warrior, Hunter, Shaman
	[47559] = "ChestSlot", -- Rogue, Death Knight, Mage, 
	
	[47557] = "ShoulderSlot", --Paladin, Priest, Warlock
	[47558] = "ShoulderSlot", --Warrior, Hunter, Shaman
	[47559] = "ShoulderSlot", -- Rogue, Death Knight, Mage, Druid
	
	[47557] = "HandsSlot", --Paladin, Priest, Warlock
	[47558] = "HandsSlot", --Warrior, Hunter, Shaman
	[47559] = "HandsSlot", -- Rogue, Death Knight, Mage, Druid
	
	
	[47557] = "LegsSlot", --Paladin, Priest, Warlock
	[47558] = "LegsSlot", --Warrior, Hunter, Shaman
	[47559] = "LegsSlot", -- Rogue, Death Knight, Mage, Druid
	
	
	[47557] = "HeadSlot", --Paladin, Priest, Warlock
	[47558] = "HeadSlot", --Warrior, Hunter, Shaman
	[47559] = "HeadSlot", -- Rogue, Death Knight, Mage, Druid
	
	
	-- TIER 10 - ICC
	[52025] = "HeadSlot", --  Rogue, Death Knight, Mage, Druid
	[52028] = "HeadSlot", --  Rogue, Death Knight, Mage, Druid HC
	[52025] = "HandsSlot", --  Rogue, Death Knight, Mage, Druid
	[52028] = "HandsSlot", --  Rogue, Death Knight, Mage, Druid HC
	[52025] = "LegsSlot", --  Rogue, Death Knight, Mage, Druid
	[52028] = "LegsSlot", --  Rogue, Death Knight, Mage, Druid HC
	[52025] = "ShoulderSlot", --  Rogue, Death Knight, Mage, Druid
	[52028] = "ShoulderSlot", --  Rogue, Death Knight, Mage, Druid HC
	[52025] = "ChestSlot", --  Rogue, Death Knight, Mage, Druid
	[52028] = "ChestSlot", --  Rogue, Death Knight, Mage, Druid HC
	
	
	[52026] = "HeadSlot", --  Warrior, Hunter, Shaman
	[52029] = "HeadSlot", --  Warrior, Hunter, Shaman HC
	[52026] = "HandsSlot", --  RWarrior, Hunter, Shaman
	[52029] = "HandsSlot", --  Warrior, Hunter, Shaman HC
	[52026] = "LegsSlot", --  Warrior, Hunter, Shaman
	[52029] = "LegsSlot", --  Warrior, Hunter, Shaman HC
	[52026] = "ShoulderSlot", --  Warrior, Hunter, Shaman
	[52029] = "ShoulderSlot", --  Warrior, Hunter, Shaman HC
	[52026] = "ChestSlot", --  Warrior, Hunter, Shaman
	[52029] = "ChestSlot", --  Warrior, Hunter, Shaman HC
	
	[52027] = "HeadSlot", --  Paladin, Priest, Warlock
	[52030] = "HeadSlot", --  Paladin, Priest, Warlock HC
	[52027] = "HandsSlot", --  Paladin, Priest, Warlock
	[52030] = "HandsSlot", --  Paladin, Priest, Warlock HC
	[52027] = "LegsSlot", --  Paladin, Priest, Warlock
	[52030] = "LegsSlot", --  Paladin, Priest, Warlock HC
	[52027] = "ShoulderSlot", -- Paladin, Priest, Warlock
	[52030] = "ShoulderSlot", -- Paladin, Priest, Warlock HC
	[52027] = "ChestSlot", --  Paladin, Priest, Warlock
	[52030] = "ChestSlot", --  Paladin, Priest, Warlock HC
	
}

local VANQUISHER = {"DEATHKNIGHT", "DRUID", "MAGE", "ROGUE"}
local CONQUEROR = {"PALADIN", "PRIEST", "WARLOCK"}
local PROTECTOR = {"HUNTER", "SHAMAN", "WARRIOR"}
-- Classes that can use the token
RCTokenClasses = {
	-- TIER 7
	[40616] = CONQUEROR
	[40631] = CONQUEROR
	[40617] = PROTECTOR
	[40631] = PROTECTOR
	[40618] = VANQUISHER
	[40633] = VANQUISHER
	[40610] = CONQUEROR
	[40625] = CONQUEROR
	[40611] = PROTECTOR
	[40626] = PROTECTOR
	[40612] = VANQUISHER
	[40627] = VANQUISHER
	[40622] = CONQUEROR
	[40637] = CONQUEROR
	[40623] = PROTECTOR
	[40638] = PROTECTOR
	[40624] = VANQUISHER
	[40639] = VANQUISHER
	[40619] = CONQUEROR
	[40619] = CONQUEROR
	[40620] = PROTECTOR
	[40635] = PROTECTOR
	[40621] = VANQUISHER
	[40636] = VANQUISHER
	[40613] = CONQUEROR
	[40628] = CONQUEROR
	[40614] = PROTECTOR
	[40629] = PROTECTOR
	[40615] = VANQUISHER
	[40630] = VANQUISHER
	-- TIER 8
	-- Normal
	[45635] = CONQUEROR
	[45636] = PROTECTOR
	[45637] = VANQUISHER
	[45647] = CONQUEROR
	[45648] = PROTECTOR
	[45649] = VANQUISHER
	[45644] = CONQUEROR
	[45645] = PROTECTOR
	[45646] = VANQUISHER
	[45650] = CONQUEROR
	[45651] = PROTECTOR
	[45652] = VANQUISHER
	[45659] = CONQUEROR
	[45660] = PROTECTOR
	[45661] = VANQUISHER
	-- Heroic
	[45632] = CONQUEROR
	[45633] = PROTECTOR
	[45634] = VANQUISHER
	[45638] = CONQUEROR
	[45639] = PROTECTOR
	[45640] = VANQUISHER
	[45641] = CONQUEROR
	[45642] = PROTECTOR
	[45643] = VANQUISHER
	[45653] = CONQUEROR
	[45654] = PROTECTOR
	[45655] = VANQUISHER
	[45656] = CONQUEROR
	[45657] = PROTECTOR
	[45658] = VANQUISHER
		
	-- TIER 9
	[47557] = CONQUEROR
	[47558] = PROTECTOR
	[47559] = VANQUISHER
		
	[47557] = CONQUEROR
	[47558] = PROTECTOR
	[47559] = VANQUISHER
		
	[47557] = CONQUEROR
	[47558] = PROTECTOR
	[47559] = VANQUISHER
		
		
	[47557] = CONQUEROR
	[47558] = PROTECTOR
	[47559] = VANQUISHER
		
		
	[47557] = CONQUEROR
	[47558] = PROTECTOR
	[47559] = VANQUISHER
		
	-- TIER 10
	[52025] = VANQUISHER
	[52028] = VANQUISHER
	[52025] = VANQUISHER
	[52028] = VANQUISHER
	[52025] = VANQUISHER
	[52028] = VANQUISHER
	[52025] = VANQUISHER
	[52028] = VANQUISHER
	[52025] = VANQUISHER
	[52028] = VANQUISHER
		
		
	[52026] = PROTECTOR
	[52029] = PROTECTOR
	[52026] = PROTECTOR
	[52029] = PROTECTOR
	[52026] = PROTECTOR
	[52029] = PROTECTOR
	[52026] = PROTECTOR
	[52029] = PROTECTOR
	[52026] = PROTECTOR
	[52029] = PROTECTOR
		
	[52027] = CONQUEROR
	[52030] = CONQUEROR
	[52027] = CONQUEROR
	[52030] = CONQUEROR
	[52027] = CONQUEROR
	[52030] = CONQUEROR
	[52027] = CONQUEROR
	[52030] = CONQUEROR
	[52027] = CONQUEROR
	[52030] = CONQUEROR
}
