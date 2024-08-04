if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "MAC-11"

SWEP.Spawnable = true

SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_smg_jac11.mdl"
SWEP.WorldModel = "models/weapons/w_smg_jac11.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/jac11/mac10_clipout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/jac11/mac10_clipin.wav",
		iDelay = 0.35 + 0.55 -- This sound is de-synced by default!
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/jac11/mac10_boltpull.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/jac11/mac10-1.wav"

SWEP.Primary.RPM = 800
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.4
SWEP.Primary.KickDown = 1.6
SWEP.Primary.KickHorizontal = 1.25
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 18
SWEP.Primary.Spread = .045
SWEP.Primary.Ammo = "smg1"

SWEP.IronSightsPos = Vector(-3.681,0,0.6)
SWEP.IronSightsAng = Vector(0.28,0.019,0)

SWEP.ModelWorldForwardMult = -4
SWEP.ModelWorldRightMult = 1
SWEP.ModelWorldUpMult = 1.5

SWEP.LegacyBalance = {
	Primary = {
		RPM = 1200,
		ClipSize = 32,
		KickUp = 0.425,
		KickDown = 0.35,
		KickHorizontal = 0.5,
		Automatic = true,
		NumShots = 1,
		Damage = 12,
		Spread = 0.023
	}
}