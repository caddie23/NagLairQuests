#Zone: Skyshrine
#Short Name: skyshrine
#Zone ID: 114
#
#NPC Name: Asteinnon Fe`Dhar
#NPC ID: 114263

sub EVENT_SAY {
  if ($faction == 1) { #req ally CoV
    if($text=~/hail/i) {
      quest::emote("speaks in a deep tone.");
      plugin::Whisper("Greetings. I wish to speak only to a shaman, so I might aid them with protection from the world in the form of armor.");
    }
    if ($text=~/armor/i) {
      plugin::Whisper("For you I shall make a coif, breastplate, sleeves, bracers, gauntlets, leggings, and boots. Each piece is a quest unto itself. To seek the components, you must search the lands for them and test the power of the spirit within.");
    }
    if ($text=~/coif/i) {
      plugin::Whisper("The coif I shall make will be comprised of an unadorned chain coif and three crushed onyx sapphires. I shall be waiting.");
    }
    if ($text=~/breastplate/i) {
      plugin::Whisper("A breastplate to protect the spirit within. I shall make one for you granted that you retrieve the components I shall need. An unadorned chain tunic and three pieces of black marble. I await your return.");
    }
    if ($text=~/sleeves/i) {
      plugin::Whisper("Sleeves I shall make upon receipt of unadorned chain sleeves and a set of three jaundice gems. Complete this simple task and they are yours.");
    }
    if ($text=~/bracer/i) {
      plugin::Whisper("A bracer of mystic power I shall grant you. All I require is the acquisition of an unadorned chain bracer and three crushed opals.");
    }
    if ($text=~/gauntlet/i) {
      plugin::Whisper("I shall require three crushed lava rubies and an unadorned pair of chain gauntlets to complete my ritual.");
    }
    if ($text=~/leggings/i) {
      plugin::Whisper("You seek leggings? Then provide for me unadorned chain leggings and three chipped onyx sapphires and I will give them to you for your service.");
    }
    if ($text=~/boots/i) {
      plugin::Whisper("These boots will help you in your never-ending quest. I shall grant them upon receipt of a pair of unadorned chain boots and three crushed flame emeralds.");
    }
  }
  else {
    plugin::Whisper("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  if ($faction == 1) { #req ally CoV 
    if (plugin::check_handin(\%itemcount, 25841 => 3, 24968 => 1)) { #cap
      quest::summonitem(31105);
    }
    elsif (plugin::check_handin(\%itemcount, 25805 => 3, 24963 => 1)) { #bp
      quest::summonitem(31106);
    }
    elsif (plugin::check_handin(\%itemcount, 25815 => 3, 24965 => 1)) { #arm
      quest::summonitem(31107);
    }
    elsif (plugin::check_handin(\%itemcount, 25836 => 3,24967  => 1)) { #bracer
      quest::summonitem(31108);
    }
    elsif (plugin::check_handin(\%itemcount, 25840 => 3, 24969 => 1)) { #glove
      quest::summonitem(31109);
    }
    elsif (plugin::check_handin(\%itemcount, 25827 => 3, 24964 => 1)) { #leg
      quest::summonitem(31110);
    }
    elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24966 => 1)) { #boots
      quest::summonitem(31111);
    }
    else {
      plugin::Whisper("I can do nothing with these items, $name.");
      plugin::return_items(\%itemcount);
      return 1;
    }
    quest::emote("smiles warmly as he hands you your reward.");
    plugin::Whisper("Well done, $name.");
    quest::exp(175000);
    quest::faction(42,30); # CoV
    quest::faction(362,30); # Yelinak
    quest::faction(189,-60); # Kromzek
  }
  else {
    plugin::Whisper("I do not know you well enough to entrust such an item to you, yet.");
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone: skyshrine ID:114263 -- Asteinnon_Fe`Dhar