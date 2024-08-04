if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "HK 1911"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_pist_hk1911.mdl"
SWEP.WorldModel = "models/weapons/w_pist_hk1911.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/hk1911/de_clipout.wav",
		iDelay = 0.30
	},
	{
		sSound = "weapons/hk1911/de_clipin.wav",
		iDelay = 0.30 + 0.80
	},
	{
		sSound = "weapons/hk1911/de_sliderelease.wav",
		iDelay = 0.30 + 0.80 + 0.65
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/hk1911/de_hammertime.wav",
		iDelay = 0.30
	}
}

SWEP.Primary.Sound = "weapons/hk1911/deagle-1.wav"

SWEP.Primary.RPM = 450
SWEP.Primary.ClipSize = 8
SWEP.Primary.KickUp = 1.45
SWEP.Primary.KickDown = 1.15
SWEP.Primary.KickHorizontal = 0.75
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 33
SWEP.Primary.Spread = .03
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(-2.84,0,1.039)
SWEP.IronSightsAng = Vector(-0.424,0.096,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 10,
		KickUp = 0.42,
		KickDown = 0.32,
		KickHorizontal = 0.32,
		Automatic = true,
		NumShots = 1,
		Damage = 24,
		Spread = 0.02
	}
}