if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Walther P99"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_pist_p99.mdl"
SWEP.WorldModel = "models/weapons/w_pist_p99.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/p99c/magout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/p99c/magpouch.wav",
		iDelay = 0.35 + 0.55
	},
	{
		sSound = "weapons/p99c/uspc_clipin.wav",
		iDelay = 0.35 + 0.55 + 0.45
	},
	{
		sSound = "weapons/p99c/sliderelease.wav",
		iDelay = 0.35 + 0.55 + 0.45 + 0.95
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/p99c/magpouch.wav",
		iDelay = 0.05
	},
	{
		sSound = "weapons/p99c/safety.wav",
		iDelay = 0.05 + 0.65
	}
}

SWEP.Primary.Sound = "weapons/p99/usp_unsil-1.wav"

SWEP.Primary.RPM = 400
SWEP.Primary.ClipSize = 9
SWEP.Primary.KickUp = 2.4
SWEP.Primary.KickDown = 1.6
SWEP.Primary.KickHorizontal = 1.4
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 31
SWEP.Primary.Spread = .041
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(1.98,0,1.36)
SWEP.IronSightsAng = Vector(0.419,0.136,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 17,
		KickUp = 0.2,
		KickDown = 0.2,
		KickHorizontal = 0.3,
		Automatic = false,
		NumShots = 1,
		Damage = 17,
		Spread = 0.025
	}
}