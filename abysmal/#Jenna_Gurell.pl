# The Fourteen Great Adventures
# Created by Gonner

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("focuses her attention on $name.");
    plugin::Whisper("Please do not disturb me. I am mourning the loss of my dear Rashere. While I do not know if his fate has yet been sealed the empty feeling in my heart tells me so. If only I could see him once more, if only I could read his words again.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 67618 => 1)) { # Rashere's Writings
    quest::emote("takes the dusty tome from $name's hands.");
    quest::emote("opens the book and begins to read from the last page aloud. As she reaches the final sentence her voice begins to crack and tears stream down her face. Wiping the tears from her face Jenna looks up at you and says 'Thank you but I really must be going. If you have done this wonderful thing for the others who have been suffering with me then return to De`van and tell him your task is complete and he will reward you.' Unable to continue she turns away from you motioning for you to leave.");
    quest::setglobal("writingsg", 1, 5, "F");
  }
  else {
    plugin::Whisper("I don't need this.");
    plugin::return_items(\%itemcount);
  }
}
# END of FILE Zone:abysmal  ID:279035 -- #Jenna_Gurell.pl