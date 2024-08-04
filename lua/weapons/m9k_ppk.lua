if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Silenced PPK"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModelFOV = 70
SWEP.ViewModel = "models/weapons/v_pist_waltherpp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_waltherpp.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/waltherpp/SlideBack.wav",
		iDelay = 0.05
	},
	{
		sSound = "weapons/waltherpp/Clipout.wav",
		iDelay = 0.05 + 0.45
	},
	{
		sSound = "weapons/waltherpp/Clipin.wav",
		iDelay = 0.05 + 0.45 + 1.15
	},
	{
		sSound = "weapons/waltherpp/Sliderelease.wav",
		iDelay = 0.05 + 0.45 + 1.15 + 0.85
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/fiveseven/fiveseven_slidepull.wav",
		iDelay = 0.35 -- This is required for other people to still hear it.
	}
}

SWEP.Primary.Sound = "weapons/waltherpp/fiveseven-1.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 400
SWEP.Primary.ClipSize = 7
SWEP.Primary.KickUp = 1.1
SWEP.Primary.KickDown = 1.35
SWEP.Primary.KickHorizontal = 1.38
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 18
SWEP.Primary.Spread = .025
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(3.279,0,1.96)
SWEP.IronSightsAng = Vector(1.136,0.05,0)

SWEP.ModelWorldRightMult = 0.75

SWEP.bNoTracers = true

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 8,
		KickUp = 0.2,
		KickDown = 0.2,
		KickHorizontal = 0.3,
		Automatic = true,
		NumShots = 1,
		Damage = 17,
		Spread = 0.025
	}
}