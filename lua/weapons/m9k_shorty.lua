if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "bobs_shotty_base"
SWEP.Category = "M9kR: Customs"
SWEP.PrintName = "Super Shorty"

SWEP.Spawnable = true

SWEP.ViewModel = "models/weapons/v_shot_shsuper90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_shsuper90.mdl"

SWEP.ReloadSound = "weapons/short/m3_insertshell.wav"
SWEP.ReloadSoundFinish = "weapons/short/m3_pump.wav"

SWEP.DrawSound = "weapons/short/m3_pump.wav"
SWEP.DrawCantHear = true

SWEP.Primary.Sound = "weapons/short/m3-1.wav"

SWEP.Primary.RPM = 70
SWEP.Primary.ClipSize = 3
SWEP.Primary.KickUp = 2.4
SWEP.Primary.KickDown = 3
SWEP.Primary.KickHorizontal = 2
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 28
SWEP.Primary.Damage = 4
SWEP.Primary.Spread = .2
SWEP.Primary.Ammo = "buckshot"

SWEP.IronSightsPos = Vector(2.437,-1.491,1.072)
SWEP.IronSightsAng = Vector(0.479,0.279,0)

SWEP.LegacyBalance = {
	Primary = {
		RPM = 30,
		ClipSize = 3,
		KickUp = 6,
		KickDown = 6,
		KickHorizontal = 6,
		Automatic = false,
		NumShots = 8,
		Damage = 11,
		Spread = 0.04
	}
}


-- Fix world-model position

SWEP.WorldModelScale = Vector(1,1,1)
SWEP.ModelWorldForwardMult = 2.25
SWEP.ModelWorldRightMult = 1
SWEP.ModelWorldUpMult = 0.5
SWEP.ModelWorldAngForward = 0
SWEP.ModelWorldAngRight = 180
SWEP.ModelWorldAngUp = 180

function SWEP:CreateWorldModel()
	if IsValid(self.WorldEnt) then self.WorldEnt:Remove() end

	self.WorldEnt = ClientsideModel(self.WorldModelStr or self.WorldModel,RENDERGROUP_OPAQUE)
	self.WorldEnt:SetPos(self:GetPos())
	self.WorldEnt:SetAngles(self:GetAngles())
	self.WorldEnt:SetParent(self)
	self.WorldEnt:SetNoDraw(true)

	if self.WorldTexture then
		self.WorldEnt:SetMaterial(self.WorldTexture)
	end

	self.WorldMatrix = Matrix()
	self.WorldMatrix:Scale(self.WorldModelScale)
end

function SWEP:DrawWorldModel()

	if self.DoNotUseWorldModel or not IsValid(self.Owner) then -- Can be used to use the default worldmodel // Weapon is dropped
		self:DrawModel()

		return true
	end


	if not IsValid(self.WorldEnt) then
		self:CreateWorldModel()

		return -- Prevent error in the same tick
	end


	self.CachedWorldBone = self.CachedWorldBone or self.Owner:LookupBone("ValveBiped.Bip01_R_Hand") -- This is faster than looking it up every frame!
	if not self.CachedWorldBone then return end -- Thanks to wrefgtzweve on GitHub for finding this.


	local vPos, aAng = self.Owner:GetBonePosition(self.CachedWorldBone)

	self.WorldEnt:SetPos(vPos + aAng:Forward() * self.ModelWorldForwardMult + aAng:Right() * self.ModelWorldRightMult + aAng:Up() * self.ModelWorldUpMult)

	aAng:RotateAroundAxis(aAng:Forward(),self.ModelWorldAngForward)
	aAng:RotateAroundAxis(aAng:Right(),self.ModelWorldAngRight)
	aAng:RotateAroundAxis(aAng:Up(),self.ModelWorldAngUp)

	self.WorldEnt:SetAngles(aAng)
	self.WorldEnt:EnableMatrix("RenderMultiply",self.WorldMatrix)
	self.WorldEnt:DrawModel()
end


-- These are required for firstperson

sound.Add({
	name = "Weapon_sh.Insertshell",
	channel = CHAN_ITEM,
	volume = 1.0,
	sound = "weapons/short/m3_insertshell.wav"
})

sound.Add({
	name = "Weapon_sh.Pump",
	channel = CHAN_ITEM,
	volume = 1.0,
	sound = "weapons/short/m3_pump.wav"
})