-- Variables that are used on both client and server
SWEP.Gun = ("m9k_ak91") -- must be the name of your swep but NO CAPITALS!
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
SWEP.PrintName				= "AEK-971"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 43			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 3			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 75
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_rif_ak91.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_ak91.mdl"	-- Weapon world model
SWEP.ShowWorldModel = false
SWEP.Base				= "bobs_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= "weapons/aek/shootaek.wav"		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 900			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 90		-- Bullets you start with
SWEP.Primary.KickUp				= 0.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.45		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 27	-- Base damage per bullet
SWEP.Primary.Spread		= .02	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector (-2.36, 1.018, 0.36)
SWEP.IronSightsAng = Vector (1.121, 0.727, 0)
SWEP.SightsPos = Vector (-2.36, 1.018, 0.36)
SWEP.SightsAng = Vector (1.121, 0.727, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-21.708, 17.958, -22.192)
-- SWEP.RunSightsPos = Vector (-0.7883, 0, 2.4235)
-- SWEP.RunSightsAng = Vector (-14.417, -0.7137, 0)

SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/weapons/w_rif_ak91.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.213, 0.481, 0.646), angle = Angle(-1.968, -0.713, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
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