sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Oh hello there! I'm sorta new here so I ask ye to be patient with me heheh. What kin I get fer ya, $name?");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:thurgadina  ID:Not_Found -- Karey