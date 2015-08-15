-- Player
function pk:PlayerInitialSpawn()
	pl:SetVar('Props', {})
	pl:SetTeam(1)
end

function pk:PlayerSpawn()

end

function pk:PlayerDisconnected()

end

function pk:PlayerLoadout(pl)
	pl:Give('weapon_physgun')
	pl:SelectWeapon('weapon_physgun')
end


function pk:PlayerDeath(pl, weapon, killer)
	pl:RemoveProps()
end


-- Spawning
function pk:PlayerSpawnProp(pl, model)
	if (not pl:Alive()) then
		pl:Notify(NOTIFY_ERROR, 'You cannot spawn props while dead!')
		return false
	end


	return 
end


function pk:PlayerSpawnedProp(pl, model, ent)
	ent:SetNetVar('PropOwner', pl)
end

function pk:PlayerSpawnSENT(pl) return false end
function pk:PlayerSpawnSWEP(pl) return false end
function pk:PlayerGiveSWEP(pl,) return false end
function pk:PlayerSpawnVehicle(pl) return false end
function pk:PlayerSpawnNPC(pl) return false end
function pk:PlayerSpawnRagdoll(pl) return false end
function pk:PlayerSpawnEffect(pl) return false end
function pk:PlayerSpray(pl) return true end
function pk:CanDrive(pl, ent) return false end
function pk:CanProperty(pl, property, ent) return false end

function pk:InitPostEntity()
	for k, v in ipairs(ents.GetAll()) do
		if rp.cfg.Cleanup[v:GetClass()] then
			v:Remove()
		end
	end
end