# Meat for Allabar
# created by gonner

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Oh, I am sorry. I do not mean to be rude. It is just that I miss the mainland. Being so far away from home is making me homesick. I hate to ask this, but think you could [help] me with something?");
  }
  if ($text=~/help/i) {
    plugin::Whisper("When I used to adventure, I acquired quite a habit of eating storm giant steaks. I dearly miss them. Think you could return four storm giant meats to me? I will happily give you some sort of reward if you can do so.");
  }
}
sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 22801 => 4)) { # storm giant meat
    plugin::Whisper("Thank you very much. This will make me feel much better.");
    quest::givecash(0,3,5,5); #Platinum x 5, Gold x 5, Silver x 3
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}
#END of FILE zone:abysmal ID:279259 -- Allabar_Yuti.pl