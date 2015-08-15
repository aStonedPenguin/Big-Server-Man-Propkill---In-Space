local PLAYER = FindMetaTable('Player')

util.AddNetworkString('pk.Notify')

function PLAYER:Notify(notify_type, msg, ...)
	local c = 1
	local txt = string.Explode('#', msg)

	for k, v in ipairs({...}) do
		local t = type(v)

		if (t == 'Player') then 
			if (not IsValid(v)) then return continue end
			table.insert(txt, k + c, v:Name())
			c = c + 1
		elseif (t == 'Entity') then
			if (not IsValid(v)) then return continue end
			table.insert(txt, k + c, (v.PrintName and v.PrintName or v:GetClass()))
			c = div + 1
		else
			table.insert(txt, k + c, v)
			c = div + 1
		end
	end
	
	net.Start('pk.Notify')
		net.WriteString(table.concat(txt, ''))
		net.WriteUInt(notify_type, 4)
	net.Send(self)
end

function PLAYER:RemoveProps()
	for k, v in ipairs(pl:GetVar('Props')) do
		if IsValid(v) then
			v:Remove()
		end
	end
end

function PLAYER:AddProp(ent)
	table.insert(pl:GetVar('Props'), ent)
end