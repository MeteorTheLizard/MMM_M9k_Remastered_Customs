-- Variables that are used on both client and server
SWEP.Gun = ("m9k_ccom") -- must be the name of your swep but NO CAPITALS!
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "bobs_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Category				= "M9K Customs"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Colt Compact"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 3			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_pist_ccom.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_ccom.mdl"	-- Weapon world model
SWEP.ShowWorldModel = false
SWEP.Base				= "bobs_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= "weapons/compact/Fire1.wav"		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 700			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 7		-- Size of a clip
SWEP.Primary.DefaultClip		= 45		-- Bullets you start with
SWEP.Primary.KickUp				= 0.6		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.4		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.4		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 16	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector (1.84, 0, 1.759)
SWEP.IronSightsAng = Vector (0.347, -0.774, 0)
SWEP.SightsPos = Vector (1.84, 0, 1.759)
SWEP.SightsAng = Vector (0.347, -0.774, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-15.846, -9.381, 24.731)
-- SWEP.RunSightsPos = Vector (-0.7883, 0, 2.4235)
-- SWEP.RunSightsAng = Vector (-14.417, -0.7137, 0)

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/weapons/w_pist_ccom.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.352, 0.806, -0.32), angle = Angle(-180, -92.026, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


if GetConVar("M9KDefaultClip") == nil then
	print("M9KDefaultClip is missing! You may have hit the lua limit!")
else
	if GetConVar("M9KDefaultClip"):GetInt() != -1 then
		SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * GetConVar("M9KDefaultClip"):GetInt()
	end
end

if GetConVar("M9KUniqueSlots") != nil then
	if not (GetConVar("M9KUniqueSlots"):GetBool()) then 
		SWEP.SlotPos = 2
	end
end