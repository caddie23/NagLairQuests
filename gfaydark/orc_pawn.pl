#npc - Orc Death
#zone - Gfaydark
#by Angelox

sub EVENT_COMBAT{
    my $random_result = int(rand(100));
    if(($combat_state == 1) &&($random_result<=50)){
    plugin::Whisper("Death!!  Death to all who oppose the Crushbone orcs!!");
   }else{
   plugin::Whisper("You've ruined your lands. You'll not ruin mine!");
 }
}

sub EVENT_DEATH_COMPLETE {
my $a = $name;
my $random_result = int(rand(100));
 if (($a =~ /Fireblight/i)&&($random_result<=50)){
    quest::signal(54099,1);
    plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
}elsif(($a =~ /Rainstrider/i)&&($random_result<=50)){
    quest::signal(54098,1);
    plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
}elsif(($a =~ /Brookrock/i)&&($random_result<=50)){
    quest::signal(54124,1);
    plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
}elsif(($a =~ /Pineshade/i)&&($random_result<=50)){
    quest::signal(54118,1);
    plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
}elsif(($a =~ /Fayfear/i)&&($random_result<=50)){
    quest::signal(54096,1);
    plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
}else{
plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!!");
 }
}