# Fungus covered mushrooms hand in
# Pt. 2

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("I be Reiker Rikes! The fastest gnome in the woods!");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 31479 => 1)) {
    quest::emote("grins. 'These should go nicely in my stew.'");
    quest::exp(12500);
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

# EOF zone: dawnshroud ID: 174055 NPC: Reiker_Rikes

