# Dracula
# Under lvl 60 boss

sub EVENT_SPAWN {
	quest::shout("I sense...mortals");
	quest::pathto(-782,-1319,-43);
}

sub EVENT_DEATH_COMPLETE {
	plugin::Whisper("Haha! Silly mortals! You cannot kill me! I'm immor...");
}