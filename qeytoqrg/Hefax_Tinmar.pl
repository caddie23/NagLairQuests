sub EVENT_COMBAT {
	if($combat_state == 1){
	my $cur_target = $npc->GetHateTop();
		if($cur_target) {
		my $target_name = $cur_target->GetCleanName();
		plugin::Whisper("Time to die $target_name!");
		}
	}
}

 sub EVENT_SIGNAL {
	plugin::Whisper("Oh, great. I feel safe already.");
}
