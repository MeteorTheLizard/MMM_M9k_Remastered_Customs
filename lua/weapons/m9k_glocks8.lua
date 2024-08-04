if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Silenced Glock-18"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_pist_glocks8.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glocks8.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/glock18ss/Foley.wav",
		iDelay = 0.05
	},
	{
		sSound = "weapons/glock18ss/Clipout.wav",
		iDelay = 0.05 + 0.35
	},
	{
		sSound = "weapons/glock18ss/Magdrop.wav",
		iDelay = 0.05 + 0.35 + 0.25
	},
	{
		sSound = "weapons/glock18ss/Clipin.wav",
		iDelay = 0.05 + 0.35 + 0.25 + 0.65
	},
	{
		sSound = "weapons/glock18ss/Sliderelease.wav",
		iDelay = 0.05 + 0.35 + 0.25 + 0.65 + 0.70
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/glock18ss/Cloth.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/p99/usp1.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 600
SWEP.Primary.ClipSize = 18
SWEP.Primary.KickUp = 1.4
SWEP.Primary.KickDown = 1.2
SWEP.Primary.KickHorizontal = 1
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 16
SWEP.Primary.Spread = .028
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(2,0,1.08)
SWEP.IronSightsAng = Vector(0.28,-0.038,0)

SWEP.bNoTracers = true

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 17,
		KickUp = 0.375,
		KickDown = 0.275,
		KickHorizontal = 0.275,
		Automatic = true,
		NumShots = 1,
		Damage = 15,
		Spread = 0.0175
	}
}