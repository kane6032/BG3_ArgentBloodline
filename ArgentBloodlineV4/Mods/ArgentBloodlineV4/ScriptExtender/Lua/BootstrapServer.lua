Debug = false

local function TransmuteDamage(e, damage_type)
	local originalDamageType = e.Hit.DamageType
	local originalDamageDone = e.Hit.TotalDamageDone

	if (Debug) then
		_P('-- originalDamageType')
		_D(originalDamageType)
		_P('-- originalDamageDone')
		_D(originalDamageDone)
	end

	e.Hit.DamageType = damage_type
	e.Hit.DeathType = damage_type

	if (e.Hit.Results.ConditionRoll.DamageTypeParams[1] ~= nil) then
		e.Hit.Results.ConditionRoll.DamageTypeParams[1] = damage_type
	end

	if (e.Hit.Results.DamageRolls) then
		local damageRollForOriginalType = e.Hit.Results.DamageRolls[originalDamageType]
		e.Hit.Results.DamageRolls[damage_type] = damageRollForOriginalType
	end
end

--- Converts damage type to to corresponding element if the Player has one of the METAMAGIC_TRANSMUTED_* status set
---@param e EsvLuaBeforeDealDamageEvent
local function HandleBeforeDealDamage(e)
	if (e.Hit ~= nil and e.Hit.Inflicter ~= nil and e.Hit.Results ~= nil) then
		local inflicterEntityUuid = e.Hit.Inflicter.Uuid.EntityUuid
		local isTransmutedToForce = HasActiveStatus(inflicterEntityUuid, "METAMAGIC_TRANSMUTED_FORCE") == 1

		if (Debug) then
			_P('-- isTransmutedToForce')
			_D(isTransmutedToForce)
		end
		
		if (Osi.IsPlayer(inflicterEntityUuid)) then
			if (isTransmutedToForce) then
				TransmuteDamage(e, "Force")
			end
		end
	end
end

Ext.Events.BeforeDealDamage:Subscribe(HandleBeforeDealDamage)