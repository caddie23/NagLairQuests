# Necromancer Epic NPC -- Drendico_Metalbones

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("The hills ears keep spinning the wonders of wells. Twisting twisting fly in water scar hot horses. Teach me! Bring floating water islands of doom!");
 }
}
sub EVENT_ITEM {
  if($itemcount {20648} == 1) {
    plugin::Whisper("'Seek, search, turn, twist! Kazen hopes to death master truly! Read out, read in between! Talk to the pretty clouds.' Drendico turns his back to you and throws a book over his shoulder. 'Bring back book! Bring back reagents three!!' He shouts as he mumbles some more gibberish.");
    quest::ding();
    quest::exp(1000);
    quest::summonitem(18086);
 }
  elsif($itemcount {1278} == 1 && $itemcount {20656} == 1 && $itemcount {20655} == 1 && $itemcount {18086} == 1) {
    quest::emote("turns to you in amazement. 'You actually did it! These are the correct components! Kazen will be most pleased. I searched the planes for almost a year and could not find all the correct components.' Drendico fiddles with the components, puts them into a box and hands it to you. 'You must have access to an army, $name. Return the components to Kazen quickly!");
    quest::summonitem(20653);
 }
  else {
    quest::emote("will not accept this item.");
    plugin::return_items(\%itemcount);
 }
}

#END of FILE  Quest by: Solid11  Zone:timorous  ID:96034 -- Drendico_Metalbones

