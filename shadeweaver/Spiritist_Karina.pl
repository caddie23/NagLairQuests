sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Welcome, friend. Come dance by our warm fire or have a seat and [learn] a little bit about the ways of the spiritist.");
  }
  #Quest: Darkened Jawbones (Start)
  if ($text=~/learn/i) {
    plugin::Whisper("We are those in tune with the spirits that surround us. Ancestral spirits with knowledge of the ancients dance around us by this very fire. They guide is through the darkness. Protect us from pain. But a terrible [curse] has befallen the spirits of this thicket, and so it is my duty to train these young Dar Khura in order to aid in the battle that lies ahead.");
  }
  #Quest: Darkened Jawbones 
  if ($text=~/curse/i) {
    plugin::Whisper("The spirits are corrupted by foul magic. The souls of our ancestors have been twisted into an abomination known as [shades]. The corpses of long passed friends and relatives walk through the night seeking to destroy the living. We must destroy the corrupted remains of their old bodies and allow the spirits to roam free once more. Will you help us [release the souls] of our kindred spirits?");
  }
  #Quest: Darkened Jawbones 
  if ($text=~/shades/i) {
    plugin::Whisper("The shades are a deeper form of corruption of the spirit. I can sense great anguish in the spirits that have been twisted into such a creation. Their horror burns my heart so deeply that I cannot bear it. I would not normally ask another to place themselves in danger, but it is important that the souls are released from these shadowed prisons of torture and darkness. Please help us [release the souls] of our ancestral spirits.");
  }
  #Quest: Darkened Jawbones 
  if ($text=~/release the souls/i) {
    plugin::Whisper("I am relieved that you have accepted this dangerous task. I can feel the strength of the spirit within you. There are many kindred spirits aiding us in this battle. If you are in tune with the spiritual realm, you will find that your rituals of magic will result in aid from our spiritual allies. Return to me with the [darkened jawbones] of the lesser shades so that I may release the spirit once more.");
  }
  #Quest: Darkened Jawbones 
  if ($text=~/darkened jawbones/i) {
    plugin::Whisper("The jawbones will aid me in tuning to the essence of the corrupted spirits. When you return to me with them, you are enabling me to place the lost soul to rest. I am able to release four of these spirits at one time in much the same way I am training these four young trainees. It is best to bring me four of them at one time if you are able.");
    plugin::Whisper("Always pay attention to your surroundings. There are many opponents that will ambush you while you are out in the field. It is wise to take companions with you when venturing far.");
  }
  #Quest: Rotting Jawbones
  if($text=~/loda kai/i){
    plugin::Whisper("Loda Kai left Shar Vahl many years ago. He had set off for the distant city of Katta Castellum just north of the tenebrous mountains. We have not seen him since, but the brigands wear his family emblem. [Kedra Kai] has banished himself from our city in shame.");
  }
  #Quest: Rotting Jawbones 
  if($text=~/kendra kai/i){
    plugin::Whisper("He stands vigil at the 
crossroads of the trading routes. Kedra has sworn to destroy the brigands and his brother before returning to Shar Vahl. There are many skeletal brigands within the thicket. If you are able to acquire their rotting jawbones, please bring them to me. I will try to learn what I can from the magic within them.");
  }
}

sub EVENT_ITEM {
  #Handin: A Darkened Jawbone
  if (plugin::check_handin(\%itemcount, 30872 => 4)) {
    #Quest: Darkened Jawbones (End)
    plugin::Whisper("I can see that you have a brave heart. You have rescued many of the fallen spirits with little regard to your own welfare. Such selfless acts should not go unrewarded. Please take these gloves and wear them with pride. It is a symbol of [rebirth].");
    quest::faction(132,10); # +Guardians of Shar Vahl
    quest::exp(1000);
    quest::ding();
    #Rebirth Leather Gloves
    quest::summonitem(30879);
  }
  #Handin: A Sharp Toothed Jawbone
  elsif(plugin::check_handin(\%itemcount, 30873 => 4)){
    #Quest: Sharp Toothed Jawbones (End)
    plugin::Whisper("Thank you for bringing these to me $name.");
    quest::emote("Karina closes her eyes and meditates over the jawbones for a moment.");
    plugin::Whisper("I can sense the mark of the [Loda Kai] within these jawbones. This is a horror, for Loda Kai was once a member of my people. I do not know how he came about these strange magical forces but it can not be good news. Please wear these sleeves for protection. This new discovery worries me 
deeply.");
    #Rebirth Leather Sleeves
    quest::summonitem(30877);
    quest::faction(132,10); # +Guardians of Shar Vahl
    quest::exp(1000);
    quest::ding();
   }
    else {
    plugin::Whisper("I don't want these items, $name. You can have them back.");
    plugin::return_items(\%itemcount);
  }
}

# EOF zone: shadeweaver ID: 165130 NPC: Spiritist_Karina

