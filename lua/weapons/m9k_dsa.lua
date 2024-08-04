if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "SA-58"

SWEP.HoldType = "ar2"
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_rif_dsa.mdl"
SWEP.WorldModel = "models/weapons/w_rif_dsa.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/dsa/aug_clipout.wav",
		iDelay = 0.60
	},
	{
		sSound = "weapons/dsa/aug_clipin.wav",
		iDelay = 0.60 + 1.15
	},
	{
		sSound = "weapons/dsa/aug_cliptap.wav",
		iDelay = 0.60 + 1.15 + 0.05
	},
	{
		sSound = "weapons/dsa/aug_boltpull.wav",
		iDelay = 0.60 + 1.15 + 0.05 + 0.80
	}
}

SWEP.Primary.Sound = "weapons/dsa/aug-1.wav"

SWEP.Primary.RPM = 300
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.4
SWEP.Primary.KickDown = 1.8
SWEP.Primary.KickHorizontal = 1.4
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 44
SWEP.Primary.Spread = .035
SWEP.Primary.Ammo = "ar2"

SWEP.IronSightsPos = Vector(2.599,0,0.439)
SWEP.IronSightsAng = Vector(-0.974,0.07,0)

SWEP.ModelWorldForwardMult = -7.25
SWEP.ModelWorldUpMult = 1.5

SWEP.LegacyBalance = {
	Primary = {
		RPM = 750,
		ClipSize = 30,
		KickUp = 0.6,
		KickDown = 0.4,
		KickHorizontal = 0.4,
		Automatic = true,
		NumShots = 1,
		Damage = 35,
		Spread = 0.02
	}
}