sub EVENT_DEATH_COMPLETE {
    quest::signalwith(223190,14028,0);
}

sub EVENT_SIGNAL {
  if ($signal == 66) {
    quest::depop();
}
 }
