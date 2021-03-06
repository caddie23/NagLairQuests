#npc - Brother Estle
#class - all
#zone - West Karana
#reward - Spell: Inspire Fear

sub EVENT_SAY
{
 if($text=~/Hail, $mname/i)
  {
   plugin::Whisper("Greetings, child of life. The way of the [Prime Healer] shall set you free and cleanse your soul. I hope to see you at [mass].");
  }
 if($text=~/what prime healer/i)
  {
   plugin::Whisper("Rodcet Nife is the Prime Healer. His way is the path of healing and life. There can be no true life until your soul is healed by healing others. This will take you into the eternal when your time comes.");
  }
 if($text=~/what mass/i)
  {
   plugin::Whisper("Mass is not being held out here as yet. I am waiting for the [blessed oil] from the Temple of Life. You may attend services there.");
  }
 if($text=~/what blessed oil/i)
  {
   plugin::Whisper("The blessed oil is necessary during services. It is blessed by High Priestess Jahnda at the [Temple of Life]. If you are going in that direction, please stop at the temple and remind High Priestess Jahnda that brother Estle is waiting for his blessed oil.");
  }
 if($text=~/what temple of life/i)
  {
   plugin::Whisper("The Temple of Life is the center of worship for the followers of Rodcet Nife. It is located in North Qeynos and is one of the greatest temples ever created. Be sure to visit and attend services.");
  }
}

sub EVENT_ITEM
{
 if($itemcount{13910} == 1)
  {
   plugin::Whisper("Thank you. Now I may cleanse the bodies of the new converts and help them enter into a new life. I also have this. It was given to me by a dying gnoll of all things. They belong to Brother Hayle. The gnoll's last words were 'Free him.' Make sure High Priestess Jahnda gets this. Be swift!");
   quest::summonitem(13911);
   quest::faction(257, 10);
   quest::faction(183, 10);
   quest::faction(135, 10);
   quest::faction(21, -10);
   quest::faction(9, 10);
   quest::exp(50);
   quest::givecash(0,1,0,0);
  }
}