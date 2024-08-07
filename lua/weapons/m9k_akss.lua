if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Silenced AK"

SWEP.HoldType = "ar2"
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_rif_akss.mdl"
SWEP.WorldModel = "models/weapons/w_rif_akss.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/ak47/ak47_clipout.wav",
		iDelay = 0.60
	},
	{
		sSound = "weapons/ak47/ak47_clipin.wav",
		iDelay = 0.60 + 0.90 -- Delayed on purpose as the sound-script for this sound cannot be removed. This is required for other people to still hear it.
	},
	{
		sSound = "weapons/ak47ss/boltback.wav",
		iDelay = 0.60 + 0.90 + 0.55 -- Delayed on purpose as the sound-script for this sound cannot be removed. This is required for other people to still hear it.
	},
	{
		sSound = "weapons/ak47ss/boltforward.wav",
		iDelay = 0.60 + 0.90 + 0.55 + 0.15
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/ak47ss/boltback.wav",
		iDelay = 0.40
	},
	{
		sSound = "weapons/ak47ss/boltforward.wav",
		iDelay = 0.40 + 0.20
	}
}

SWEP.Primary.Sound = "weapons/silencedglock/glock18-1.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 480
SWEP.Primary.ClipSize = 30
SWEP.Primary.KickUp = 1.9
SWEP.Primary.KickDown = 1.6
SWEP.Primary.KickHorizontal = 1.6
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 32
SWEP.Primary.Spread = .035
SWEP.Primary.Ammo = "ar2"

SWEP.IronSightsPos = Vector(2.045,-1.507,-0.002)
SWEP.IronSightsAng = Vector(1.55,0,0)

SWEP.ModelWorldForwardMult = 2
SWEP.ModelWorldRightMult = 1

SWEP.LegacyBalance = {
	Primary = {
		RPM = 600,
		ClipSize = 30,
		KickUp = 0.28,
		KickDown = 0.2,
		KickHorizontal = 0.18,
		Automatic = true,
		NumShots = 1,
		Damage = 31,
		Spread = 0.014
	}
}