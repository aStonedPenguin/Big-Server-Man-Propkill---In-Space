local PLAYER = FindMetaTable('Player')

function PLAYER:GetTeamTable()
	return pk.Teams[self:Team()]
end

function PLAYER:GetTeamName()
	return self:GetTeamTable().Name
end

function PLAYER:GetTeamColor()
	return self:GetTeamTable().Color
end