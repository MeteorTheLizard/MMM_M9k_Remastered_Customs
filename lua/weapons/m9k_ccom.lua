if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Colt Compact"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_pist_ccom.mdl"
SWEP.WorldModel = "models/weapons/w_pist_ccom.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/compact/magout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/compact/magpouch.wav",
		iDelay = 0.35 + 0.65
	},
	{
		sSound = "weapons/compact/p228_clipin.wav",
		iDelay = 0.35 + 0.65 + 0.50
	},
	{
		sSound = "weapons/compact/sliderelease.wav",
		iDelay = 0.35 + 0.65 + 0.50 + 0.85
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/compact/magpouch.wav",
		iDelay = 0.00
	},
	{
		sSound = "weapons/compact/safety.wav",
		iDelay = 0.00 + 0.75
	},
}

SWEP.Primary.Sound = "weapons/compact/Fire1.wav"

SWEP.Primary.RPM = 350
SWEP.Primary.ClipSize = 7
SWEP.Primary.KickUp = 1.6
SWEP.Primary.KickDown = 1.3
SWEP.Primary.KickHorizontal = 1.4
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 19
SWEP.Primary.Spread = .018
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(1.82,0,1.759)
SWEP.IronSightsAng = Vector(0.347,-0.774,0)

SWEP.ModelWorldAngUp = 90

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 7,
		KickUp = 0.6,
		KickDown = 0.4,
		KickHorizontal = 0.4,
		Automatic = false,
		NumShots = 1,
		Damage = 16,
		Spread = 0.025
	}
}