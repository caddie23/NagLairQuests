sub EVENT_AGGRO {
        plugin::Whisper("For the defeat of my daughter, I shall make sure you know fear as none have ever experienced it before!");
}

sub EVENT_DEATH_COMPLETE {
        quest::signalwith(223158,13010,0);
        plugin::Whisper("Noooo. . . fear. . . shall never die. . .");
}

sub EVENT_SIGNAL {
  if ($signal == 66){
     quest::depop();
}
 }