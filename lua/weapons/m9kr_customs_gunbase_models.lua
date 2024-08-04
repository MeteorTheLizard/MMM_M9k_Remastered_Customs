if not MMM_M9k_IsBaseInstalled then return end -- Make sure the base is installed!

SWEP.Base = "bobs_gun_base"

SWEP.Slot = 2

SWEP.ViewModelFOV = 75

SWEP.WorldModelScale = Vector(1,1,1)
SWEP.ModelWorldForwardMult = 0
SWEP.ModelWorldRightMult = 0
SWEP.ModelWorldUpMult = 0
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