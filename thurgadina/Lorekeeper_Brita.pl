# enchanter thurgadin velium armor
#


sub EVENT_SAY {
  if ($faction <= 3) { # Require warmly and greater faction
    if ($text=~/hail/i) {
      plugin::Whisper("Greetings to you.  I seek those who call themselves enchanters.  Are you an enchanter?");
    }
    if ($text=~/i am an enchanter/i) {
      plugin::Whisper("I thought so.  I have several tasks for you accomplish.  Once you have completed them I will have a cap, a robe, sleeves, wristbands, gloves, leggings and boots to reward you with.");
    }
    if ($text=~/cap/i) {
      plugin::Whisper("For an enchanted head guard bring me a torn enchanted silk turban as well as three pieces of crushed flame opal.");
    }
    if ($text=~/robe/i) {
      plugin::Whisper("With three pristine emeralds and a torn enchanted silk robe I will fashion a wonderous robe for you.");
    }
    if ($text=~/sleeves/i) {
      plugin::Whisper("Bring unto me a set of torn enchanted silk sleeves as well as three flawed topaz.  With these in my possession I can create a set of enchanted sleeves the likes of which spellcasters like you dream of.");
    }
    if ($text=~/wristbands/i) {
      plugin::Whisper("An enchanted silk wristguard and three crushed onyx sapphires is all that I require to create an imbued wrist wrap of great power.  Seek out these items and return to me when you have acquired them.");
    }
    if ($text=~/leggings/i) {
      plugin::Whisper("Three nephrite and a pair of torn enchanted silk leggings will net you a fine set of pantaloons.");
    }
    if ($text=~/boots/i) {
      plugin::Whisper("Three crushed jaundice gems combined with torn enchanted silk boots would make a most interesting set of footwear.  The latent powers of the gems can be harnessed to create magical effects.");
    }
    if ($text=~/gloves/i) {
      plugin::Whisper("If you seek gloves of great power, bring to me three crushed topaz and a pair of torn enchanted silk gloves.  I will use the power of the gems to imbue the gloves.");
    }
  }
  else {
    plugin::Whisper("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 1427 => 1, 1417 => 1)) {
    plugin::Whisper("Ohh, that's better. I get so touchy when I'm hungry. I should probably go apologize to Derrin for being snappy. Please return this to Mordin for me.");
    quest::summonitem(1424);
    quest::exp(150000);
    quest::faction(49,20); # coldain
    quest::faction(67,20); # Dain Frostreaver IV
    quest::faction(188,-60); # Kromrif
    quest::faction(189,-60); # Kromzek
  }
  elsif (plugin::check_handin(\%itemcount, 1427 => 1)) {
    plugin::Whisper("Ohh, that's better. I get so touchy when I'm hungry. I should probably go apologize to Derrin for being snappy.");
    quest::exp(5000);
  }
  else {
    if ($faction <= 3) { # Require warmly and greater faction
      if (plugin::check_handin(\%itemcount, 25837 => 3, 24954 => 1)) { # cap
      quest::summonitem(31077);
      }
      elsif (plugin::check_handin(\%itemcount, 25807 => 3, 24949 => 1)) { # robe
        quest::summonitem(31078);
      }
      elsif (plugin::check_handin(\%itemcount, 25818 => 3, 24951 => 1)) { # sleeves
        quest::summonitem(31079);
      }
      elsif (plugin::check_handin(\%itemcount, 25841 => 3, 24953 => 1)) { # wrist
        quest::summonitem(31080);
      }
      elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24955 => 1)) { # gloves
        quest::summonitem(31081);
      }
      elsif (plugin::check_handin(\%itemcount, 25816 => 3, 24950 => 1)) { # legs
        quest::summonitem(31082);
      }
      elsif (plugin::check_handin(\%itemcount, 25829 => 3, 24952 => 1)) { # boots
        quest::summonitem(31083);
      }
      else {
        plugin::return_items(\%itemcount);
        plugin::Whisper("These are not the pieces I need.");
        return 1;
      }
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::Whisper("You have done well.");
    }
    else {
      plugin::Whisper("I do not know you well enough to entrust you with such an item, yet.");
    }
  }
}

#END of FILE Zone: thurgadina ID:115152 -- Lorekeeper_Brita

