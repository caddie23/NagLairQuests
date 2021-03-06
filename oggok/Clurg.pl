sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hello, friend. Have a drink. I have some [unique drinks]. Try one. And remember. You get rowdy, the [Bouncers] crush you.");
  }
  if($text=~/bouncers/i) {
    plugin::Whisper("The Bouncers were organized by me. As I traveled to many of the world's taverns I encountered great enforcers called bouncers. It was their duty to keep order amongst chaos. When I returned and rose to greatness after the creation of the [Flaming Clurg]. I organized the Oggok Bouncers to keep order amongst the [rival guilds].");
  }
  if($text=~/flaming clurg/i) {
    plugin::Whisper("The Flaming Clurg was my greatest creation. It brought me great respect in Oggok. Unfortunately, I have heard tales of an [imposter drink].");
  }
  if($text=~/imposter drink/i) {
    plugin::Whisper("Bah! Dat damned Pungla! She be imitatin me drinks! I want som'on to [deal] with dat damned witch! If som'on wud jus bring me her head, I wud pay em!");
    plugin::Whisper("Find ways to help all in Oggok. Then we will have conversation.");
  }
  if($text=~/rival guilds/i) {
    plugin::Whisper("Oggok has been the battleground for the feud between the Greenblood knights and shamans and the Craknek warriors. It is fueled by the superior intellect of the Greenbloods. Few remember that I, Clurg, was once dim, but now I speak with great words.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 13740 => 1)) {
    plugin::Whisper("Ahahaha! Dat witch sur did get wat was commin ta her!");
    quest::givecash(0,0,1,5);
  }
  elsif(plugin::check_handin(\%itemcount, 13379 => 1)) {
    quest::summonitem(13380);
    quest::faction(46,10);
    quest::faction(39,-30);
    quest::faction(169,-30);
  }
  elsif (plugin::check_handin(\%itemcount, 13378 => 1)) {
   plugin::Whisper("Ahahaha! Dat witch sur did get wat was commin ta her!");
   quest::givecash(0,0,1,5);
  }
  else {
    plugin::Whisper("Me not need dis.");
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone:oggok  ID:49046 -- Clurg