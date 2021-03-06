# Mining Operation
#

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hello, $name. I'm waiting to hear from my husband. He's been working on assignment for the Patriarch.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 4756 => 1)) {
    plugin::Whisper("Oh my sweet Daosorak, such a hard worker he is. It brings a smile upon my face to know that his mining operation is going well and that he will be home soon. I thank you for bringing me this letter from him.");
    quest::exp(2500);
    quest::faction(154,10); #house of stout
    quest::faction(338,10); #traders of the haven
  }
  plugin::return_items(\%itemcount);
}

# EOF zone: shadowhaven ID: 150091 NPC: Aliane_Steelknuckle

