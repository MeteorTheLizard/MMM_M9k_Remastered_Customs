if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Five Seven"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_prst_fiveseven.mdl"
SWEP.WorldModel = "models/weapons/w_prst_fiveseven.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/fivesevenj/fiveseven_clipout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/fivesevenj/fiveseven_clipin.wav",
		iDelay = 0.35 + 0.65
	},
	{
		sSound = "weapons/fivesevenj/fiveseven_sliderelease.wav",
		iDelay = 0.35 + 0.65 + 0.75
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/fivesevenj/fiveseven_slidepull.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/fivesevenj/fiveseven-1.wav"

SWEP.Primary.RPM = 380
SWEP.Primary.ClipSize = 18
SWEP.Primary.KickUp = 2.1
SWEP.Primary.KickDown = 1.8
SWEP.Primary.KickHorizontal = 1.3
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 24
SWEP.Primary.Spread = .026
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(2.759,0,0.759)
SWEP.IronSightsAng = Vector(1.338,-0.071,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 20,
		KickUp = 0.4,
		KickDown = 0.3,
		KickHorizontal = 0.3,
		Automatic = true,
		NumShots = 1,
		Damage = 22,
		Spread = 0.025
	}
}