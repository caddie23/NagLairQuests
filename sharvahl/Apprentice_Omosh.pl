sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hail $name. Do you need assistance with anything?");
  }
}

sub EVENT_SIGNAL {
  plugin::Whisper("Where would we go, sire? We have been here for some time and for most of that time, we have been at war. Is there something more that we have not discovered?");
}
#END of FILE Zone:sharvahl  ID:155217 -- Apprentice_Omosh