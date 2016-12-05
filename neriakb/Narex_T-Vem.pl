#Narex_T-Vem.pl
#Fire Goblin Runner/Halfling Raider Helms

sub EVENT_SAY {
  if($text=~/Hail/i) {
    plugin::Whisper("Welcome to the Cauldron of Hate. If you are a young warrior, you have come to the right place. There are many [duties] to be performed. If you are a veteran of the blade, we welcome your return to service. Perhaps you return with a [Leatherfoot] skullcap?");
  }
  if($text=~/duties/i) {
    plugin::Whisper("I am so glad you asked. There is one matter of importance with which you may be able to assist. It seems an Erudite has made camp in Lavastorm. He is powerful and we do not expect you to slay him. Your mission is to cut off his supply line. I hope you will [accept the mission].");
  }
  if($text=~/accept the mission/i) {
    plugin::Whisper("Go to the Lavastorm Mountain Range. It is a dangerous place, but the one you seek must leave by the direction you entered. He is a goblin. Apparently the Erudite is employing their strength. The fire goblin runner shall be an easy kill for you. At least, he should be. Return his runner pouch to me.");
  }
  if($text=~/leatherfoot/i) {
    if ($class eq "Warrior"){
      plugin::Whisper("Where have you been? The halflings of Rivervale have an elite force of warriors. They are called the Leatherfoot Raiders. They have been infiltrating our glorious city of Neriak for quite some time. They must be exterminated! I must hire strong warriors who wish to [collect the bounty].");
    }
    else {
      plugin::Whisper("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
    }
  }
  if($text=~/collect the bounty/i) {
    plugin::Whisper("So you wish to collect the bounty on Leatherfoot Raiders? Then go into Nektulos and hunt them down. I shall pay a reward for no fewer than four Leatherfoot Raider skullcaps.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 13886 => 1)) { #Goblin Supply Pouch
    plugin::Whisper("Fine work. I trust the denizens of Lavastorm were not unkind. Please take this featherweight pouch as a reward. May it keep you fleet of foot.");
    quest::summonitem(17972); #Featherweight Pouch
	quest::faction(155, 2); #Indigo Brotherhood
  	quest::faction(92,-5); #Emerald Warriors
  	quest::faction(311,-5); #Steel Warriors
  	quest::faction(260,-5); #Primordial Malice
  	quest::exp(17150);#5% of level 8 experience, quest is for levels 8+  
  }
  elsif(plugin::check_handin(\%itemcount, 13113 => 4)) { #Leatherfoot Raider Skullcap
  	plugin::Whisper("Yes, you have done well. Take this, and slay more!"); #text made up
  	quest::summonitem(12257);#Footman's Voulge
  	quest::givemoney(0,0,4,0);#4gp
	quest::faction(155, 2); #Indigo Brotherhood
  	quest::faction(92,-5); #Emerald Warriors
  	quest::faction(311,-5); #Steel Warriors
  	quest::faction(260,-5); #Primordial Malice
  	quest::exp(250);#5% of level 2 experience, quest is for levels 2+
  }
  else {
    plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:neriakb  ID:41032 -- Narex_T-Vem 