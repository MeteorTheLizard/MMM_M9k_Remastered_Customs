if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Micro UZI"

SWEP.Spawnable = true

SWEP.ViewModelFOV = 85
SWEP.ViewModel = "models/weapons/v_smg_uzi10.mdl"
SWEP.WorldModel = "models/weapons/w_smg_uzi10.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/muzi/m11_magout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/muzi/m11_magin.wav",
		iDelay = 0.35 + 0.95
	},
	{
		sSound = "weapons/muzi/m11_pullback.wav",
		iDelay = 0.35 + 0.95 + 0.75
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/muzi/m11_pullback.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/muzi/m11_fire.wav"

SWEP.Primary.RPM = 900
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.2
SWEP.Primary.KickDown = 1
SWEP.Primary.KickHorizontal = 1.6
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 18
SWEP.Primary.Spread = .038
SWEP.Primary.Ammo = "smg1"

SWEP.IronSightsPos = Vector(1.652,-1.027,1.259)
SWEP.IronSightsAng = Vector(0.256,-0.071,0)

SWEP.ModelWorldForwardMult = -1.2
SWEP.ModelWorldRightMult = 1
SWEP.ModelWorldUpMult = -0.5

SWEP.LegacyBalance = {
	Primary = {
		RPM = 1200,
		ClipSize = 20,
		KickUp = 0.4,
		KickDown = 0.3,
		KickHorizontal = 0.5,
		Automatic = true,
		NumShots = 1,
		Damage = 15,
		Spread = 0.025
	}
}