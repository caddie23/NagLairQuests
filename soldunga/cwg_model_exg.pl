
sub EVENT_DEATH_COMPLETE
{
	my $random_result = int(rand(100));
	my $a=31141; 
	if($random_result<6)
	{
		plugin::Whisper("Spawning Fabled");
		quest::shout2 ("$name has spawned the Fabled ".$npc->GetCleanName()."");
		quest::spawn2($a, 0, 0, $x,$y,$z,$h);
	}
	else
	{
		plugin::Whisper("No spawn");
	}
}





