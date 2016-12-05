sub EVENT_SAY {
  if($text=~/Hail/i){
    plugin::Whisper("Greetings $name.  Do you feel that you are ready to be tested in song?");
  }
  if(($text=~/tested in song/i) && ($class eq "Bard")){
    plugin::Whisper("The test of songs holds both joy and sorrow. Choose who you wish to begin with, Denise or Clarisa");
  }
  if(($text=~/Clarisa/i) && ($class eq "Bard")){
    plugin::Whisper("I shall summon them for you");
    quest::spawn2(71081,0,0,660.7,1388.9,-766.9,192.6);
    quest::depop();
    }
  if(($text=~/Denise/i) && ($class eq "Bard")){
    plugin::Whisper("I shall summon them for you");
    quest::spawn2(71082,0,0,660.7,1368.4,-766.9,192.6);
    quest::depop();
    }

}

#END of FILE Zone:airplane  ID:610 -- Cilin_Spellsinger 



