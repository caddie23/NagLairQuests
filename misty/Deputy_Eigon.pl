sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,16165=> 1)){
plugin::Whisper("Daleen sent you? She is so sweet. If she wasn't married.. ehem.. Thanks.");
quest::faction(133, 5);
quest::faction(208, 5);
quest::faction(316, 5);
quest::faction(218, 5);
quest::faction(88, -10);
quest::givecash(0,0,1,0);
quest::exp(500);
}
  }