# Saurek Scales

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Well met, have you [come to aid] us in hunting the hoppers of the thicket?");
  }
  if ($text=~/come to aid/i) {
    plugin::Whisper("If you are preparing to hunt, then there are a few things you should know. Some of the hoppers have unique abilities. Knowledge of these abilities can mean the difference between life and death. I will tell you a little bit about them if you [wish to listen].");
  }
  if ($text=~/wish to listen/i) {
    plugin::Whisper("A wise choice, it is good to learn all that you can of the prey before initiating the hunt. Such a tactic is vital when you set out for larger game. Learn of your prey's strengths and weaknesses and you shall have the upper hand. Saureks may all seem similar to one another at first glance, but this is not the case. Such a mistake has left many Taruun dead. I have learned that the darkclaw saureks have venom dripping from their claws. There are a few other [unique qualities] to the saureks as well.");
  }
  if ($text=~/unique qualities/i) {
    plugin::Whisper("Each of the saureks have their own unique set of scales. I am able to tell which saurek my trainees have managed to hunt successfully by the scale they return to me. Feel free to join in our lesson or the hunt. I hope that you will benefit from my advice. Hunt well, $name.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 30861 => 4)) { #Saurek Hopper Scales
    plugin::Whisper("Excellent work, $name. Please take this as a reward."); #generic text
    quest::summonitem(30870); #Hunting Leather Boots
    quest::faction(132,10); #Guardians of Shar Vahl
    quest::exp(2500);
  }
  elsif (plugin::check_handin(\%itemcount, 30862 => 4)) { #Saurek Darkclaw Scales
    plugin::Whisper("Excellent work, $name. Please take this as a reward."); #generic text
    quest::summonitem(30867); #Hunting Leather Bracer
    quest::faction(132,10); #Guardians of Shar Vahl
    quest::exp(2500);
  }
  elsif (plugin::check_handin(\%itemcount, 30863 => 4)) { #Saurek Shredder Scales
    plugin::Whisper("Excellent work, $name. Please take this as a reward."); #generic text
    quest::summonitem(30866); #Hunting Leather Sleeves
    quest::faction(132,10); #Guardians of Shar Vahl
    quest::exp(2500);
  }
  else {
    #do all other handins first with plugin, then let it do disciplines
    plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
    plugin::return_items(\%itemcount);
  }
}
#EOF zone: shadeweaver ID: 165153 NPC: Captain_Tarief