local event_counter = 0;

function event_signal(e)
	-- signal 1 comes from my army
	if (e.signal == 1) then
		event_counter = event_counter + 1;
		--eq.zone_emote(15,"Real Bertoxxulous death count now "..event_counter.." of 11.");
		if (event_counter >= 11) then
			-- spawn real Bertoxxulous
			eq.spawn2(223142,0,0,-299,-297,23.3,31);
			-- make myself go away!
			eq.depop();
		end
	end
end