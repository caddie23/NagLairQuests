sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("What brings to our outpost $name? Did you run into [Anario] by any chance?'");
}
if($text=~/yes, anario sent me/i){
plugin::Whisper("Anario was supposed to make a delivery some time ago. but he hasn't shown up yet.'");
}
if($text=~/who is anario/i){
plugin::Whisper("Anario was supposed to make a delivery some time ago. but he hasn't shown up yet.'"); }
}
#END of FILE Zone:dawnshroud  ID:174083 -- Ryann_Desgrey 

