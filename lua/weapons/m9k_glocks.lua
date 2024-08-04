if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Silenced Glock"

SWEP.Slot = 1
SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_pist_glockss.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glockss.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/silencedglock/glock18_magout.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/silencedglock/glock18_magin.wav",
		iDelay = 0.35 + 0.80
	},
	{
		sSound = "weapons/silencedglock/glock18_sliderelease.wav",
		iDelay = 0.35 + 0.80 + 0.50
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/silencedglock/glock18_slideback.wav",
		iDelay = 0.35
	},
	{
		sSound = "weapons/silencedglock/glock18_slideforward.wav",
		iDelay = 0.35 + 0.20
	}
}

SWEP.Primary.Sound = "weapons/p99/usp1.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 500
SWEP.Primary.ClipSize = 9
SWEP.Primary.KickUp = 1
SWEP.Primary.KickDown = 1
SWEP.Primary.KickHorizontal = 1
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 23
SWEP.Primary.Spread = .03
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(3.839,0,2.72)
SWEP.IronSightsAng = Vector(0,0.003,0)

SWEP.ModelWorldForwardMult = -0.5
SWEP.ModelWorldRightMult = 0.5

SWEP.LegacyBalance = {
	Primary = {
		RPM = 700,
		ClipSize = 15,
		KickUp = 0.6,
		KickDown = 0.3,
		KickHorizontal = 0.3,
		Automatic = true,
		NumShots = 1,
		Damage = 20,
		Spread = 0.025
	}
}