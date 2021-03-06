#Zone: Kael Drakkal
#Short Name: kael
#Zone ID: 113
#
#NPC Name: Veldern Blackhammer
#NPC ID: 113162

sub EVENT_SAY {
  if ($faction == 1) { #requires ally Kromzek faction
    if ($text=~/hail/i) {
      quest::emote("looks around.");
      quest::doanim(12);
      plugin::Whisper("Who dares address me? Oh, it is a $race. Only a shadowknight may address me and proceed further. Are you a shadowknight? Speak, oaf! Otherwise take your prattle elsewhere.");
    }
    if ($text=~/i am a shadowknight/i) {
      plugin::Whisper("What is it you want little one? Some armor perhaps? To make a pretty meal? I hate when bits of armor get stuck in my gullet. It is very annoying.");
    }
    if ($text=~/i want some armor/i) {
      quest::emote("laughs deeply at you.");
      quest::doanim(63);
      plugin::Whisper("You are so transparent, $name. Well, if armor is what you wish, then only the best shall you have for I will not waste my time on nothing less. This is what I will make for you, granted that you can acquire the components for me, a helm, breastplate, armplates, bracers, gauntlets, leggings, and boots.");
    }
    if ($text=~/helm/i) {
      plugin::Whisper("For the helm I shall require an ancient tarnished plate helmet and three pieces of crushed coral. Does your tiny mind comprehend the task set before you? If so, then get them immediately! I am beginning to get hungry and you are looking all the better as a snack.");
    }
    if ($text=~/breastplate/i) {
      plugin::Whisper("For the breastplate, I require this. An ancient tarnished breastplate and three flawless diamonds. Nothing more, nothing less. For perfection, there is a price, insignificant one.");
    }
    if ($text=~/armplate/i) {
      plugin::Whisper("For the armplates, I need these components, an ancient tarnished plate vambraces as well as three flawed emeralds. Now go and fetch them before I change my mind.");
    }
    if ($text=~/bracer/i) {
      plugin::Whisper("For the bracers, I will require an ancient tarnished plate bracer and three crushed flame emeralds. Now go away before I use your insides as decoration for my boot.");
    }
    if ($text=~/gauntlet/i) {
      plugin::Whisper("Your hands are quite important are they not? For without them, you cannot use your precious weapons or shields to protect yourself. You humor me with your feeble attempts. Fetch me an ancient tarnished plate gauntlets and three crushed pieces of topaz for your precious little hands.");
    }
    if ($text=~/greaves/i) {
      plugin::Whisper("Legs... they are my favorite part of any meal. I like to pull them off first and...Oh, yes, where was I? The leggings. Go and retrieve an ancient tarnished plate greave as well as three flawed sea sapphires. Now, leave my sight before I sample one of yours.");
    }
    if ($text=~/boots/i) {
      plugin::Whisper("You wish to have a pair of boots? Then acquire these items for me. A pair of ancient tarnished plate boots and three pieces of crushed black marble. I tire of your prattle. Go away now.");
    }
  }
  else {
    plugin::Whisper("You must prove your dedication to Kael Drakkal and the Kromzek clan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  if ($faction == 1) { #requires ally Kromzek faction
    if (plugin::check_handin(\%itemcount, 25831 => 3, 24905 => 1)) { # cap
      quest::summonitem(25349);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25814 => 3, 24900 => 1)) { # bp
      quest::summonitem(25350);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24902 => 1)) { # sleeves
      quest::summonitem(25351);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24904 => 1)) { # wrist
      quest::summonitem(25352);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24906 => 1)) { # gloves
      quest::summonitem(25353);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24901 => 1)) { # legs
      quest::summonitem(25354);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24903 => 1)) { # boots
      quest::summonitem(25355);
      quest::exp(150000);
      quest::faction(179,20); # King Tormax
      quest::faction(189,20); # Kromzek
      quest::faction(42,-20); # Claws of Veeshan
      quest::faction(49,-60); # Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    else {
      plugin::return_items(\%itemcount); 
      plugin::Whisper("These are not the pieces I need.");
    }
  }
  else {
    plugin::Whisper("I do not know you well enough to entrust you with such an item, yet.");
  }
}

#END of FILE Zone: kael ID:113162 -- Veldern_Blackhammer

