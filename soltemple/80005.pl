sub EVENT_SAY {
  if ($text=~/solusek ro/i) {
    plugin::Whisper("Solusek Ro is the Master of Fire and the Keeper of Power.");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}

#End of File, Zone:soltemple  NPC:80005 -- a_seeker (generic)