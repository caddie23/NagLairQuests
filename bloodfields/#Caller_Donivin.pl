sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("So patronizing you are. Shoo! I have no need of your help and likewise - you have no need of mine.");
  }
}