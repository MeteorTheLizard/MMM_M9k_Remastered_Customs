if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "m9kr_customs_gunbase_models"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "SR2"

SWEP.HoldType = "smg"
SWEP.Spawnable = true

SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/v_smg_sr2.mdl"
SWEP.WorldModel = "models/weapons/w_smg_sr2.mdl"

SWEP.tReloadDynamic = {
	{
		sSound = "weapons/sr2/Magout.wav",
		iDelay = 0.50
	},
	{
		sSound = "weapons/sr2/Magin.wav",
		iDelay = 0.50 + 0.80
	},
	{
		sSound = "weapons/sr2/BoltBack.wav",
		iDelay = 0.50 + 0.80 + 1.15
	},
	{
		sSound = "weapons/sr2/BoltForward.wav",
		iDelay = 0.50 + 0.80 + 1.15 + 0.35
	}
}

SWEP.tDrawSoundSequence = {
	{
		sSound = "weapons/sr2/Shoulder.wav",
		iDelay = 0.25
	}
}

SWEP.Primary.Sound = "weapons/sr2/Single.wav"
SWEP.Primary.SoundVolume = 65 -- Silenced!

SWEP.Primary.RPM = 900
SWEP.Primary.ClipSize = 32
SWEP.Primary.KickUp = 1
SWEP.Primary.KickDown = 1.2
SWEP.Primary.KickHorizontal = 1.2
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 1
SWEP.Primary.Damage = 18
SWEP.Primary.Spread = .04
SWEP.Primary.Ammo = "smg1"

SWEP.IronSightsPos = Vector(-2.141,-1.823,1.279)
SWEP.IronSightsAng = Vector(-0.322,0.07,0)

SWEP.ModelWorldForwardMult = -2
SWEP.ModelWorldRightMult = 0.5
SWEP.ModelWorldUpMult = 2

SWEP.LegacyBalance = {
	Primary = {
		RPM = 950,
		ClipSize = 30,
		KickUp = 0.3,
		KickDown = 0.35,
		KickHorizontal = 0.42,
		Automatic = true,
		NumShots = 1,
		Damage = 18,
		Spread = 0.020
	}
}