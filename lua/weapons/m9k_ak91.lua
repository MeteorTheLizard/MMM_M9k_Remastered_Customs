if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "AEK-971"

SWEP.HoldType = "ar2"
SWEP.Spawnable = true

SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_rif_ak91.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak91.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/aek/ak47_clipout.wav",
		iDelay = 0.45
	},
	{
		sSound = "weapons/aek/ak47_clipin.wav",
		iDelay = 0.45 + 0.60
	},
	{
		sSound = "weapons/aek/ak47_boltpull.wav",
		iDelay = 0.45 + 0.60 + 0.80
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/aek/ak47_cloth.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/aek/shootaek.wav"

SWEP.Primary.RPM = 560
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.8
SWEP.Primary.KickDown = 1.2
SWEP.Primary.KickHorizontal = 1.4
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 36
SWEP.Primary.Spread = .028
SWEP.Primary.Ammo = "ar2"

SWEP.IronSightsPos = Vector(-2.36,1.018,0.36)
SWEP.IronSightsAng = Vector(1.121,0.727,0)

SWEP.ModelWorldForwardMult = 2
SWEP.ModelWorldRightMult = 1
SWEP.ModelWorldUpMult = 1

SWEP.LegacyBalance = {
	Primary = {
		RPM = 900,
		ClipSize = 30,
		KickUp = 0.5,
		KickDown = 0.3,
		KickHorizontal = 0.45,
		Automatic = true,
		NumShots = 1,
		Damage = 27,
		Spread = 0.02
	}
}