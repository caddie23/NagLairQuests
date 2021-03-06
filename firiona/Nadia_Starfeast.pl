# Test of Charm - enchanter epic - start of quest
# 

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hello my dear. I am quite pleased to make your acquaintance. Perhaps even charmed!");
  }
  if ($text=~/i need a sack/i && plugin::check_hasitem($client,10604)) {
    plugin::Whisper("Take this sack and combine the items I requested in it. Then return it to me.");
    quest::summonitem(17861); #An Enchanters Sack
  }
  if ($text=~/gems/i) {
    plugin::Whisper("I have prepared some gems that you will need to trap the essence. You will need to force a diamond, sapphire, ruby and emerald onto special creatures to obtain their essence.");
  }
  if ($text=~/diamond/i) {
    plugin::Whisper("Here is the diamond that I have prepared for you. Its only purpose is to trap the essence of a particular book worm. If you should fail in your first attempt, do not worry. I will provide you with another.");
    quest::summonitem(10631); #Dull Diamond
  }
  if ($text=~/sapphire/i) {
    plugin::Whisper("Here is the sapphire that I have prepared for you. Take it and give it to the one referred to as the Golden Faerie.");
    quest::summonitem(10632); #Dull Sapphire
  }
  if ($text=~/ruby/i) {
    plugin::Whisper("Blood red is the ruby that I have given you. The city that you must travel to has no sun, but still a day and night. And at night, the mist could suffocate one. Tis the fate of poor Jaxion.");
    quest::summonitem(10633); #Dull Ruby
  }
  if ($text=~/emerald/i) {
    quest::emote("jumps.");
    plugin::Whisper("Eeekk... a scorpion. I thought they rid this area of these critters. Those things give me the creepers. Take this emerald and be on your way.");
    quest::summonitem(10634); #Dull Emerald
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 10604 => 1)) { #Jeb's Seal
    plugin::Whisper("Oh it must be time to reveal the staff! The piece I will help you craft is encrusted with magical gems. These gems contain the essence of various creatures. Alone they have very little power. Combined together they are much more powerful. They must be combined in a sack. Just ask if you don't have one.");
    quest::summonitem(10604); #Jeb's Seal
  }
  elsif (plugin::check_handin(\%itemcount, 10637 => 1)) { #A Sack For Nadia
    plugin::Whisper("Lovely! You are indeed quite the charmer. Here, take the third part, and seek out the last master. The time draws near.");
    quest::faction(342,30); #True Spirit
    quest::exp(10000);
    quest::summonitem(10612); #3rd Piece of Staff
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

# EOF Zone: firiona ID: 84116 NPC: Nadia_Starfeast

