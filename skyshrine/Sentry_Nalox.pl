sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("I have no time to talk right now. I must keep watch for hostiles.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Sentry_Nalox