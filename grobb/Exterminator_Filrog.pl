sub EVENT_SAY {
 if($text=~/hail/i){ 
  plugin::Whisper("Hey you dere! Look at all these spiders! Dey called me to come kill em, but there is too many!!! If you bring me four eyes from da little spiders, I reward you!");
 }
}

sub EVENT_ITEM {
 if(plugin::check_handin(\%itemcount, 13253 => 4)){
  plugin::Whisper("You good at killing spiders. Mebbe me should find anuder job. Here take da coins.");
  quest::faction(131,10);  
  quest::exp(5);
  quest::givecash(1,1,1,0);
 }
}