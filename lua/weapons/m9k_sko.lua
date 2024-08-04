if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Skorpion"

SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_pist_skorpin.mdl"
SWEP.WorldModel = "models/weapons/w_pist_skorpin.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/sko/Magout.wav",
		iDelay = 0.15
	},
	{
		sSound = "weapons/sko/Magin.wav",
		iDelay = 0.15 + 0.55
	},
	{
		sSound = "weapons/sko/Cock.wav",
		iDelay = 0.15 + 0.55 + 0.75
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/sko/Cock.wav",
		iDelay = 0.25
	}
}

SWEP.Primary.Sound = "weapons/sko/glock18-1.wav"

SWEP.Primary.RPM = 900
SWEP.Primary.ClipSize = 28
SWEP.Primary.KickUp = 1.6
SWEP.Primary.KickDown = 1.4
SWEP.Primary.KickHorizontal = 2.1
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 26
SWEP.Primary.Spread = .045
SWEP.Primary.Ammo = "pistol"

SWEP.IronSightsPos = Vector(3.98,-1.861,1.96)
SWEP.IronSightsAng = Vector(-0.217,0.324,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 850,
		ClipSize = 20,
		KickUp = 0.4,
		KickDown = 0.3,
		KickHorizontal = 0.3,
		Automatic = true,
		NumShots = 1,
		Damage = 19,
		Spread = 0.025
	}
}