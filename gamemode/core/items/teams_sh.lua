pk.Teams = {}

function pk.AddTeam(name, tab)
	local t = #pk.Teams
	pk.Teams[t] = {
		Name = name
	}
	table.Merge(pk.Teams[t], tab)
	team.SetUp(t, name, tab.Color)
	return t
end