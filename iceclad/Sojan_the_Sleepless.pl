sub EVENT_ITEM {
  # Handin: Coldain Toolset
  if(plugin::check_handin(\%itemcount, 25104 => 1)){
    # Toolset Delivery (kael)
    plugin::Whisper("Uhhh, thank you... Now I can uhh... work on fixing some things around...");
    quest::emote("seems to nod off for a moment as he drops a small note on the ground.");
    # Summon: Receipt
    quest::summonitem(20474);
  }
}


#EOF