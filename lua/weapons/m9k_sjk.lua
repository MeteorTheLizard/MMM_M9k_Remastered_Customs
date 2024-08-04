if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Silenced MP5k"

SWEP.HoldType = "smg"
SWEP.Spawnable = true

SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_smg_jp5.mdl"
SWEP.WorldModel = "models/weapons/w_smg_jp5.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/jp5k/mp5_clipout.wav",
		iDelay = 0.30
	},
	{
		sSound = "weapons/jp5k/mp5_clipin.wav",
		iDelay = 0.30 + 1.45
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/jp5k/mp5_slideback.wav",
		iDelay = 0.05
	}
}

SWEP.Primary.Sound = "weapons/waltherpp/fiveseven-1.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 900
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.2
SWEP.Primary.KickDown = 1.45
SWEP.Primary.KickHorizontal = 1.05
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 24
SWEP.Primary.Spread = .035
SWEP.Primary.Ammo = "smg1"

SWEP.IronSightsPos = Vector(-4.281,0,1.159)
SWEP.IronSightsAng = Vector(2.055,0,0)

SWEP.bNoTracers = true

SWEP.ModelWorldForwardMult = -7
SWEP.ModelWorldRightMult = 1
SWEP.ModelWorldUpMult = 1.2

SWEP.LegacyBalance = {
	Primary = {
		RPM = 900,
		ClipSize = 30,
		KickUp = 0.375,
		KickDown = 0.275,
		KickHorizontal = 0.3,
		Automatic = true,
		NumShots = 1,
		Damage = 30,
		Spread = 0.0225
	}
}