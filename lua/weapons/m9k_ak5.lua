if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "AK-5C"

SWEP.HoldType = "ar2"
SWEP.Spawnable = true

SWEP.ViewModelFOV = 82
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_rif_aklil.mdl"
SWEP.WorldModel = "models/weapons/w_rif_aklil.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/ak5/galil_clipout.wav",
		iDelay = 0.45
	},
	{
		sSound = "weapons/ak5/galil_clipin.wav",
		iDelay = 0.45 + 0.85
	},
	{
		sSound = "weapons/ak5/galil_boltpull.wav",
		iDelay = 0.45 + 0.85 + 0.85
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/ak5/galil_cloth.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/ak5/galil-1.wav"

SWEP.Primary.RPM = 350
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 2
SWEP.Primary.KickDown = 1.8
SWEP.Primary.KickHorizontal = 1.2
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 42
SWEP.Primary.Spread = .035
SWEP.Primary.Ammo = "ar2"

SWEP.IronSightsPos = Vector(-2.421,-1.181,0.597)
SWEP.IronSightsAng = Vector(0.158,0.041,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 30,
		KickUp = 0.4,
		KickDown = 0.3,
		KickHorizontal = 0.4,
		Automatic = true,
		NumShots = 1,
		Damage = 30,
		Spread = 0.022
	}
}