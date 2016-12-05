## Changes by Kagehi.
## $Shar_Vahl_Cit tracks the steps you take to gain your initiate cloak.
## Since we don't want to hand people things that they can't normally get, or
## stuff they haven't earned, we need to track which stage in the quest they
## are at. 1 = Citizen Application. 2 = Cert. of Taxability, 3 = Stamped Cert.,
## 4 = Note to King Raja, 5 Note 'from' the king, 6 = Notarized Application
## and 7 = Initiate's Cloak.

sub EVENT_SAY
{
  if($text=~/Hail/i)
  {
    plugin::Whisper("Well met. Friend.  May I be of assistance?");
  }
##Non-canon, for fixmes if you lose certain items (which are needed for this quest line and others).
##No idea if Live does this now or not. If these do exist there, feel free to adjust it.
if(($text=~/application/i) && ($qglobals{Shar_Vahl_Cit} == 1)){
  plugin::Whisper("Luckily for you someone found it.");
  quest::summonitem(2873);}
if(($text=~/cloak/i) && ($qglobals{Shar_Vahl_Cit} == 7)){
  plugin::Whisper("Someone found this in a scorpian nest down in the pit. Try not to lose it this time.");
  quest::summonitem(2878);}
}

sub EVENT_ITEM
{
  # A Taruun Guild Summons
  if(plugin::check_handin(\%itemcount, 18554 => 1))
  {
    ## We don't care at this point who gives you the application, cloak, etc.
    ## Only later, when we get into class specific quests will the person you
    ## come to, in order to recover lost items, matter.
    ## Using "all npc, this player, and all zones", since some later stuff in
    ## the class quest lines, linked to the cloak, are in other zones, should we
    ## use this to track cloak progress as well.
    quest::setglobal("Shar_Vahl_Cit",1,5,"F");
    # Application for Citizenship
    quest::summonitem("2873");
  }

  # Notorized Application
  if(plugin::check_handin(\%itemcount, 2897 => 1)){
    plugin::Whisper("Allow me to be the first to welcome you. Accept this cloak, young initiate. It is a symbol of your loyalty to our noble people. May it serve you as you serve us all. Present your acrylia slate to Harbin Gernawl and he will give you instruction. May the spirits of the beasts guide you and keep you safe.'");
    quest::summonitem("2878");
    quest::setglobal("Shar_Vahl_Cit",7,5,"F");
}

  #do all other handins first with the plugin, the let it do disiplines
  plugin::try_tome_handins(\%itemcount, $class, "Rogue");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:sharvahl  ID:155253 -- Elder_Scout_Kyth_Lar